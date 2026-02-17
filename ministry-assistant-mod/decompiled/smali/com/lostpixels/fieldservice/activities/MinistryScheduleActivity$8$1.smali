.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;->updateUI()V
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

    .line 599
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/timessquare/CalendarPickerView;->updateText()V

    .line 604
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mupdateYearTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V

    .line 605
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    iget v1, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iLastMonthToShow:I

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mupdateMonthTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)V

    return-void
.end method
