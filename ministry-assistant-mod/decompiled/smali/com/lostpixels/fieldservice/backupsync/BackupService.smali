.class public Lcom/lostpixels/fieldservice/backupsync/BackupService;
.super Landroidx/work/ListenableWorker;
.source "SourceFile"


# instance fields
.field mFuture:Landroidx/work/impl/utils/futures/SettableFuture;


# direct methods
.method static bridge synthetic -$$Nest$mdoBackup(Lcom/lostpixels/fieldservice/backupsync/BackupService;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/BackupService;->doBackup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, v0}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private doBackup(Landroid/content/Context;)V
    .locals 6

    .line 152
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    const-string v1, "ScheduleFiles"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 154
    const-string v2, "BackupLocations"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 156
    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/NetworkUtils;->testInternetConnectionNoMessage(Landroid/content/Context;)Z

    move-result v2

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 160
    new-instance v3, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;

    invoke-direct {v3}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;-><init>()V

    .line 161
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/lostpixels/fieldservice/backupsync/BackupService$2;

    invoke-direct {v5, p0, v0, v2}, Lcom/lostpixels/fieldservice/backupsync/BackupService$2;-><init>(Lcom/lostpixels/fieldservice/backupsync/BackupService;IZ)V

    invoke-virtual {v3, v4, v1, v5}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;->makeBackup(Landroid/content/Context;ILcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 181
    new-instance v0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    new-instance v2, Lcom/lostpixels/fieldservice/backupsync/BackupService$3;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/backupsync/BackupService$3;-><init>(Lcom/lostpixels/fieldservice/backupsync/BackupService;Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;-><init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;)V

    .line 218
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Lcom/lostpixels/fieldservice/backupsync/BackupService$4;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/backupsync/BackupService$4;-><init>(Lcom/lostpixels/fieldservice/backupsync/BackupService;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->makeBackup(Landroid/content/Context;ILcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 68
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    const-string v1, "BackupService"

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    const-string v1, "CurrentService"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->create()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 75
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/backupsync/BackupService$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/backupsync/BackupService$1;-><init>(Lcom/lostpixels/fieldservice/backupsync/BackupService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 145
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    return-object v0
.end method
