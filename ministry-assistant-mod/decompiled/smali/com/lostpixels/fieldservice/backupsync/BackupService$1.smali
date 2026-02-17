.class Lcom/lostpixels/fieldservice/backupsync/BackupService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/BackupService;->startWork()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/backupsync/BackupService;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1;->this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1;->this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    const-string v1, "ScheduleBackup"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1;->this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->ministryFileExists(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1;->this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceFileExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1;->this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/backupsync/BackupService;->-$$Nest$mdoBackup(Lcom/lostpixels/fieldservice/backupsync/BackupService;Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1;->this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :try_start_1
    new-instance v2, Lcom/lostpixels/fieldservice/backupsync/BackupService$1$1;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/backupsync/BackupService$1$1;-><init>(Lcom/lostpixels/fieldservice/backupsync/BackupService$1;)V

    invoke-virtual {v1, v2}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 102
    iget-object v1, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1;->this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/backupsync/BackupService$1$2;

    invoke-direct {v2, p0, v0}, Lcom/lostpixels/fieldservice/backupsync/BackupService$1$2;-><init>(Lcom/lostpixels/fieldservice/backupsync/BackupService$1;Landroid/content/Context;)V

    const-string v0, "BackupService"

    invoke-static {v1, v2, v0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->loadInternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 100
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 101
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    :goto_1
    const-string v1, "ScheduleReciever (stopping service)"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1;->this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/backupsync/BackupService;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1;->this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/backupsync/BackupService;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
