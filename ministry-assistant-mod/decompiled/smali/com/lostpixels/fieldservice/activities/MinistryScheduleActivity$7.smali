.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->fillCalendarFromYear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$7;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$7;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetworkerFillUpdate(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$7;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$7$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$7$1;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 565
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 566
    const-string v0, "Start update calendar"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 570
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 571
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$7;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->startDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 572
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object v2

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 574
    :goto_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$7;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 575
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v3

    .line 576
    invoke-virtual {v2, v3, v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getTime(ILjava/util/Calendar;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    move-result-object v3

    .line 577
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$7;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$7;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->getTime()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v6, v7, v8}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mformatToTime(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v7, 0x1

    xor-int/2addr v3, v7

    invoke-virtual {v4, v5, v6, v3}, Lcom/squareup/timessquare/CalendarPickerView;->setTextOnDate(Ljava/util/Date;Ljava/lang/String;Z)Z

    const/4 v3, 0x6

    .line 578
    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 580
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 581
    const-string v1, "Update calendar"

    invoke-static {v1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 582
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$7;->updateUI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 585
    throw v1
.end method
