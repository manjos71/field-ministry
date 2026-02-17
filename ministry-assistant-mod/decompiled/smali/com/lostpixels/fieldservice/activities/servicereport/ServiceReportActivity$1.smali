.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/fourmob/datetimepicker/date/DatePickerDialog;III)V
    .locals 0

    .line 142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p4, 0x1

    .line 144
    invoke-virtual {p1, p4, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x2

    .line 145
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x5

    .line 146
    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 148
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$msetProfile(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;Ljava/util/Calendar;)V

    return-void
.end method
