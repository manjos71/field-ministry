.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/timessquare/CalendarPickerView;->updateText()V

    return-void
.end method
