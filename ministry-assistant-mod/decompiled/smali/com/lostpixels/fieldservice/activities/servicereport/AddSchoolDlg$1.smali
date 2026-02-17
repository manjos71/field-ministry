.class Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/fourmob/datetimepicker/date/DatePickerDialog;III)V
    .locals 1

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x2

    .line 55
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x5

    .line 56
    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 57
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->-$$Nest$fputmdate(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;Ljava/util/Date;)V

    .line 58
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    iget-object p3, p2, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->-$$Nest$fgetmMonthFormat(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)Ljava/text/SimpleDateFormat;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    return-void
.end method
