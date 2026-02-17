.class public Lcom/lostpixels/fieldservice/receivers/TimerWidgetHandlerBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startTimer(Landroid/content/Context;)V
    .locals 12

    .line 35
    const-string v0, "MyPrefsSettings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    const-string v1, "ServiceTimer"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 37
    const-string v6, "PauseTimer"

    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 38
    const-class v9, Lcom/lostpixels/fieldservice/TimerWidget$UpdateService;

    cmp-long v10, v4, v2

    if-lez v10, :cond_0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v7

    add-long/2addr v4, v10

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/receivers/TimerWidgetHandlerBroadcast;->startNotification(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    .line 40
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 41
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/receivers/TimerWidgetHandlerBroadcast;->startNotification(Landroid/content/Context;)V

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private stopTimer(Landroid/content/Context;)V
    .locals 14

    .line 67
    const-string v0, "MyPrefsSettings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    const-string v2, "ServiceTimer"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 69
    const-string v7, "PauseTimer"

    invoke-interface {v0, v7, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v10, v5, v3

    if-lez v10, :cond_3

    .line 73
    const-string v10, "IsRBCTimer"

    invoke-interface {v0, v10, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    cmp-long v11, v8, v3

    if-lez v11, :cond_0

    :goto_0
    sub-long/2addr v8, v5

    goto :goto_1

    .line 79
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    goto :goto_0

    :goto_1
    const-wide/32 v11, 0xea60

    cmp-long v13, v8, v11

    if-lez v13, :cond_2

    .line 81
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 82
    new-instance v5, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 83
    invoke-virtual {v5, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    const v1, 0x4a5bba00    # 3600000.0f

    if-eqz v10, :cond_1

    .line 85
    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/Time;

    long-to-float v8, v8

    div-float/2addr v8, v1

    float-to-double v8, v8

    invoke-direct {v6, v8, v9}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    invoke-virtual {v5, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setRbcHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    goto :goto_2

    .line 87
    :cond_1
    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/Time;

    long-to-float v8, v8

    div-float/2addr v8, v1

    float-to-double v8, v8

    invoke-direct {v6, v8, v9}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    invoke-virtual {v5, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 89
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {v1, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    const-string v6, "Session"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    const-string v5, "LoadFile"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v5, 0x18000000

    .line 92
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_2
    const v5, 0x7f120534

    .line 95
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 99
    :goto_3
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/receivers/TimerWidgetHandlerBroadcast;->stopNotification(Landroid/content/Context;)V

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0, v7, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->notifyStopTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 110
    const-string v1, "On stop timer"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/TimerWidget$UpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 125
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->installExceptionHandler()V

    .line 126
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->setLanguage(Landroid/content/Context;)V

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WidgetStartTimer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/receivers/TimerWidgetHandlerBroadcast;->startTimer(Landroid/content/Context;)V

    return-void

    .line 130
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WidgetStopTimer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 131
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/receivers/TimerWidgetHandlerBroadcast;->stopTimer(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public startNotification(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-static {p1}, Lcom/lostpixels/fieldservice/MinistryAssistant;->startNotification(Landroid/content/Context;)V

    .line 63
    invoke-static {p1}, Lcom/lostpixels/fieldservice/MinistryAssistant;->startNotificationService(Landroid/content/Context;)V

    return-void
.end method

.method public stopNotification(Landroid/content/Context;)V
    .locals 0

    .line 118
    invoke-static {p1}, Lcom/lostpixels/fieldservice/MinistryAssistant;->stopNotificationService(Landroid/content/Context;)V

    .line 119
    invoke-static {p1}, Lcom/lostpixels/fieldservice/MinistryAssistant;->stopNotification(Landroid/content/Context;)V

    return-void
.end method
