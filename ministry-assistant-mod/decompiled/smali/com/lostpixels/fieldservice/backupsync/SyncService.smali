.class public Lcom/lostpixels/fieldservice/backupsync/SyncService;
.super Landroidx/work/Worker;
.source "SourceFile"


# instance fields
.field result:Landroidx/work/ListenableWorker$Result;


# direct methods
.method static bridge synthetic -$$Nest$mdelaySync(Lcom/lostpixels/fieldservice/backupsync/SyncService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/backupsync/SyncService;->delaySync()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0, v0}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private delaySync()V
    .locals 7

    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x1e

    .line 158
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 161
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/backupsync/SyncDelayReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4000000

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 164
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private doSync(Landroid/content/Context;)V
    .locals 6

    .line 80
    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/NetworkUtils;->testInternetConnectionNoMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 85
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 86
    const-string v3, "checkOnlySyncWifi"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 88
    const-string v4, "accountName"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_1

    .line 90
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/SyncService;->result:Landroidx/work/ListenableWorker$Result;

    return-void

    .line 91
    :cond_1
    :goto_0
    new-instance v0, Lcom/lostpixels/fieldservice/backupsync/SyncService$1;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/backupsync/SyncService$1;-><init>(Lcom/lostpixels/fieldservice/backupsync/SyncService;Landroid/content/Context;)V

    new-instance v3, Lcom/lostpixels/fieldservice/backupsync/SyncService$2;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/backupsync/SyncService$2;-><init>(Lcom/lostpixels/fieldservice/backupsync/SyncService;)V

    invoke-static {p1, v2, v0, v3, v1}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->startSyncingNoThread(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;Z)V

    return-void

    .line 152
    :cond_2
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/SyncService;->result:Landroidx/work/ListenableWorker$Result;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 5

    .line 61
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/SyncService;->result:Landroidx/work/ListenableWorker$Result;

    .line 64
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/lostpixels/fieldservice/MinistryAssistant;->lastTimeUsed()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/backupsync/SyncService;->delaySync()V

    .line 66
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/backupsync/SyncService;->doSync(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 71
    :goto_0
    const-string v1, "Sync service"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/SyncService;->result:Landroidx/work/ListenableWorker$Result;

    .line 74
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/SyncService;->result:Landroidx/work/ListenableWorker$Result;

    return-object v0
.end method
