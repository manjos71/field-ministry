.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;

.field final synthetic val$cal:Ljava/util/Calendar;

.field final synthetic val$finalGoal:D


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;Ljava/util/Calendar;D)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2$1;->val$cal:Ljava/util/Calendar;

    iput-wide p3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2$1;->val$finalGoal:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->access$100(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->access$000(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lio/realm/Realm;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetiSelectedServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2$1;->val$cal:Ljava/util/Calendar;

    .line 257
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/Time;

    iget-wide v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2$1;->val$finalGoal:D

    invoke-direct {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    return-void
.end method
