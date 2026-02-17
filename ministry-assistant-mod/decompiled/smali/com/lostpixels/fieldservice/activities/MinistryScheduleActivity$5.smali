.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->updateMonthTotal(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

.field final synthetic val$iMonthPosition:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    iput p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->val$iMonthPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateUI(D)V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetworkerMonthUpdate(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;D)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 473
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 476
    :try_start_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetiSelectedServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I

    move-result v1

    .line 477
    iget v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->val$iMonthPosition:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 480
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    .line 481
    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 482
    iget v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->val$iMonthPosition:I

    add-int/2addr v1, v3

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    .line 483
    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    .line 484
    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 486
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 487
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 488
    invoke-virtual {v5, v4, v3}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x0

    .line 489
    invoke-virtual {v5, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 490
    invoke-virtual {v5, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 491
    invoke-virtual {v5, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 492
    invoke-virtual {v5, v1, v4}, Ljava/util/Calendar;->set(II)V

    const-wide/16 v6, 0x0

    .line 495
    :goto_0
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object v1

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetiSelectedServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I

    move-result v4

    invoke-virtual {v1, v4, v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getTime(ILjava/util/Calendar;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    move-result-object v1

    .line 497
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->getTime()F

    move-result v1

    float-to-double v8, v1

    add-double/2addr v6, v8

    const/4 v1, 0x6

    .line 498
    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 501
    :cond_1
    invoke-direct {p0, v6, v7}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->updateUI(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 504
    throw v1
.end method
