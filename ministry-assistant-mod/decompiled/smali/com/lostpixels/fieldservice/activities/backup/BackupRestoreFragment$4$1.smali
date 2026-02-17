.class Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;I)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;

    iput p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 225
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->-$$Nest$fgetmlstBackups(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;

    iget p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;->val$pos:I

    .line 226
    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;->getObject(I)Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;

    move-result-object p1

    .line 228
    iget p2, p1, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->type:I

    if-nez p2, :cond_0

    .line 229
    new-instance p2, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;

    invoke-direct {p2}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;-><init>()V

    goto :goto_0

    .line 231
    :cond_0
    new-instance p2, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-direct {p2, v0}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;-><init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;)V

    .line 233
    :goto_0
    iget-object v0, p1, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->deleteID:Ljava/lang/String;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1$1;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1$1;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;)V

    invoke-interface {p2, v0, v1, v2}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory;->removeBackup(Ljava/lang/String;Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRemoveComplete;)V

    return-void
.end method
