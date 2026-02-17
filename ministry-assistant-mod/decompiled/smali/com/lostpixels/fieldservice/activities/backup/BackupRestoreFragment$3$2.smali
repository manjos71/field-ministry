.class Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

.field final synthetic val$parent:Landroid/widget/AdapterView;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;Landroid/widget/AdapterView;I)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->val$parent:Landroid/widget/AdapterView;

    iput p3, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 143
    :try_start_0
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->val$parent:Landroid/widget/AdapterView;

    invoke-virtual {p2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;

    iget v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->val$pos:I

    .line 144
    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;->getItem(I)Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;

    move-result-object p2

    .line 147
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p2, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->type:I

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 149
    :cond_0
    iget v0, p2, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 150
    new-instance v0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;-><init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 153
    invoke-static {}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->clearAll()V

    .line 155
    iget-object p2, p2, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->restoreID:Ljava/lang/String;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2$1;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2$1;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;)V

    invoke-interface {v0, p2, v1, v2}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory;->restoreBackup(Ljava/lang/String;Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 187
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    const v2, 0x7f1204b2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 190
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Load backup"

    invoke-static {v0, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_3
    :goto_2
    :try_start_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
