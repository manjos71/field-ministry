.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->initCalendar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateLongClicked(Ljava/util/Date;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/timessquare/CalendarPickerView;->getSelectionMode()Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    sget-object p1, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->SINGLE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    return-void
.end method

.method public onDateSelected(Ljava/util/Date;)V
    .locals 5

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->-$$Nest$fgetmlTimeForLastTap(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->-$$Nest$fputmlTimeForLastTap(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;J)V

    .line 173
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->-$$Nest$mupdateReportText(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;Ljava/util/Date;)V

    return-void
.end method
