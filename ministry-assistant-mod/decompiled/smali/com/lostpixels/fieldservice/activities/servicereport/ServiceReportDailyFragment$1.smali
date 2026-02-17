.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->updateSessionList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    const-wide/16 p1, 0x0

    cmp-long p3, p4, p1

    if-ltz p3, :cond_4

    .line 256
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    const-string p2, "IsUpdate"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    invoke-static {p2, p4, p5}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->-$$Nest$fputmiEditSession(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;J)V

    .line 259
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getThreeLastMonthStartDate()Ljava/util/Calendar;

    move-result-object p2

    .line 260
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 261
    invoke-virtual {v0, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 262
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p4, p5}, Ljava/util/Date;-><init>(J)V

    .line 263
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p2

    const-string p4, "Session"

    if-eqz p2, :cond_0

    .line 264
    new-instance p2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    iget-object p5, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    iget-object p5, p5, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {p5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p5

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p5, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p5

    .line 265
    invoke-virtual {p5, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p5

    invoke-direct {p2, p5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 266
    invoke-virtual {p2, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 267
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 268
    const-string p2, "OnlyMonths"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 271
    :cond_0
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p2

    iget-object p5, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    iget-object p5, p5, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    .line 272
    invoke-virtual {p2, p5, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonthSession(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p2

    if-nez p2, :cond_2

    .line 275
    new-instance p5, Lcom/lostpixels/fieldservice/utils/comparators/DateCompare;

    invoke-direct {p5}, Lcom/lostpixels/fieldservice/utils/comparators/DateCompare;-><init>()V

    .line 276
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v2, p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonths(Lio/realm/Realm;Z)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 277
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p5, v2, v1}, Lcom/lostpixels/fieldservice/utils/comparators/DateCompare;->compare(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    if-nez v2, :cond_1

    move-object p2, v0

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    goto :goto_2

    .line 287
    :cond_3
    new-instance p3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {p3, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 289
    :goto_1
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    const/16 p3, 0x2a

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4
    :goto_2
    return-void
.end method
