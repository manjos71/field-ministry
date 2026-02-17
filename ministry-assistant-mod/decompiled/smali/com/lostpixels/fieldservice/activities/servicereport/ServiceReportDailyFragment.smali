.class public Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;,
        Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;,
        Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionViewHolder;
    }
.end annotation


# instance fields
.field private listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

.field final mDateFormatDay:Ljava/text/SimpleDateFormat;

.field final mDateFormatMonth:Ljava/text/SimpleDateFormat;

.field private mbCustom1:Z

.field private mbCustom2:Z

.field private mbCustom3:Z

.field private mbIsHhmm:Z

.field private mbIsKilometers:Z

.field private miEditSession:J

.field private miSavedIndex:I

.field private miSavedTop:I

.field private mlstSessions:Landroid/widget/ListView;

.field realm:Lio/realm/Realm;

.field private reportDensity:I


# direct methods
.method static bridge synthetic -$$Nest$fputmiEditSession(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->miEditSession:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLLL yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mDateFormatMonth:Ljava/text/SimpleDateFormat;

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "cccc dd MMMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mDateFormatDay:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->miSavedTop:I

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->miSavedIndex:I

    return-void
.end method

.method private restoreListPos()V
    .locals 3

    .line 356
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->miSavedIndex:I

    if-lez v0, :cond_0

    .line 357
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mlstSessions:Landroid/widget/ListView;

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->miSavedTop:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    :cond_0
    return-void
.end method

.method private saveListPos()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mlstSessions:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->miSavedIndex:I

    .line 351
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mlstSessions:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->miSavedTop:I

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    .line 346
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_6

    .line 307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/MinistryAssistant;->hasPermissionToTrack(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 308
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 309
    const-string p2, "item_id"

    const-string v0, "EditReport_daily_list"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string p2, "item_name"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string p2, "content_type"

    const-string v0, "action"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->getTracker()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p2

    const-string v0, "select_content"

    invoke-virtual {p2, v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 315
    :cond_1
    const-string p1, "Session"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 318
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getThreeLastMonthStartDate()Ljava/util/Calendar;

    move-result-object p2

    .line 319
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 320
    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->miEditSession:J

    invoke-virtual {p3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 321
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->miEditSession:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 322
    invoke-virtual {p3, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 323
    new-instance p2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p3

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p3, v1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 324
    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    goto :goto_0

    .line 326
    :cond_2
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p2, p3, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonthSession(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_5

    .line 329
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p3

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->removeServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 332
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->hasComment()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 333
    :cond_3
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 336
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    invoke-interface {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;->onReportUpdated()V

    .line 337
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->updateSessionList()V

    .line 338
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    .line 341
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    :cond_6
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 102
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    .line 103
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet OnUpdateReportListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 134
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mlstSessions:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    .line 137
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getThreeLastMonthStartDate()Ljava/util/Calendar;

    move-result-object p1

    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 139
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 140
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 141
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p1, v0, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p1, v0, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonthSession(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->removeServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->updateSessionList()V

    .line 155
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    invoke-interface {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;->onReportUpdated()V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 125
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f09039b

    if-ne p2, p3, :cond_0

    const p2, 0x7f120582

    .line 126
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const p2, 0x7f12020a

    .line 127
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p1, p3, p3, p3, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f0c012d

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-wide/16 v2, -0x1

    .line 75
    iput-wide v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->miEditSession:J

    if-eqz p3, :cond_0

    .line 77
    const-string p2, "EditSession"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->miEditSession:J

    :cond_0
    const p2, 0x7f09039b

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mlstSessions:Landroid/widget/ListView;

    const p2, 0x7f090017

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 82
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mlstSessions:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 83
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mlstSessions:Landroid/widget/ListView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 86
    const-string p3, "inputMode"

    const-string v0, "hhmm"

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbIsHhmm:Z

    .line 87
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom1()Z

    move-result p3

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom1:Z

    .line 88
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom2()Z

    move-result p3

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom2:Z

    .line 89
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom3()Z

    move-result p3

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom3:Z

    .line 90
    const-string p3, "mileageKM"

    const/4 v0, 0x1

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbIsKilometers:Z

    .line 91
    const-string p3, "ReportDensity"

    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->reportDensity:I

    .line 93
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->updateSessionList()V

    .line 94
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    invoke-interface {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;->onReportUpdated()V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 112
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    .line 114
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 119
    const-string v0, "EditSession"

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->miEditSession:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 120
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public updateSessionList()V
    .locals 36

    move-object/from16 v0, p0

    .line 160
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mlstSessions:Landroid/widget/ListView;

    if-nez v1, :cond_0

    goto/16 :goto_12

    .line 162
    :cond_0
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonths(Lio/realm/Realm;Z)Ljava/util/List;

    move-result-object v1

    .line 168
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v4, " "

    const v5, 0x7f0c0098

    const/4 v9, 0x2

    if-nez v2, :cond_b

    .line 169
    new-instance v2, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v2, v10, v5}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;I)V

    .line 171
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 173
    invoke-virtual {v11, v9}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    const/4 v12, 0x4

    .line 174
    invoke-virtual {v11, v12}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 177
    new-instance v12, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v12}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 178
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f1201d8

    invoke-virtual {v0, v14}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 179
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v17, v10

    move-object/from16 v20, v12

    const/4 v10, -0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v14, "\n"

    if-eqz v12, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 180
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v15, 0x3

    .line 181
    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    if-eq v15, v10, :cond_5

    .line 183
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    .line 184
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    .line 185
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v19

    iget-boolean v14, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbIsHhmm:Z

    iget-boolean v6, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbIsKilometers:Z

    iget-boolean v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom1:Z

    iget-boolean v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom2:Z

    iget-boolean v7, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom3:Z

    move-object/from16 v35, v1

    iget v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->reportDensity:I

    if-eq v1, v9, :cond_1

    const/16 v33, 0x1

    goto :goto_1

    :cond_1
    const/16 v33, 0x0

    :goto_1
    if-nez v1, :cond_2

    const/16 v34, 0x1

    goto :goto_2

    :cond_2
    const/16 v34, 0x0

    :goto_2
    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v32, 0x1

    move/from16 v30, v3

    move/from16 v29, v5

    move/from16 v27, v6

    move/from16 v31, v7

    move-object/from16 v18, v10

    move/from16 v24, v14

    invoke-static/range {v18 .. v34}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getReport(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZZZZZZZZZZZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;

    move v3, v15

    .line 186
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    iget-boolean v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbIsHhmm:Z

    iget-boolean v6, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbIsKilometers:Z

    iget-boolean v7, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom1:Z

    iget-boolean v8, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom2:Z

    iget-boolean v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom3:Z

    move/from16 v16, v3

    iget v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->reportDensity:I

    if-eq v3, v9, :cond_3

    const/16 v24, 0x1

    :goto_3
    move/from16 v3, v16

    goto :goto_4

    :cond_3
    const/16 v24, 0x0

    goto :goto_3

    :goto_4
    const v16, 0x7f0c0130

    const/16 v18, 0x0

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v10

    invoke-direct/range {v14 .. v24}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;ZZZZZZZ)V

    .line 184
    invoke-virtual {v2, v1, v14}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_5

    :cond_4
    move-object/from16 v35, v1

    move v3, v15

    .line 189
    :goto_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    new-instance v5, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    move v10, v3

    goto :goto_6

    :cond_5
    move-object/from16 v35, v1

    move-object/from16 v1, v17

    move-object/from16 v5, v20

    .line 192
    :goto_6
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v5, v12}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->add(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-object/from16 v17, v1

    move-object/from16 v20, v5

    move-object/from16 v1, v35

    const/4 v3, 0x1

    const v5, 0x7f0c0098

    goto/16 :goto_0

    .line 196
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    .line 198
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v19

    iget-boolean v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbIsHhmm:Z

    iget-boolean v6, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbIsKilometers:Z

    iget-boolean v7, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom1:Z

    iget-boolean v8, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom2:Z

    iget-boolean v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom3:Z

    iget v11, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->reportDensity:I

    if-eq v11, v9, :cond_7

    const/16 v33, 0x1

    goto :goto_7

    :cond_7
    const/16 v33, 0x0

    :goto_7
    if-nez v11, :cond_8

    const/16 v34, 0x1

    goto :goto_8

    :cond_8
    const/16 v34, 0x0

    :goto_8
    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v32, 0x1

    move-object/from16 v18, v3

    move/from16 v24, v5

    move/from16 v27, v6

    move/from16 v29, v7

    move/from16 v30, v8

    move/from16 v31, v10

    invoke-static/range {v18 .. v34}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getReport(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZZZZZZZZZZZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;

    .line 199
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    iget-boolean v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbIsHhmm:Z

    iget-boolean v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbIsKilometers:Z

    iget-boolean v6, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom1:Z

    iget-boolean v7, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom2:Z

    iget-boolean v8, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom3:Z

    iget v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->reportDensity:I

    if-eq v10, v9, :cond_9

    const/16 v24, 0x1

    goto :goto_9

    :cond_9
    const/16 v24, 0x0

    :goto_9
    const v16, 0x7f0c0130

    const/16 v18, 0x0

    move/from16 v19, v3

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    invoke-direct/range {v14 .. v24}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;ZZZZZZZ)V

    .line 197
    invoke-virtual {v2, v1, v14}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    :cond_a
    const/4 v1, 0x1

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 209
    :goto_a
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getThreeLastMonthStartDate()Ljava/util/Calendar;

    move-result-object v3

    const/4 v5, -0x1

    .line 210
    invoke-virtual {v3, v9, v5}, Ljava/util/Calendar;->add(II)V

    .line 211
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 212
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v6, 0x1

    .line 213
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 214
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v6

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v3

    .line 216
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x5

    .line 217
    invoke-virtual {v7, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 218
    :goto_b
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v6

    iget-object v8, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v6, v8, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isYearEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    .line 219
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v6

    iget-object v8, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v6, v8, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v6

    .line 220
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :goto_c
    if-lez v3, :cond_d

    .line 223
    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isMonthReportEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    .line 225
    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v1

    invoke-static {v5, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceYear2Year(II)I

    move-result v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 226
    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v7, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 227
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 228
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 229
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v8, 0x1

    :goto_d
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    :cond_d
    const/4 v8, 0x1

    .line 234
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    if-nez v2, :cond_e

    .line 236
    new-instance v2, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v6, 0x7f0c0098

    invoke-direct {v2, v3, v6}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;I)V

    goto :goto_e

    :cond_e
    const v6, 0x7f0c0098

    .line 237
    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f1204dc

    invoke-virtual {v0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;

    .line 238
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    iget-boolean v15, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbIsHhmm:Z

    iget-boolean v12, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbIsKilometers:Z

    iget-boolean v14, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom1:Z

    iget-boolean v6, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom2:Z

    iget-boolean v8, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mbCustom3:Z

    move/from16 v21, v1

    iget v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->reportDensity:I

    if-eq v1, v9, :cond_f

    const/16 v20, 0x1

    :goto_f
    move/from16 v16, v12

    goto :goto_10

    :cond_f
    const/16 v20, 0x0

    goto :goto_f

    :goto_10
    const v12, 0x7f0c0130

    move/from16 v17, v14

    const/4 v14, 0x1

    move/from16 v18, v6

    move/from16 v19, v8

    invoke-direct/range {v10 .. v20}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;ZZZZZZZ)V

    .line 237
    invoke-virtual {v2, v3, v10}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_11

    :cond_10
    move/from16 v21, v1

    :goto_11
    add-int/lit8 v5, v5, -0x1

    const/16 v3, 0xc

    move/from16 v1, v21

    goto/16 :goto_b

    :cond_11
    if-eqz v1, :cond_12

    .line 247
    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->saveListPos()V

    .line 248
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mlstSessions:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 250
    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->restoreListPos()V

    .line 253
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mlstSessions:Landroid/widget/ListView;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$1;

    invoke-direct {v2, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    .line 295
    :cond_12
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mlstSessions:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    if-eqz v1, :cond_13

    .line 297
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->mlstSessions:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_13
    :goto_12
    return-void
.end method
