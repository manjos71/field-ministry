.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

.field final synthetic val$reportManager:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$1;->val$reportManager:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 104
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/timessquare/CalendarPickerView;->getSelectedDate()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$1;->val$reportManager:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->realm:Lio/realm/Realm;

    .line 107
    invoke-virtual {v0, v1, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonthSession(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    const-string v2, "IsUpdate"

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 112
    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 113
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    const-wide/16 v3, -0x1

    invoke-static {p1, v3, v4}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->-$$Nest$fputmiEditSession(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;J)V

    const/4 p1, 0x0

    .line 114
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->-$$Nest$fputmiEditSession(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;J)V

    const/4 p1, 0x1

    .line 117
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    :goto_0
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    const-string v0, "Session"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    const/16 v0, 0x2a

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method
