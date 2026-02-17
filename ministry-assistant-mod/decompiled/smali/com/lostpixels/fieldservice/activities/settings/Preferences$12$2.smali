.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$12$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 511
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getAllBackupFiles(ZLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x1

    .line 515
    :goto_0
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 516
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getBackupFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "File not deleted!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 522
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const v1, 0x7f1203e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 523
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 525
    :catch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const v1, 0x7f1200c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 526
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
