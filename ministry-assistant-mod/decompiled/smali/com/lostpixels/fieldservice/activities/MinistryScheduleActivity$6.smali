.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->updateYearTotal()V
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

    .line 513
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateUI(D)V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetworkerYearUpdate(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6$1;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;D)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 532
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 534
    :try_start_0
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetiSelectedServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getYearTotal(I)F

    move-result v1

    float-to-double v1, v1

    .line 536
    invoke-direct {p0, v1, v2}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;->updateUI(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 539
    throw v1
.end method
