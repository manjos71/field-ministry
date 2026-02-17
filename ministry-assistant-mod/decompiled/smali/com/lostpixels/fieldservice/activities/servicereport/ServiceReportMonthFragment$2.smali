.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->showMonthDetailList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 435
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/MinistryAssistant;->hasPermissionToTrack(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 436
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 437
    const-string v0, "item_id"

    const-string v1, "Tap_report_to_edit"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v0, "item_name"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v0, "content_type"

    const-string v1, "action"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->getTracker()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    const-string v1, "select_content"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->getItemId(I)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_5

    .line 444
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    const-string v1, "IsUpdate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 446
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    invoke-static {v1, p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->-$$Nest$fputmiEditSession(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;J)V

    .line 447
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getThreeLastMonthStartDate()Ljava/util/Calendar;

    move-result-object v1

    .line 448
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 449
    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 450
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 451
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "Session"

    if-eqz p1, :cond_1

    .line 453
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v1, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    .line 454
    invoke-virtual {v1, v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 453
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 455
    const-string p1, "OnlyMonths"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 458
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    .line 459
    invoke-virtual {p1, v1, v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonthSession(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    if-nez p1, :cond_3

    .line 462
    new-instance v1, Lcom/lostpixels/fieldservice/utils/comparators/DateCompare;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/utils/comparators/DateCompare;-><init>()V

    .line 463
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    iget-object v5, v5, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v3, v5, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonths(Lio/realm/Realm;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 464
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v5, v4}, Lcom/lostpixels/fieldservice/utils/comparators/DateCompare;->compare(Ljava/util/Date;Ljava/util/Date;)I

    move-result v5

    if-nez v5, :cond_2

    move-object p1, v3

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_2

    .line 475
    :cond_4
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v1, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 477
    :goto_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    const/16 p2, 0x4da

    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    :goto_2
    return-void
.end method
