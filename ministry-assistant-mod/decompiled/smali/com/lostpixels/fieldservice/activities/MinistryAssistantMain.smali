.class public Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;
.super Lcom/lostpixels/fieldservice/activities/base/TimerActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lostpixels/fieldservice/ui/nowcards/UpdateCardsInterface;


# static fields
.field private static autoBackupTime:Ljava/util/Date; = null

.field private static lastTestTime:Ljava/util/Date; = null

.field private static mLastTimeSyncChecked:Ljava/util/Date; = null

.field public static mbChangedThatShouldRestart:Z = false

.field public static mbChangedThatShouldUpdateSync:Z = false

.field private static mbDeleteOldFiles:Z = true

.field public static mbDoAutobackup:Z = true

.field private static mbIsSyncing:Z = false

.field private static miLastMinistryScheduleSyncDate:I = -0x1

.field public static sVersionNumber:Ljava/lang/String;


# instance fields
.field private credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

.field private emptyView:Landroid/view/View;

.field listener:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

.field private mCardView:Lcom/fima/cardsui/views/CardUI;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchView:Landroidx/appcompat/widget/SearchView;

.field private mSyncMenuItem:Landroid/view/MenuItem;

.field private mTxtLastSyncTime:Landroid/widget/TextView;

.field private mbFirstTimeEver:Z

.field private serviceTimerLayout:Landroid/view/View;

.field private txtServiceTimerTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$WEcPV8mBJOSH-0ktk0ysX2Va25Q(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Landroid/content/SharedPreferences;Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 651
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "PermissionSDCardShown"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 652
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->askForWritePermissionsWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dGr-ydoNayMLZYR7lTgOIqParW4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 648
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcredential(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchView(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mSearchView:Landroidx/appcompat/widget/SearchView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetserviceTimerLayout(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->serviceTimerLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcredential(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoALotOfTestingAndFixing(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->doALotOfTestingAndFixing(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitDriveProcess(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->initDriveProcess()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveAllFiles(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->saveAllFiles()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLastSyncTime(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->setLastSyncTime()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCards(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->showCards()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateServiceTimerTitle(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->updateServiceTimerTitle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmbIsSyncing(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbIsSyncing:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c00de

    .line 199
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;-><init>(I)V

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbFirstTimeEver:Z

    .line 170
    new-instance v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$1;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->listener:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Z
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->allowedToSetLDCTimer()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 139
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsRBCTimer:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Lio/realm/Realm;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Lio/realm/Realm;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Lio/realm/Realm;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;
    .locals 1

    .line 139
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;
    .locals 1

    .line 139
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    return-object v0
.end method

.method static synthetic access$1500()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;
    .locals 1

    .line 139
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;
    .locals 1

    .line 139
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;
    .locals 1

    .line 139
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    return-object v0
.end method

.method static synthetic access$1800()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;
    .locals 1

    .line 139
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    return-object v0
.end method

.method static synthetic access$1900()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;
    .locals 1

    .line 139
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->setTimer()V

    return-void
.end method

.method static synthetic access$2000()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;
    .locals 1

    .line 139
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    return-object v0
.end method

.method static synthetic access$2100()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;
    .locals 1

    .line 139
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;
    .locals 1

    .line 139
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    return-object v0
.end method

.method static synthetic access$2300()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;
    .locals 1

    .line 139
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Z
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->allowedToSetLDCTimer()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 139
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsRBCTimer:Z

    return v0
.end method

.method static synthetic access$500(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Z)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->changeTimerType(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->addToReport()V

    return-void
.end method

.method static synthetic access$700(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Lio/realm/Realm;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$800(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Lio/realm/Realm;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$900(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Lio/realm/Realm;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method private askForAutoSync()V
    .locals 4

    .line 1604
    const-string v0, "syncdlgprefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    .line 1605
    const-string v3, "DisplayAutosyncDlg"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1607
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1608
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120285

    .line 1612
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f120350

    .line 1616
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 1617
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12055b

    .line 1618
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$23;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$23;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12045b

    .line 1625
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$22;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$22;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1632
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1633
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method private doALotOfTestingAndFixing(ZZ)V
    .locals 13

    .line 713
    const-string v0, "Using_planner"

    const-string v1, "Using_returnVisits"

    const-string v2, "Using_territories"

    const-string v3, "Using_report"

    sget-object v4, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->lastTestTime:Ljava/util/Date;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-object v6, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->lastTestTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 715
    :cond_1
    :goto_0
    :try_start_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    sput-object v4, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->lastTestTime:Ljava/util/Date;

    .line 716
    const-string v4, "test 1"

    invoke-static {v4}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 718
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->testScheduleBackup()V

    .line 719
    const-string v4, "test 2"

    invoke-static {v4}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 721
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->testSyncDevices()V

    .line 722
    const-string v4, "test 3"

    invoke-static {v4}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 724
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->syncMinistrySchedule()V

    .line 725
    const-string v4, "test 4"

    invoke-static {v4}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 729
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->testProfileThisYear()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 732
    :cond_2
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->testCouldBePioneerThisYear()Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 735
    :cond_3
    :goto_1
    const-string p1, "test 5"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 736
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->testInvalidAddresses()V

    .line 738
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->testInvalidPersonIds()V

    .line 739
    const-string p1, "test 6"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupBackupSchedule(Landroid/content/Context;)V

    .line 742
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupVisitsForTodayNotification(Landroid/content/Context;Z)V

    .line 743
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupServiceNotification(Landroid/content/Context;Z)V

    .line 744
    const-string p1, "test 7"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 746
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lcom/lostpixels/fieldservice/MinistryAssistant;->hasPermissionToTrack(Landroid/app/Application;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 749
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p1, v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isYearEmpty()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "select_content"

    const-string v5, "statistics"

    const-string v6, "content_type"

    const-string v7, "item_name"

    const-string v8, "item_id"

    if-nez p2, :cond_4

    .line 750
    :try_start_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 751
    invoke-virtual {p2, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-virtual {p2, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-virtual {p2, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->getTracker()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    invoke-virtual {v3, v4, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto/16 :goto_3

    .line 756
    :cond_4
    :goto_2
    const-string p2, "test 7.1"

    invoke-static {p2}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 757
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, p2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/RealmQuery;->count()J

    move-result-wide v9

    const-wide/16 v11, 0x1

    cmp-long p2, v9, v11

    if-lez p2, :cond_5

    .line 758
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 759
    invoke-virtual {p2, v8, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-virtual {p2, v7, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {p2, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->getTracker()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 764
    :cond_5
    const-string p2, "test 7.2"

    invoke-static {p2}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 765
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, p2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/RealmQuery;->count()J

    move-result-wide v2

    cmp-long p2, v2, v11

    if-lez p2, :cond_6

    .line 766
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 767
    invoke-virtual {p2, v8, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {p2, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {p2, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->getTracker()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    invoke-virtual {v1, v4, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 772
    :cond_6
    const-string p2, "test 7.3"

    invoke-static {p2}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 773
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-virtual {p1, p2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p2

    const-string v1, "year"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 774
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 775
    invoke-virtual {p2, v8, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-virtual {p2, v7, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-virtual {p2, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->getTracker()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {v0, v4, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 780
    :cond_7
    const-string p2, "test 7.4"

    invoke-static {p2}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 783
    :cond_8
    :try_start_3
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    goto :goto_5

    :goto_3
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    .line 784
    throw p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 786
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :goto_5
    const-string p1, "test 8"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    return-void
.end method

.method private doSyncDevice()V
    .locals 6

    const/4 v0, 0x1

    .line 1638
    sput-boolean v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbIsSyncing:Z

    const/4 v0, 0x0

    .line 1639
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mClickable:Z

    .line 1640
    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->setClickable(Z)V

    .line 1641
    new-instance v1, Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-direct {v1, p0}, Lnet/steamcrafted/loadtoast/LoadToast;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x42700000    # 60.0f

    .line 1642
    invoke-static {p0, v2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->pxFromDp(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lnet/steamcrafted/loadtoast/LoadToast;->setTranslationY(I)Lnet/steamcrafted/loadtoast/LoadToast;

    .line 1643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f120561

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/steamcrafted/loadtoast/LoadToast;->setText(Ljava/lang/String;)Lnet/steamcrafted/loadtoast/LoadToast;

    .line 1644
    invoke-static {p0}, Lcom/sbgapps/simplenumberpicker/utils/ThemeUtil;->getThemePrimaryColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/steamcrafted/loadtoast/LoadToast;->setBorderColor(I)Lnet/steamcrafted/loadtoast/LoadToast;

    const/4 v2, 0x3

    .line 1645
    invoke-virtual {v1, v2}, Lnet/steamcrafted/loadtoast/LoadToast;->setBorderWidthDp(I)Lnet/steamcrafted/loadtoast/LoadToast;

    .line 1646
    invoke-virtual {v1}, Lnet/steamcrafted/loadtoast/LoadToast;->show()Lnet/steamcrafted/loadtoast/LoadToast;

    .line 1647
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1648
    const-string v3, "accountName"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1649
    invoke-static {}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->isSynching()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1650
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    if-eqz v0, :cond_0

    const v1, 0x7f1200b5

    .line 1651
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->INFO:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    :cond_0
    return-void

    .line 1653
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$24;

    invoke-direct {v4, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$24;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    new-instance v5, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    invoke-direct {v5, p0, v1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Lnet/steamcrafted/loadtoast/LoadToast;)V

    invoke-static {v3, v2, v4, v5, v0}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->startSyncing(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;Z)V

    return-void
.end method

.method public static findChildrenByClass(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->gatherChildrenByClass(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static gatherChildrenByClass(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3

    const/4 v0, 0x0

    .line 210
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 211
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 216
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1, p2}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->gatherChildrenByClass(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/Collection;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method private initDriveProcess()V
    .locals 4

    const v0, 0x7f1200c1

    .line 1582
    :try_start_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/NetworkUtils;->testInternetConnectionNoMessage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1583
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v1

    invoke-virtual {v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    .line 1587
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1588
    const-string v2, "accountName"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1590
    const-string v1, "https://www.googleapis.com/auth/drive.file"

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 1591
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->newChooseAccountIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 1593
    :cond_1
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->doSyncDevice()V

    const/4 v1, 0x0

    .line 1594
    invoke-static {p0, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupSyncDevices(Landroid/content/Context;Z)V

    .line 1595
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->askForAutoSync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1598
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initDriveProcess"

    invoke-static {v2, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void
.end method

.method private initNotifications()V
    .locals 2

    .line 1128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->askForNotificationPermissionsWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    return-void

    .line 1131
    :cond_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/NotificationUtils;->createChannels(Landroid/content/Context;)V

    return-void
.end method

.method private openChangelogDialog(Lcom/lostpixels/fieldservice/dialogs/ChangeLogDialogFragment;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1167
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1168
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 1169
    const-string v2, "changelog_dialog"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1174
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private saveAllFiles()V
    .locals 0

    .line 1449
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    return-void
.end method

.method private scheduleDriveBackup()V
    .locals 2

    .line 1436
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$16;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$16;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1440
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1442
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetEnableBackup()V

    .line 1443
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetCards()V

    .line 1445
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->showCards()V

    return-void
.end method

.method private setLastSyncTime()V
    .locals 10

    .line 959
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 960
    const-string v1, "syncMode"

    const-string v2, "manual"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "disabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_3

    .line 962
    const-string v1, "SyncTime"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    cmp-long v8, v0, v5

    if-nez v8, :cond_0

    .line 964
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mTxtLastSyncTime:Landroid/widget/TextView;

    const v6, 0x7f1200d1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-lez v8, :cond_1

    .line 966
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 968
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 969
    invoke-static {p0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    const-string v8, " - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mTxtLastSyncTime:Landroid/widget/TextView;

    const v8, 0x7f12042a

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mTxtLastSyncTime:Landroid/widget/TextView;

    cmp-long v6, v0, v3

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 977
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mTxtLastSyncTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showCards()V
    .locals 4

    .line 1090
    const-string v0, "showCard 1"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 1091
    const-string v0, "MyPrefsSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v2, -0x6001

    .line 1095
    const-string v3, "prefCardsToDisplay"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1096
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    invoke-static {v2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->setTheme(Z)V

    .line 1097
    const-string v2, "showCard 2"

    invoke-static {v2}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 1098
    invoke-static {p0, v0, p0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->generateCardList(Landroid/content/Context;ILcom/lostpixels/fieldservice/ui/nowcards/UpdateCardsInterface;)Ljava/util/List;

    move-result-object v0

    .line 1100
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1101
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbFirstTimeEver:Z

    if-eqz v2, :cond_0

    .line 1102
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->generateExampleCards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1104
    :cond_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->emptyView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1106
    :cond_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->emptyView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mCardView:Lcom/fima/cardsui/views/CardUI;

    invoke-virtual {v1}, Lcom/fima/cardsui/views/CardUI;->clearCards()V

    .line 1108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;

    .line 1109
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mCardView:Lcom/fima/cardsui/views/CardUI;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;->stack:Lcom/fima/cardsui/objects/CardStack;

    invoke-virtual {v2, v1}, Lcom/fima/cardsui/views/CardUI;->addStack(Lcom/fima/cardsui/objects/CardStack;)V

    goto :goto_1

    .line 1111
    :cond_2
    const-string v0, "showCard 3"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mCardView:Lcom/fima/cardsui/views/CardUI;

    invoke-virtual {v0}, Lcom/fima/cardsui/views/CardUI;->refresh()V

    .line 1115
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbIsSyncing:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->setClickable(Z)V

    .line 1116
    const-string v0, "showCard 4"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    return-void
.end method

.method private syncMinistrySchedule()V
    .locals 3

    .line 948
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 949
    const-string v1, "syncReport"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 951
    sget v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->miLastMinistryScheduleSyncDate:I

    if-eq v1, v0, :cond_0

    .line 952
    sput v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->miLastMinistryScheduleSyncDate:I

    const/4 v0, 0x0

    .line 953
    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync;->syncMinistrySchedule(Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$SyncMinistryScheduleListener;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private testCouldBePioneerThisYear()Z
    .locals 9

    .line 841
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 842
    const-string v1, "LastServiceYearPioneerCheck"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 843
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x2

    .line 846
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0xb

    if-ne v6, v8, :cond_0

    if-ne v3, v8, :cond_2

    .line 847
    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_1

    if-ne v3, v8, :cond_2

    :cond_1
    if-ne v3, v2, :cond_6

    .line 848
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 851
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    .line 852
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPublisher()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_5

    .line 855
    invoke-virtual {v4, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 856
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v1

    const/16 v3, 0x3c

    if-lt v1, v3, :cond_4

    const/16 v3, 0x6e

    if-le v1, v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v7

    .line 865
    :cond_5
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1204dd

    .line 866
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f120435

    .line 867
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 868
    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$10;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$10;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    const v2, 0x7f12055b

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 880
    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$11;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$11;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    const v2, 0x7f12045b

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 887
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return v3

    :cond_6
    return v7
.end method

.method private testInvalidAddresses()V
    .locals 3

    .line 793
    const-string v0, "testInvalidAddresses"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 794
    const-string v2, "DidRun"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 796
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 798
    new-instance v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$8;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$8;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method private testInvalidPersonIds()V
    .locals 3

    .line 816
    const-string v0, "testInvalidPersonIds"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 817
    const-string v2, "DidRun"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 819
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 820
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->refresh()V

    .line 823
    :cond_1
    new-instance v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$9;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$9;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method private testProfileThisYear()Z
    .locals 8

    .line 896
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 897
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    const-string v4, "LastServiceYearProfileCheck"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 898
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 901
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v1

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v3

    const/4 v5, 0x0

    if-ge v1, v3, :cond_5

    .line 902
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 905
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v3, 0x1

    .line 906
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 907
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    .line 908
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v1, v4, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    .line 909
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v2

    const/16 v4, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x5

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPublisher()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 911
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 912
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 913
    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 914
    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 916
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isInfirmPioneer()Z

    move-result v0

    invoke-static {v2, v1, v4, v0}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    return v3

    .line 918
    :cond_0
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneerOrMissionary()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPublisher()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 920
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 921
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 922
    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 923
    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 924
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer90()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, v5}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    return v3

    .line 926
    :cond_1
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer100()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 927
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0, v1, v7, v5}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    return v3

    .line 928
    :cond_2
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary90()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 929
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/16 v2, 0xa

    invoke-static {v0, v1, v2, v5}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    return v3

    .line 931
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/16 v2, 0xb

    invoke-static {v0, v1, v2, v5}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    return v3

    .line 933
    :cond_4
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isCircuitOversser()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPublisher()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 935
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 936
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 937
    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 938
    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 939
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/4 v2, 0x7

    invoke-static {v1, v0, v2, v5}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    return v3

    :cond_5
    return v5
.end method

.method private testScheduleBackup()V
    .locals 6

    .line 981
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 982
    const-string v1, "ScheduleBackup"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    const-string v1, "ScheduleFreq"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 984
    const-string v2, "LastSchedBackup"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 986
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    mul-int/lit8 v1, v1, -0x2

    const/4 v4, 0x6

    .line 987
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 988
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 989
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 990
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupBackupSchedule(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private testSyncDevices()V
    .locals 6

    .line 998
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mLastTimeSyncChecked:Ljava/util/Date;

    .line 999
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1000
    const-string v1, "syncMode"

    const-string v2, "manual"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1001
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    const-string v1, "SyncTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 1005
    const-string v3, "syncTime"

    const-string v4, "3"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1006
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    mul-int/lit8 v0, v0, -0x2

    const/16 v4, 0xb

    .line 1007
    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 1008
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 1009
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1010
    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupSyncDevices(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private updateFolders(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    const/16 p1, 0x16e

    if-gt p2, p1, :cond_0

    .line 1019
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->migrateStorage(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private updateHourRequirement(I)V
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x189

    if-gt p1, v0, :cond_0

    .line 1024
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->updateHourRequirement(Lio/realm/Realm;)V

    :cond_0
    return-void
.end method

.method private updatePreferences(ZI)V
    .locals 7

    const/4 v0, 0x0

    .line 1028
    const-string v1, "MyPrefsSettings"

    const-string v2, "prefCardsToDisplay"

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->getSoftwareVersion(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_1

    .line 1029
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->transferStartPauseTime()V

    .line 1032
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1033
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1035
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    .line 1036
    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1037
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1038
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1041
    :cond_0
    const-string v5, "whenShowRBC"

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1042
    const-string v6, "pioneer"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1043
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1044
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    if-eqz p1, :cond_2

    const/16 p1, 0x13d

    if-gt p2, p1, :cond_2

    .line 1048
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1049
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const/16 v0, -0x6001

    .line 1053
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1055
    invoke-interface {p2, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method private updateServiceTimerTitle()V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->txtServiceTimerTitle:Landroid/widget/TextView;

    sget-boolean v1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsRBCTimer:Z

    if-eqz v1, :cond_0

    const v1, 0x7f1204a6

    goto :goto_0

    :cond_0
    const v1, 0x7f1204d9

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public OnUpdateCards()V
    .locals 1

    .line 1768
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->showCards()V

    .line 1769
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mCardView:Lcom/fima/cardsui/views/CardUI;

    invoke-virtual {v0}, Lcom/fima/cardsui/views/CardUI;->refresh()V

    return-void
.end method

.method public askForNotificationPermissions()V
    .locals 0

    .line 1137
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/NotificationUtils;->createChannels(Landroid/content/Context;)V

    return-void
.end method

.method askForWritePermissions()V
    .locals 0

    return-void
.end method

.method doSyncing()V
    .locals 6

    .line 1487
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1488
    const-string v1, "ShowSyncWarning"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1490
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0144

    .line 1491
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f120517

    .line 1492
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x7f090602

    .line 1494
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f120518

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f12051a

    .line 1497
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f12051c

    .line 1499
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f120519

    .line 1501
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f12051b

    .line 1503
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1505
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1506
    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v2, 0x7f090103

    .line 1509
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1510
    new-instance v3, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$17;

    invoke-direct {v3, p0, v1, v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$17;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Landroid/app/Dialog;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 1519
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f09016e

    .line 1522
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1523
    new-instance v3, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$18;

    invoke-direct {v3, p0, v2}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$18;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Landroid/widget/Button;)V

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0900e6

    .line 1532
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1533
    new-instance v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$19;

    invoke-direct {v2, p0, v1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$19;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1540
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void

    .line 1542
    :cond_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->initDriveProcess()V

    return-void
.end method

.method public fixBackupAccount()V
    .locals 0

    .line 1120
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->initBackupsWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    return-void
.end method

.method public fixSyncAccount()V
    .locals 0

    .line 1124
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->doSyncingWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    return-void
.end method

.method public initBackups()V
    .locals 0

    .line 1142
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->initBackupsNoPermission()V

    return-void
.end method

.method public initBackupsNoPermission()V
    .locals 3

    .line 1152
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1153
    const-string v1, "accountName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1155
    const-string v0, "https://www.googleapis.com/auth/drive.file"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 1156
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->newChooseAccountIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 1158
    :cond_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->scheduleDriveBackup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1161
    :catch_0
    const-string v0, "Error: Do you have Google Play Services installed?"

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void
.end method

.method public initBackupsOnlyAccount()V
    .locals 0

    .line 1147
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->initBackupsNoPermission()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 1306
    const-string v0, "Restore from error dialog"

    const/16 v1, 0x3e7

    if-ne p1, v1, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mCardView:Lcom/fima/cardsui/views/CardUI;

    invoke-virtual {v0}, Lcom/fima/cardsui/views/CardUI;->refresh()V

    goto/16 :goto_2

    :cond_0
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    if-eqz p3, :cond_10

    .line 1309
    const-string v0, "auto"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1310
    invoke-static {p0, v2}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupSyncDevices(Landroid/content/Context;Z)V

    .line 1311
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->initDriveProcess()V

    goto/16 :goto_2

    .line 1313
    :cond_1
    sget-object v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->sVersionNumber:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x537

    if-ne p1, v1, :cond_3

    .line 1315
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbChangedThatShouldUpdateSync:Z

    if-eqz v0, :cond_2

    .line 1316
    sput-boolean v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbChangedThatShouldUpdateSync:Z

    .line 1317
    invoke-static {p0, v2}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupSyncDevices(Landroid/content/Context;Z)V

    .line 1318
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->doSyncDevice()V

    goto/16 :goto_2

    .line 1320
    :cond_2
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetCards()V

    .line 1321
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 1322
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    goto/16 :goto_2

    :cond_3
    const/4 v1, 0x1

    const/4 v3, -0x1

    if-ne p1, v1, :cond_5

    if-ne p2, v3, :cond_10

    .line 1327
    :try_start_0
    new-instance v3, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    .line 1328
    invoke-static {v1, p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getAutomaticBackupFile(ZLandroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 1329
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1330
    const-string v1, "The file doesn\'t exist :("

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    invoke-static {v2, p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getAutomaticBackupFile(ZLandroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 1332
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1333
    const-string v4, "The file second doesn\'t exist :("

    invoke-static {v0, v4}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 1336
    :cond_4
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1337
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1339
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    .line 1340
    invoke-static {}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->clearAll()V

    .line 1341
    new-instance v3, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$14;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$14;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    const-string v4, "MinistryAssustantMain 7"

    invoke-static {p0, v1, v3, v2, v4}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->loadExternalFile(Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;ZLjava/lang/String;)V
    :try_end_0
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1370
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1360
    :catch_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200bf

    .line 1361
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$15;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$15;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    .line 1362
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1367
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1368
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    .line 1373
    :cond_5
    const-string v0, "accountName"

    const-string v1, "authAccount"

    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    if-ne p2, v3, :cond_10

    if-eqz p3, :cond_10

    .line 1374
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1375
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1376
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1377
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1378
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1380
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->doSyncDevice()V

    goto/16 :goto_2

    :cond_6
    const/4 v4, 0x4

    .line 1383
    const-string v5, "Error: Do you have Google Play Services installed?"

    const v6, 0x7f12001f

    const-string v7, "https://www.googleapis.com/auth/drive.file"

    if-ne p1, v4, :cond_a

    if-ne p2, v3, :cond_7

    .line 1385
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->doSyncDevice()V

    goto/16 :goto_2

    .line 1388
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    if-nez v0, :cond_8

    .line 1389
    invoke-static {v7}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 1390
    :cond_8
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->newChooseAccountIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1393
    invoke-virtual {p0, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 1395
    :cond_9
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 1397
    :catch_2
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, v5, v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x5

    if-ne p1, v2, :cond_c

    if-ne p2, v3, :cond_10

    if-eqz p3, :cond_10

    .line 1401
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1402
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1403
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1404
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1405
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_b

    .line 1408
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->initBackupsOnlyAccountWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    goto :goto_2

    .line 1410
    :cond_b
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->initBackupsWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    goto :goto_2

    :cond_c
    const/4 v0, 0x6

    if-ne p1, v0, :cond_10

    if-ne p2, v3, :cond_d

    .line 1415
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->scheduleDriveBackup()V

    goto :goto_2

    .line 1418
    :cond_d
    :try_start_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    if-nez v0, :cond_e

    .line 1419
    invoke-static {v7}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 1420
    :cond_e
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->newChooseAccountIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1423
    invoke-virtual {p0, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 1425
    :cond_f
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 1427
    :catch_3
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, v5, v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 1432
    :cond_10
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1475
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090100

    if-ne v0, v1, :cond_0

    .line 1476
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->startPauseTimer()V

    return-void

    .line 1477
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090101

    if-ne v0, v1, :cond_1

    .line 1478
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->stopTimer()V

    return-void

    .line 1479
    :cond_1
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbIsSyncing:Z

    if-eqz v0, :cond_2

    const p1, 0x7f120515

    .line 1480
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/Style;->INFO:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, p1, v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void

    .line 1482
    :cond_2
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 232
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->setIfFirstPage()V

    .line 234
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getOldVersion(Landroid/content/Context;)I

    move-result v0

    .line 235
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateVersion(Landroid/content/Context;)Z

    move-result v1

    .line 236
    invoke-direct {p0, v1, v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->updatePreferences(ZI)V

    .line 237
    invoke-direct {p0, v1, v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->updateFolders(ZI)V

    .line 238
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 240
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 241
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isFirstUseOfApp(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbFirstTimeEver:Z

    .line 243
    sget-object p1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->sVersionNumber:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 244
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getSoftwareVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->sVersionNumber:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    .line 246
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->setFinishActivity(Z)V

    .line 250
    const-string v2, "0.1"

    invoke-static {v2}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 252
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f05000d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 254
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const v4, 0x7f12003e

    invoke-virtual {v2, v4}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 255
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 257
    :cond_2
    const-string v2, "0.2"

    invoke-static {v2}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 261
    const-string v2, "OK"

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 262
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v6, 0x2a

    .line 264
    invoke-static {v5, p0, v6}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 266
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 268
    :cond_3
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f1200c3

    .line 269
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v5, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {v5, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 272
    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 277
    :cond_4
    :goto_0
    const-string v5, "0.3"

    invoke-static {v5}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 279
    const-string v6, "permissiondialog"

    invoke-virtual {p0, v6, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 280
    const-string v7, "0.4"

    invoke-static {v7}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 282
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    .line 284
    :goto_1
    const-string v8, "prefCardsToDisplay"

    if-eqz v1, :cond_b

    .line 285
    const-string v9, "checkFirstDayOfWeek"

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 286
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 287
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-virtual {v10}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v10

    if-ne v10, v3, :cond_6

    const/4 v10, 0x1

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :goto_2
    invoke-interface {v11, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 288
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    :cond_7
    const-string v9, "whenShowRBC"

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "checkHideRBC"

    invoke-interface {v5, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 292
    invoke-interface {v5, v10, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 294
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    if-eqz v11, :cond_8

    const-string v11, "pioneer"

    goto :goto_3

    :cond_8
    const-string v11, "never"

    :goto_3
    invoke-interface {v12, v9, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 295
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 298
    :cond_9
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->testAndDeleteOldErrorFiles(Landroid/content/Context;)V

    const/4 v9, -0x1

    .line 300
    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    and-int/lit16 v10, v9, 0x200

    if-nez v10, :cond_a

    .line 302
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->getSoftwareVersion(Landroid/content/Context;)I

    move-result v10

    const/16 v11, 0x86

    if-gt v10, v11, :cond_a

    or-int/lit16 v9, v9, 0x200

    .line 304
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_a
    and-int/lit16 v10, v9, 0x1000

    if-nez v10, :cond_b

    .line 307
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->getSoftwareVersion(Landroid/content/Context;)I

    move-result v10

    const/16 v11, 0xa7

    if-gt v10, v11, :cond_b

    or-int/lit16 v9, v9, 0x1000

    .line 309
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_b
    if-nez v7, :cond_c

    if-nez v1, :cond_c

    .line 314
    const-string v9, "invalidmap"

    invoke-interface {v5, v9, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 317
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v9, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 320
    :try_start_0
    new-instance v9, Landroid/text/SpannableString;

    const v10, 0x7f1200c9

    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v10, 0xf

    .line 321
    invoke-static {v9, v10}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 323
    new-instance v10, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f1203de

    .line 324
    invoke-virtual {v10, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    invoke-virtual {v10, v11, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v10

    .line 325
    invoke-virtual {v10, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v9

    .line 326
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    const v10, 0x102000b

    .line 329
    invoke-virtual {v9, v10}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_c

    .line 331
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v9

    .line 333
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_c
    :goto_4
    const-string v9, "1"

    invoke-static {v9}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 341
    :try_start_1
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->ministryFileExists(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceFileExists(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_5

    .line 456
    :cond_d
    const-string v9, "1.1"

    invoke-static {v9}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 457
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v9}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v9

    iget-object v10, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v9, v10}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->forceCleanUpPersons(Lio/realm/Realm;)V

    .line 458
    const-string v9, "1.2"

    invoke-static {v9}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 459
    invoke-direct {p0, v1, v7}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->doALotOfTestingAndFixing(ZZ)V

    .line 461
    const-string v9, "1.3"

    invoke-static {v9}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 464
    sget-object v9, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mLastTimeSyncChecked:Ljava/util/Date;

    if-nez v9, :cond_e

    .line 465
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->testSyncDevices()V

    goto :goto_6

    .line 467
    :cond_e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/16 v10, 0xb

    const/16 v11, -0xc

    .line 468
    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 469
    sget-object v10, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mLastTimeSyncChecked:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 470
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->testSyncDevices()V

    goto :goto_6

    .line 345
    :cond_f
    :goto_5
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    new-instance v10, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$2;

    invoke-direct {v10, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$2;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    invoke-virtual {v9, v10}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 352
    new-instance v9, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;

    invoke-direct {v9, p0, v1, v7}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;ZZ)V

    .line 446
    iget-object v10, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    new-instance v11, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$4;

    invoke-direct {v11, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$4;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    invoke-virtual {v10, v11}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 452
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "MinistryAssustantMain 2"

    invoke-static {v10, v9, v11}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->loadInternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;Ljava/lang/String;)V

    .line 473
    :cond_10
    :goto_6
    const-string v9, "1.4"

    invoke-static {v9}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 475
    :catch_1
    new-instance v9, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    invoke-virtual {p0, v9, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 479
    :goto_7
    const-string v9, "2"

    invoke-static {v9}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 482
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "requestCode"

    invoke-virtual {v9, v10, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const v10, 0x85c12f

    if-ne v9, v10, :cond_11

    .line 483
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v9

    const v10, 0x7f12003f

    .line 484
    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 487
    :cond_11
    sget-boolean v9, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbDeleteOldFiles:Z

    if-eqz v9, :cond_12

    .line 504
    new-instance v9, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$1DeleteTask;

    invoke-direct {v9, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$1DeleteTask;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    new-array v10, p1, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 506
    sput-boolean p1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbDeleteOldFiles:Z

    .line 508
    :cond_12
    const-string v9, "3"

    invoke-static {v9}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    if-nez v7, :cond_13

    .line 510
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, p1}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupServiceReportReminder(Landroid/content/Context;Z)V

    .line 511
    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->refreshTerritoryHelperToken(Landroid/app/Activity;)V

    .line 512
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->initNotifications()V

    :cond_13
    const/16 v9, 0x8

    if-nez v7, :cond_14

    .line 514
    const-string v10, "SettingsReportWizardShown"

    invoke-interface {v5, v10, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_14

    .line 516
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v10, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 517
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/lostpixels/fieldservice/activities/settings/ReportDetailsSettingsActivity;

    invoke-direct {v5, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5, v9}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/high16 v5, 0x10a0000

    const v10, 0x10a0001

    .line 518
    invoke-virtual {p0, v5, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_14
    if-nez v7, :cond_15

    if-eqz v1, :cond_15

    .line 522
    new-instance v5, Lcom/lostpixels/fieldservice/dialogs/ChangeLogDialogFragment;

    invoke-direct {v5}, Lcom/lostpixels/fieldservice/dialogs/ChangeLogDialogFragment;-><init>()V

    invoke-direct {p0, v5}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->openChangelogDialog(Lcom/lostpixels/fieldservice/dialogs/ChangeLogDialogFragment;)V

    .line 525
    :cond_15
    const-string v5, "4"

    invoke-static {v5}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    const v5, 0x7f090306

    .line 527
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->serviceTimerLayout:Landroid/view/View;

    .line 528
    const-string v5, "MyPrefsSettings"

    invoke-virtual {p0, v5, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const/high16 v10, 0x10000

    .line 529
    invoke-interface {v5, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 530
    iget-object v11, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->serviceTimerLayout:Landroid/view/View;

    and-int/2addr v8, v10

    if-eqz v8, :cond_16

    const/4 v9, 0x0

    :cond_16
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f09059d

    .line 531
    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 532
    new-instance v9, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;

    invoke-direct {v9, p0, v8, v5}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Landroid/view/View;Landroid/content/SharedPreferences;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f09011c

    .line 605
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/fima/cardsui/views/CardUI;

    iput-object v5, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mCardView:Lcom/fima/cardsui/views/CardUI;

    .line 606
    invoke-virtual {v5, p1}, Lcom/fima/cardsui/views/CardUI;->setSwipeable(Z)V

    .line 607
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f0c0049

    invoke-virtual {v5, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 608
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mCardView:Lcom/fima/cardsui/views/CardUI;

    invoke-virtual {v5, v4}, Lcom/fima/cardsui/views/CardUI;->setHeader(Landroid/view/View;)V

    const v4, 0x7f09020a

    .line 609
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->emptyView:Landroid/view/View;

    const v4, 0x7f090218

    .line 611
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/ui/Fab;

    .line 612
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getFabColor(Landroid/content/Context;)I

    move-result v5

    .line 613
    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/ui/Fab;->setColor(I)V

    .line 614
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f080083

    invoke-static {v5, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 616
    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/ui/Fab;->setDrawable(Landroid/graphics/Bitmap;)V

    .line 617
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mCardView:Lcom/fima/cardsui/views/CardUI;

    invoke-virtual {v5}, Lcom/fima/cardsui/views/CardUI;->getScrollView()Lcom/fima/cardsui/views/QuickReturnListView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/ui/Fab;->listenTo(Landroid/widget/AbsListView;)V

    .line 618
    new-instance v5, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$6;

    invoke-direct {v5, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$6;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f09060d

    .line 632
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mTxtLastSyncTime:Landroid/widget/TextView;

    .line 633
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->setLastSyncTime()V

    const v4, 0x7f0904d7

    .line 634
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->txtServiceTimerTitle:Landroid/widget/TextView;

    .line 635
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->updateServiceTimerTitle()V

    if-nez v7, :cond_17

    if-nez v1, :cond_17

    .line 636
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->isInstalledOnSdCard(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 637
    new-instance v4, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;

    const v5, 0x7f120260

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "DontShowInstallSD"

    invoke-direct {v4, p0, v5, v7}, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->show()V

    .line 643
    :cond_17
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-ge v4, v5, :cond_18

    const-string v4, "PermissionSDCardShown"

    invoke-interface {v6, v4, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_18

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 646
    :try_start_2
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f12024e

    .line 647
    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v7, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v5, v2, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 650
    new-instance v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v6}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$$ExternalSyntheticLambda3;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Landroid/content/SharedPreferences;)V

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 654
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception p1

    .line 656
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 658
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->askForWritePermissionsWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    :cond_18
    :goto_8
    if-eqz v1, :cond_19

    .line 663
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateNumberOfStudies(Lio/realm/Realm;Landroid/content/Context;)V

    .line 664
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->createCitiesList(Lio/realm/Realm;)V

    .line 665
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    .line 666
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->updateCustomItems()V

    .line 667
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object p1

    .line 668
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->fixBugWithNull(Lio/realm/Realm;)V

    .line 669
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->updateHourRequirement(I)V

    .line 672
    :cond_19
    const-string p1, "MainCreate"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 1231
    const-string v0, "Create search"

    new-instance v1, Landroidx/appcompat/widget/SearchView;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x1

    .line 1233
    :try_start_0
    const-string v2, "search"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 1234
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 1235
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 1236
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const v3, 0x7f120333

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1237
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mSearchView:Landroidx/appcompat/widget/SearchView;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$13;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$13;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1251
    invoke-static {v2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :goto_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isLightTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1256
    :try_start_1
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const-class v3, Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->findChildrenByClass(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, -0x1

    .line 1257
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, -0x7f000001

    .line 1258
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 1261
    invoke-static {v2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f120330

    .line 1265
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mSearchMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f080078

    .line 1266
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-static {v0, v2}, Landroidx/core/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 1267
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mSearchMenuItem:Landroid/view/MenuItem;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 1269
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1270
    const-string v2, "syncMode"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1271
    const-string v2, "disabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const v0, 0x7f12050e

    .line 1272
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x7

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mSyncMenuItem:Landroid/view/MenuItem;

    const v0, 0x7f0801b2

    .line 1273
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 1275
    sget-boolean p1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbIsSyncing:Z

    if-eqz p1, :cond_2

    .line 1276
    const-string p1, "layout_inflater"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0c0028

    .line 1277
    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1278
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mSyncMenuItem:Landroid/view/MenuItem;

    invoke-static {v0, p1}, Landroidx/core/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    :cond_2
    return v1
.end method

.method protected onDestroy()V
    .locals 5

    .line 1195
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    .line 1196
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbDoAutobackup:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    .line 1197
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->isFileLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isFileLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1198
    sget-object v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->autoBackupTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->autoBackupTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 1199
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->autoBackupTime:Ljava/util/Date;

    const/4 v0, 0x0

    .line 1200
    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getAutomaticBackupFile(ZLandroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const v2, 0x7f120374

    if-nez v1, :cond_1

    .line 1202
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1205
    :cond_1
    :try_start_0
    new-instance v3, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$12;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$12;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    const-string v4, "MinistryAssustantMain 6"

    invoke-static {p0, v3, v1, v4}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->saveExternalFilesNoThread(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1215
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1216
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    :cond_2
    :goto_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/LogToSD;->shutdown()V

    .line 1224
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1454
    invoke-static {v0}, Landroidx/core/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    const/4 p1, 0x1

    return p1

    .line 1457
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1181
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1182
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "requestCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x85c12f

    if-ne v0, v1, :cond_0

    .line 1184
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f12003f

    .line 1185
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1190
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1291
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1296
    :cond_0
    invoke-static {}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->isSynching()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1297
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->doSyncingWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    goto :goto_0

    .line 1293
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 677
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->onPause()V

    .line 679
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$7;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$7;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 685
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 1286
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1575
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1577
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;I[I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1468
    const-string v0, "IsSyncing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbIsSyncing:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1469
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mClickable:Z

    .line 1470
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 1075
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Ministry.obj"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1076
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Service.obj"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1077
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 1078
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1080
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->showCards()V

    .line 1081
    const-string v0, "onResume 1"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 1083
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->syncMinistrySchedule()V

    .line 1085
    :cond_0
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    .line 1086
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1462
    const-string v0, "IsSyncing"

    sget-boolean v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbIsSyncing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1463
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method showDeniedForInitDriveProcess()V
    .locals 2

    .line 1762
    const-string v0, "Permission denied"

    const-string v1, "GET_ACCOUNTS"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f120279

    .line 1763
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method showDeniedForStorage()V
    .locals 2

    const v0, 0x7f120279

    .line 1569
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method showRationaleForInitDriveProcess(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 4

    .line 1741
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12024d

    .line 1743
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1744
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$27;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$27;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Lpermissions/dispatcher/PermissionRequest;)V

    .line 1745
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$26;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$26;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 1750
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1755
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1756
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method showRationaleForStorage(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 4

    .line 1548
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12024d

    .line 1550
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1551
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$21;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$21;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Lpermissions/dispatcher/PermissionRequest;)V

    .line 1552
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$20;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$20;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 1557
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1562
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1563
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public updateCustomItems()V
    .locals 6

    .line 689
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 691
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    .line 692
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 694
    :goto_1
    const-string v2, "showCustom1"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "showCustom3"

    const-string v5, "showCustom2"

    if-nez v3, :cond_3

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 696
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 697
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    .line 699
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 700
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 701
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 702
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 703
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
