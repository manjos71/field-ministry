.class public abstract Lcom/lostpixels/fieldservice/activities/base/TimerActivity;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/base/TimerActivity$MessageHandler;
    }
.end annotation


# static fields
.field protected static mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity; = null

.field private static mNotificationHandler:Landroid/os/Handler; = null

.field private static mPauseTime:J = 0x0L

.field private static mStartTime:J = 0x0L

.field protected static mbIsRBCTimer:Z = false

.field private static mbIsTimerRunning:Z = false


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPauseHandler:Landroid/os/Handler;

.field private mUpdatePauseTimeTask:Ljava/lang/Runnable;

.field private mUpdateTimeTask:Ljava/lang/Runnable;

.field private mbTimerSet:Z

.field private mbtnStartPause:Landroid/widget/ImageView;

.field private mtxtTimerValue:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/activities/base/TimerActivity;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPauseHandler(Lcom/lostpixels/fieldservice/activities/base/TimerActivity;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdatTimer(Lcom/lostpixels/fieldservice/activities/base/TimerActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->updatTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePauseTimer(Lcom/lostpixels/fieldservice/activities/base/TimerActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->updatePauseTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTimerText(Lcom/lostpixels/fieldservice/activities/base/TimerActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->updateTimerText()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmPauseTime()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfgetmStartTime()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfgetmbIsTimerRunning()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsTimerRunning:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmPauseTime(J)V
    .locals 0

    .line 0
    sput-wide p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmStartTime(J)V
    .locals 0

    .line 0
    sput-wide p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbTimerSet:Z

    .line 64
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdatePauseTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method private notifyMe()V
    .locals 2

    .line 79
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mNotificationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 80
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static notifyStopTimer()V
    .locals 1

    .line 74
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->stopFromOutside()V

    :cond_0
    return-void
.end method

.method private startPauseUpdate()V
    .locals 4

    .line 431
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 432
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdatePauseTimeTask:Ljava/lang/Runnable;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 433
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdatePauseTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private startTimerUpdate()V
    .locals 4

    .line 424
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 425
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 426
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stopPauseUpdate()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 439
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdatePauseTimeTask:Ljava/lang/Runnable;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private stopTimerUpdate()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 445
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updatTimer()V
    .locals 5

    .line 355
    sget-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 356
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbtnStartPause:Landroid/widget/ImageView;

    const v1, 0x7f08021f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 358
    :cond_0
    sget-boolean v4, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsTimerRunning:Z

    if-eqz v4, :cond_1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 359
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbtnStartPause:Landroid/widget/ImageView;

    const v1, 0x7f080224

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbtnStartPause:Landroid/widget/ImageView;

    const v1, 0x7f080229

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    :goto_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->updateTimerText()V

    return-void
.end method

.method private updatePauseTimer()V
    .locals 6

    .line 367
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mtxtTimerValue:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget-wide v1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateTimerText()V
    .locals 7

    .line 374
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mtxtTimerValue:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 377
    :cond_0
    sget-wide v1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    .line 381
    sget-wide v5, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    cmp-long v0, v5, v3

    if-lez v0, :cond_1

    :goto_0
    sub-long/2addr v5, v1

    goto :goto_1

    .line 384
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_0

    :goto_1
    const-wide/32 v0, 0xea60

    .line 385
    div-long/2addr v5, v0

    long-to-int v0, v5

    .line 386
    div-int/lit8 v1, v0, 0x3c

    .line 387
    rem-int/lit8 v0, v0, 0x3c

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xa

    if-ge v0, v5, :cond_2

    .line 391
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    const-string v1, ":0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 395
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    :goto_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mtxtTimerValue:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    sget-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_4

    .line 403
    invoke-static {p0}, Lcom/lostpixels/fieldservice/MinistryAssistant;->getTimerNotification(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 405
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120418

    .line 406
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 408
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 409
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 410
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_3

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const v2, 0x7f12003f

    .line 411
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_4
    :goto_3
    return-void

    .line 417
    :cond_5
    const-string v1, "0:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected allowedToSetLDCTimer()Z
    .locals 8

    .line 449
    const-string v0, "MyPrefsSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 450
    const-string v2, "whenShowRBC"

    const-string v3, "pioneer"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    sget-object v2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eWhenPioneer:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    .line 452
    const-string v3, "never"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    goto :goto_0

    .line 454
    :cond_0
    const-string v3, "always"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 457
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 458
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 459
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v5, v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v4

    const/4 v5, 0x2

    .line 461
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v6

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v3

    .line 462
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v5

    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v5

    if-ne v0, v2, :cond_2

    .line 463
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v2

    if-eqz v2, :cond_3

    if-gt v5, v3, :cond_3

    :cond_2
    sget-object v2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-eq v0, v2, :cond_3

    return v6

    :cond_3
    return v1
.end method

.method protected changeTimerType(Z)V
    .locals 2

    .line 468
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsRBCTimer:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->allowedToSetLDCTimer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 473
    sput-boolean p1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsRBCTimer:Z

    .line 475
    const-string p1, "MyPrefsSettings"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 476
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "IsRBCTimer"

    sget-boolean v1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsRBCTimer:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected continueTimer()V
    .locals 6

    .line 262
    sget-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    const-wide/16 v0, 0x0

    .line 263
    sput-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    .line 264
    const-string v2, "MyPrefsSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 265
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 266
    const-string v4, "PauseTimer"

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 267
    const-string v0, "ServiceTimer"

    sget-wide v4, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 269
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->startNotification()V

    .line 270
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->startTimerUpdate()V

    .line 271
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->stopPauseUpdate()V

    .line 272
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->updateTimerText()V

    .line 273
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->notifyMe()V

    .line 274
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mtxtTimerValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/TimerWidget$UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 85
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const-string p1, "MyPrefsSettings"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 88
    const-string v1, "ServiceTimer"

    const-wide/16 v2, 0x0

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    .line 89
    const-string v1, "PauseTimer"

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    .line 90
    const-string v1, "IsRBCTimer"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsRBCTimer:Z

    .line 91
    sget-wide v4, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsTimerRunning:Z

    if-eqz v0, :cond_1

    .line 94
    sget-wide v4, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_1

    .line 95
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbTimerSet:Z

    if-nez p1, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->pauseNotification()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 98
    sget-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 99
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbTimerSet:Z

    if-nez p1, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->startNotification()V

    .line 103
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbIsNotificationActivity:Z

    if-nez p1, :cond_6

    const p1, 0x7f090100

    .line 104
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbtnStartPause:Landroid/widget/ImageView;

    .line 105
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090101

    .line 106
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090581

    .line 108
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mtxtTimerValue:Landroid/widget/TextView;

    .line 110
    new-instance v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$1;-><init>(Lcom/lostpixels/fieldservice/activities/base/TimerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseHandler:Landroid/os/Handler;

    .line 121
    sget-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    .line 122
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbtnStartPause:Landroid/widget/ImageView;

    const v0, 0x7f08021f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 124
    :cond_3
    sget-boolean p1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsTimerRunning:Z

    if-eqz p1, :cond_4

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    .line 125
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbtnStartPause:Landroid/widget/ImageView;

    const v0, 0x7f080224

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 127
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbtnStartPause:Landroid/widget/ImageView;

    const v0, 0x7f080229

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    :goto_1
    sput-object p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    .line 130
    sget-object p1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mNotificationHandler:Landroid/os/Handler;

    if-nez p1, :cond_5

    .line 131
    new-instance p1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$MessageHandler;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$MessageHandler;-><init>()V

    sput-object p1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mNotificationHandler:Landroid/os/Handler;

    .line 134
    :cond_5
    new-instance p1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$2;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$2;-><init>(Lcom/lostpixels/fieldservice/activities/base/TimerActivity;)V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    .line 141
    new-instance p1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$3;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$3;-><init>(Lcom/lostpixels/fieldservice/activities/base/TimerActivity;)V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdatePauseTimeTask:Ljava/lang/Runnable;

    .line 148
    sget-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_6

    .line 149
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->startPauseUpdate()V

    .line 152
    :cond_6
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->updateTimerText()V

    .line 154
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->startTimerUpdate()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbIsNotificationActivity:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 180
    sput-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mNotificationHandler:Landroid/os/Handler;

    .line 181
    sput-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    .line 183
    :cond_0
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 188
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbIsNotificationActivity:Z

    if-nez v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 193
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdatePauseTimeTask:Ljava/lang/Runnable;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->stopTimerUpdate()V

    .line 196
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->stopPauseUpdate()V

    .line 199
    :cond_2
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 159
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbIsNotificationActivity:Z

    if-nez v0, :cond_0

    .line 160
    sput-object p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    .line 161
    sget-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mNotificationHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$MessageHandler;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$MessageHandler;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mNotificationHandler:Landroid/os/Handler;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsTimerRunning:Z

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    sget-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    .line 170
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdatePauseTimeTask:Ljava/lang/Runnable;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mUpdatePauseTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    :cond_1
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onResume()V

    return-void
.end method

.method public pauseNotification()V
    .locals 1

    const/4 v0, 0x1

    .line 531
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbTimerSet:Z

    .line 532
    invoke-static {}, Lcom/lostpixels/fieldservice/MinistryAssistant;->getInstance()Lcom/lostpixels/fieldservice/MinistryAssistant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    invoke-static {p0}, Lcom/lostpixels/fieldservice/MinistryAssistant;->stopNotificationService(Landroid/content/Context;)V

    .line 535
    invoke-static {p0}, Lcom/lostpixels/fieldservice/MinistryAssistant;->pauseNotification(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected pauseTimer()V
    .locals 5

    .line 245
    sget-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    .line 247
    const-string v0, "MyPrefsSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PauseTimer"

    sget-wide v2, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->pauseNotification()V

    .line 250
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->stopTimerUpdate()V

    .line 251
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->startPauseUpdate()V

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->updateTimerText()V

    .line 255
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->notifyMe()V

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/TimerWidget$UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected setTimer()V
    .locals 10

    .line 482
    sget-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 485
    sget-wide v4, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    sub-long/2addr v4, v0

    goto :goto_0

    .line 488
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    :goto_0
    const-wide/32 v0, 0xea60

    .line 489
    div-long/2addr v4, v0

    long-to-int v0, v4

    .line 490
    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v1, v1, 0x18

    .line 491
    rem-int/lit8 v0, v0, 0x3c

    move v6, v0

    move v5, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 493
    :goto_1
    new-instance v2, Lnet/simonvt/app/TimePickerDialog;

    new-instance v4, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$4;

    invoke-direct {v4, p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$4;-><init>(Lcom/lostpixels/fieldservice/activities/base/TimerActivity;)V

    const v8, 0x7f120054

    const v9, 0x7f12004b

    const v7, 0x7f1201bb

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lnet/simonvt/app/TimePickerDialog;-><init>(Landroid/content/Context;Lnet/simonvt/app/TimePickerDialog$OnTimeSetListener;IIIII)V

    .line 514
    invoke-virtual {v2}, Lnet/simonvt/app/TimePickerDialog;->getTimePicker()Lnet/simonvt/widget/TimePicker;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lnet/simonvt/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 515
    invoke-virtual {v2}, Lnet/simonvt/app/TimePickerDialog;->getTimePicker()Lnet/simonvt/widget/TimePicker;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/simonvt/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 516
    invoke-virtual {v2}, Lnet/simonvt/app/TimePickerDialog;->getTimePicker()Lnet/simonvt/widget/TimePicker;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/simonvt/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 517
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public startNotification()V
    .locals 1

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbTimerSet:Z

    .line 523
    invoke-static {}, Lcom/lostpixels/fieldservice/MinistryAssistant;->getInstance()Lcom/lostpixels/fieldservice/MinistryAssistant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    invoke-static {p0}, Lcom/lostpixels/fieldservice/MinistryAssistant;->startNotification(Landroid/content/Context;)V

    .line 526
    invoke-static {p0}, Lcom/lostpixels/fieldservice/MinistryAssistant;->startNotificationService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected startPauseTimer()V
    .locals 6

    .line 203
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 204
    sget-wide v3, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    const v0, 0x7f080224

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    .line 205
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbtnStartPause:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    .line 207
    sget-boolean v3, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsTimerRunning:Z

    if-eqz v3, :cond_1

    .line 208
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbtnStartPause:Landroid/widget/ImageView;

    const v3, 0x7f08021f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbtnStartPause:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsTimerRunning:Z

    if-nez v0, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->startTimer()V

    goto :goto_1

    .line 214
    :cond_3
    sget-wide v3, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    .line 215
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->pauseTimer()V

    goto :goto_1

    .line 217
    :cond_4
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->continueTimer()V

    :goto_1
    const/4 v0, 0x1

    .line 218
    sput-boolean v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsTimerRunning:Z

    return-void
.end method

.method protected startTimer()V
    .locals 6

    .line 222
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsTimerRunning:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    .line 223
    sput-wide v2, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    .line 224
    sput-wide v2, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    .line 225
    sput-boolean v1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsTimerRunning:Z

    .line 228
    :cond_0
    sget-wide v4, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->startNotification()V

    .line 231
    const-string v0, "MyPrefsSettings"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    const-string v1, "ServiceTimer"

    sget-wide v4, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 234
    const-string v1, "PauseTimer"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 236
    sput-wide v2, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    const/4 v0, 0x1

    .line 237
    sput-boolean v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsTimerRunning:Z

    .line 238
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->startTimerUpdate()V

    .line 239
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->notifyMe()V

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/TimerWidget$UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public stopFromOutside()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbtnStartPause:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f080229

    .line 342
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->stopTimerUpdate()V

    .line 344
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->stopPauseUpdate()V

    const-wide/16 v0, 0x0

    .line 345
    sput-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    .line 346
    sput-wide v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    const/4 v0, 0x0

    .line 347
    sput-boolean v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsTimerRunning:Z

    .line 349
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->updateTimerText()V

    .line 350
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->notifyMe()V

    return-void
.end method

.method public stopNotification()V
    .locals 1

    const/4 v0, 0x1

    .line 540
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbTimerSet:Z

    .line 541
    invoke-static {}, Lcom/lostpixels/fieldservice/MinistryAssistant;->getInstance()Lcom/lostpixels/fieldservice/MinistryAssistant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    invoke-static {p0}, Lcom/lostpixels/fieldservice/MinistryAssistant;->stopNotificationService(Landroid/content/Context;)V

    .line 544
    invoke-static {p0}, Lcom/lostpixels/fieldservice/MinistryAssistant;->stopNotification(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected stopTimer()V
    .locals 10

    .line 282
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mtxtTimerValue:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    :cond_0
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsTimerRunning:Z

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbtnStartPause:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const v4, 0x7f080229

    .line 286
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    :cond_1
    sget-wide v4, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    .line 290
    sget-wide v6, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    cmp-long v0, v6, v2

    if-lez v0, :cond_2

    :goto_0
    sub-long/2addr v6, v4

    goto :goto_1

    .line 293
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_0

    :goto_1
    const-wide/32 v8, 0xea60

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    .line 295
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 296
    new-instance v4, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 297
    invoke-virtual {v4, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 298
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsRBCTimer:Z

    const v5, 0x4a5bba00    # 3600000.0f

    if-eqz v0, :cond_3

    .line 299
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    long-to-float v6, v6

    div-float/2addr v6, v5

    float-to-double v5, v6

    invoke-direct {v0, v5, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    invoke-virtual {v4, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setRbcHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    goto :goto_2

    .line 301
    :cond_3
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    long-to-float v6, v6

    div-float/2addr v6, v5

    float-to-double v5, v6

    invoke-direct {v0, v5, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    invoke-virtual {v4, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 303
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    const-string v5, "Session"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 305
    const-string v4, "LoadFile"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x8000000

    .line 306
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_4
    const v0, 0x7f120534

    .line 310
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 314
    :goto_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->stopNotification()V

    .line 315
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->stopTimerUpdate()V

    .line 316
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->stopPauseUpdate()V

    .line 318
    const-string v0, "MyPrefsSettings"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 319
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 320
    const-string v4, "ServiceTimer"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 321
    const-string v4, "PauseTimer"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 322
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 324
    sput-wide v2, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    .line 325
    sput-wide v2, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    .line 326
    sput-boolean v1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mbIsTimerRunning:Z

    .line 328
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->updateTimerText()V

    .line 329
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->notifyMe()V

    goto :goto_4

    .line 331
    :cond_5
    sput-wide v2, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mStartTime:J

    .line 332
    sput-wide v2, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mPauseTime:J

    .line 334
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->updateTimerText()V

    .line 337
    :goto_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/TimerWidget$UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
