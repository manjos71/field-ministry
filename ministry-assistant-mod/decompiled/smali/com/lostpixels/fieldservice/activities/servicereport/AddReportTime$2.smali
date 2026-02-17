.class Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;


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

    .line 116
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/fourmob/datetimepicker/date/DatePickerDialog;III)V
    .locals 1

    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x2

    .line 123
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x5

    .line 124
    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 126
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 127
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmbIsGoalDialog(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z

    move-result p2

    const p3, 0x7f0c013c

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmbOnlySelectMonth(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmbtnDate(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    move-result-object p2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p4

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;I)V

    goto :goto_1

    .line 128
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmbtnDate(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    move-result-object p2

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p4}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmMonthFormat(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Ljava/text/SimpleDateFormat;

    move-result-object p4

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;I)V

    .line 132
    :goto_1
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mgetComment(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 133
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtComment(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mupdateRBCView(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/util/Date;)V

    .line 135
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mupdateMileageView(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/util/Date;)V

    .line 136
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mupdateLayout(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    return-void
.end method
