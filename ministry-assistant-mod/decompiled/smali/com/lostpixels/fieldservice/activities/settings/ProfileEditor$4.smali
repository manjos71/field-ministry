.class Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->showProfilePicker(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

.field final synthetic val$path:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Ljava/io/File;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$4;->val$path:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 764
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditorPermissionsDispatcher;->takePictureWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x2

    if-ne p2, p1, :cond_1

    .line 766
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.PICK"

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 769
    const-string p2, "image/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    const v1, 0x7f12049c

    .line 771
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 770
    invoke-virtual {p2, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    if-ne p2, v0, :cond_2

    .line 774
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$4;->val$path:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 775
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetimageProfile(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f080387

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 776
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getInstance()Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->updateProfileImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 779
    :catch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    const p2, 0x7f1200bb

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method
