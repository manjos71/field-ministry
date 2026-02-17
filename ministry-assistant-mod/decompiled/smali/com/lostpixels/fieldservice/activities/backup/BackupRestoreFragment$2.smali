.class Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 110
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$2;->val$prefs:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    const-string v1, "RestoreLocations"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p2, :cond_2

    or-int/lit8 p1, p1, 0x2

    .line 113
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/lostpixels/fieldservice/utils/NetworkUtils;->testInternetConnectionNoMessage(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 114
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 115
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    const v2, 0x7f1200c1

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p2, v0, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p2

    invoke-virtual {p2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    goto :goto_0

    .line 117
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p2, v0, :cond_1

    .line 118
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher;->initDriveProcessAccountWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher;->initDriveProcessWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)V

    goto :goto_0

    :cond_2
    and-int/lit8 p1, p1, -0x3

    .line 124
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->fillRestoreList()V

    return-void
.end method
