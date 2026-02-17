.class Lcom/lostpixels/fieldservice/backupsync/BackupService$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/BackupService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/backupsync/BackupService$1;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/backupsync/BackupService$1;Landroid/content/Context;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1$2;->this$1:Lcom/lostpixels/fieldservice/backupsync/BackupService$1;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 108
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1

    .line 110
    :try_start_0
    new-instance v0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1$2$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/backupsync/BackupService$1$2$1;-><init>(Lcom/lostpixels/fieldservice/backupsync/BackupService$1$2;)V

    invoke-virtual {p1, v0}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 118
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->deleteServiceFile(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->deleteMinistryFile(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    .line 123
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1$2;->this$1:Lcom/lostpixels/fieldservice/backupsync/BackupService$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/BackupService$1;->this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;

    invoke-virtual {p1}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/backupsync/BackupService;->-$$Nest$mdoBackup(Lcom/lostpixels/fieldservice/backupsync/BackupService;Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v0

    .line 121
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    .line 122
    throw v0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1$2;->this$1:Lcom/lostpixels/fieldservice/backupsync/BackupService$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/BackupService$1;->this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/BackupService;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
