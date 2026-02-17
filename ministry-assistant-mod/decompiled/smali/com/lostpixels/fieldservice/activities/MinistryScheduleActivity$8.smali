.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->clearDates(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

.field final synthetic val$selectedDates:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;Ljava/util/List;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;->val$selectedDates:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetworkerClearDates(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8$1;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 612
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 614
    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8$2;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8$2;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 627
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetTimePlanned()V

    .line 628
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;->updateUI()V

    .line 629
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method
