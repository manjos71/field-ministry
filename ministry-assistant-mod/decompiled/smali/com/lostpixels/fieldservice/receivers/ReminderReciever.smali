.class public Lcom/lostpixels/fieldservice/receivers/ReminderReciever;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method static bridge synthetic -$$Nest$mshowNotification(Lcom/lostpixels/fieldservice/receivers/ReminderReciever;ZLandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/receivers/ReminderReciever;->showNotification(ZLandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private showNotification(ZLandroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p2

    .line 102
    const-class v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, -0x1

    .line 103
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    if-eqz p1, :cond_b

    .line 105
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v3

    .line 107
    :try_start_0
    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v5

    .line 108
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 107
    invoke-virtual {v5, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v2

    .line 109
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->hasBeenSent()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "android.hardware.telephony"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 112
    const-string v5, "com.hourglass_app.hourglasstime"

    invoke-static {v5, v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    .line 113
    const-string v6, "com.jwscheduler.jws"

    invoke-static {v6, v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v7, 0x24000000

    .line 119
    const-class v8, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    .line 120
    :try_start_1
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    const-string v11, "NotificationSMSReport"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {v10, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v11, v10

    move-object v10, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 124
    :cond_0
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string v11, "NotificationShareReport"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {v10, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v11, v9

    :goto_0
    if-eqz v5, :cond_1

    .line 129
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    const-string v8, "NotificationHourglassReport"

    invoke-virtual {v12, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {v12, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v7, v9

    move-object v8, v7

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    .line 133
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    const-string v8, "NotificationJWSPublisherReport"

    invoke-virtual {v12, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {v12, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v7, v9

    move-object v8, v12

    move-object v12, v7

    goto :goto_1

    .line 137
    :cond_2
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    const-string v8, "NotificationEmailReport"

    invoke-virtual {v12, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {v12, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v8, v9

    move-object v7, v12

    move-object v12, v8

    :goto_1
    const/high16 v13, 0x4000000

    const/4 v14, 0x0

    if-eqz v2, :cond_3

    .line 147
    invoke-static {v0, v14, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    move-object v11, v10

    move-object v10, v9

    goto :goto_2

    .line 149
    :cond_3
    invoke-static {v0, v14, v10, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    move-object v11, v9

    :goto_2
    if-eqz v5, :cond_4

    .line 152
    invoke-static {v0, v14, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    move-object v8, v9

    move-object v9, v7

    move-object v7, v8

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    .line 154
    invoke-static {v0, v14, v8, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    move-object v8, v7

    move-object v7, v9

    goto :goto_3

    .line 156
    :cond_5
    invoke-static {v0, v14, v7, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    move-object v8, v9

    .line 158
    :goto_3
    new-instance v12, Landroidx/core/app/NotificationCompat$Builder;

    const-string v13, "MimmiChannel"

    invoke-direct {v12, v0, v13}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v13, 0x7f0802a5

    .line 159
    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    const v13, 0x7f12003e

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    const v15, 0x7f1201a1

    .line 160
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    if-eqz v2, :cond_6

    const v2, 0x7f1201b4

    .line 162
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v10, 0x7f0801af

    invoke-virtual {v4, v10, v2, v11}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_4

    :cond_6
    const v2, 0x7f1201bc

    .line 164
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v11, 0x7f0801d5

    invoke-virtual {v4, v11, v2, v10}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 166
    :goto_4
    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getPrimaryColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v5, :cond_7

    .line 169
    const-string v2, "Hourglass"

    const v5, 0x7f0801c1

    invoke-virtual {v4, v5, v2, v9}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_7
    if-eqz v6, :cond_8

    .line 171
    const-string v2, "NW Publisher"

    const v5, 0x7f0801c3

    invoke-virtual {v4, v5, v2, v8}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_5

    :cond_8
    const v2, 0x7f1201b3

    .line 173
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f08019d

    invoke-virtual {v4, v5, v2, v7}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 175
    :goto_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    invoke-static {v0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v5

    .line 184
    invoke-virtual {v5, v1}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroidx/core/app/TaskStackBuilder;

    .line 186
    invoke-virtual {v5, v2}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    const/high16 v1, 0xc000000

    .line 187
    invoke-virtual {v5, v14, v1}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v1

    .line 188
    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 189
    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    .line 190
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-lt v2, v5, :cond_9

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 191
    :cond_9
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v2, 0x7f120040

    invoke-virtual {v1, v2, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :cond_a
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    return-void

    :goto_6
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    .line 198
    throw v0

    :cond_b
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 47
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p2

    const-string v0, "ReminderReceiver"

    invoke-virtual {p2, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p2

    const-string v0, "CurrentService"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p2, 0x1

    .line 51
    :try_start_1
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->ministryFileExists(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceFileExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/lostpixels/fieldservice/receivers/ReminderReciever;->showNotification(ZLandroid/content/Context;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    :try_start_2
    new-instance v1, Lcom/lostpixels/fieldservice/receivers/ReminderReciever$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/receivers/ReminderReciever$1;-><init>(Lcom/lostpixels/fieldservice/receivers/ReminderReciever;)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :try_start_3
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 66
    new-instance v0, Lcom/lostpixels/fieldservice/receivers/ReminderReciever$2;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/receivers/ReminderReciever$2;-><init>(Lcom/lostpixels/fieldservice/receivers/ReminderReciever;Landroid/content/Context;)V

    const-string v1, "ReminderReciver"

    invoke-static {p1, v0, v1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->loadInternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 64
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 65
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 95
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    :goto_2
    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupServiceReportReminder(Landroid/content/Context;Z)V

    return-void
.end method
