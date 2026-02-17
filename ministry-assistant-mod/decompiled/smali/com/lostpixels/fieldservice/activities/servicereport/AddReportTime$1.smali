.class Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/simonvt/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lnet/simonvt/widget/TimePicker;II)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtHours(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v0, p2, p3}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(II)V

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z

    move-result p2

    const/4 p3, 0x1

    invoke-static {v0, p3, p2}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
