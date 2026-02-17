.class Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRemoveComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;

.field final synthetic val$info:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1$1;->val$info:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveComplete(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->-$$Nest$fgetmlstBackups(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1$1;->val$info:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 238
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    const v1, 0x7f1203ca

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->CONFIRM:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    const v1, 0x7f1203c8

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    :cond_1
    return-void
.end method
