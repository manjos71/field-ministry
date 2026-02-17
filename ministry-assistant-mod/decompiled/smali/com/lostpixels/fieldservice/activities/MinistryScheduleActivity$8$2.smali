.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8$2;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 6

    .line 617
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object v0

    .line 618
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8$2;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;->val$selectedDates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Date;

    .line 619
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8$2;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object v1

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/squareup/timessquare/CalendarPickerView;->setTextOnDate(Ljava/util/Date;Ljava/lang/String;Z)Z

    .line 620
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8$2;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetiSelectedServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I

    move-result v1

    const-wide/16 v3, 0x0

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->planTime(ILjava/util/Date;DLjava/lang/String;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    goto :goto_0

    :cond_0
    return-void
.end method
