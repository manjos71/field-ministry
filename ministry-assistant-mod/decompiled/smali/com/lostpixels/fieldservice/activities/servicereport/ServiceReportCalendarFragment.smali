.class public Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private calendar:Lcom/squareup/timessquare/CalendarPickerView;

.field private listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

.field final mDateFormatDay:Ljava/text/SimpleDateFormat;

.field private mbCustom1:Z

.field private mbCustom2:Z

.field private mbCustom3:Z

.field private mbIsHhmm:Z

.field private mbIsKilometers:Z

.field private miEditSession:J

.field private mlTimeForLastTap:J

.field realm:Lio/realm/Realm;

.field private reportDensity:I

.field private txtDate:Landroid/widget/TextView;

.field private txtSession:Landroid/widget/TextView;

.field private updater:Ljava/lang/Thread;


# direct methods
.method static bridge synthetic -$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)Lcom/squareup/timessquare/CalendarPickerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mbIsHhmm:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmlTimeForLastTap(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mlTimeForLastTap:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetupdater(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)Ljava/lang/Thread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->updater:Ljava/lang/Thread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmiEditSession(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->miEditSession:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmlTimeForLastTap(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mlTimeForLastTap:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateReportText(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;Ljava/util/Date;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->updateReportText(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "cccc dd MMMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mDateFormatDay:Ljava/text/SimpleDateFormat;

    const-wide/16 v0, 0x0

    .line 63
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mlTimeForLastTap:J

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->updater:Ljava/lang/Thread;

    return-void
.end method

.method private initCalendar()V
    .locals 7

    .line 141
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getThreeLastMonthStartDate()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 142
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 143
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 144
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    .line 145
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 148
    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 149
    invoke-virtual {v6, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 150
    invoke-virtual {v6, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 151
    invoke-virtual {v6, v5, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 152
    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    .line 153
    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 156
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v1}, Lcom/squareup/timessquare/CalendarPickerView;->reveseOrder()V

    .line 157
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/squareup/timessquare/CalendarPickerView;->init(Ljava/util/Date;Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    move-result-object v1

    sget-object v2, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->SINGLE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    .line 158
    invoke-virtual {v1, v2}, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->inMode(Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    move-result-object v1

    .line 159
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 160
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v1, v2}, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->withSelectedDate(Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$2;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$2;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/timessquare/CalendarPickerView;->setOnDateSelectedListener(Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;)V

    .line 186
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->updateCalendar()V

    return-void
.end method

.method private updateCalendar()V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->updater:Ljava/lang/Thread;

    .line 239
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateReportText(Ljava/util/Date;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 129
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v2, v3, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonthSession(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 132
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->txtSession:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mbIsHhmm:Z

    iget-boolean v13, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mbIsKilometers:Z

    iget-boolean v15, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mbCustom1:Z

    iget-boolean v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mbCustom2:Z

    iget-boolean v7, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mbCustom3:Z

    iget v8, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->reportDensity:I

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v8, v9, :cond_0

    const/16 v19, 0x1

    goto :goto_0

    :cond_0
    const/16 v19, 0x0

    :goto_0
    if-nez v8, :cond_1

    const/16 v20, 0x1

    :goto_1
    move/from16 v17, v7

    goto :goto_2

    :cond_1
    const/16 v20, 0x0

    goto :goto_1

    :goto_2
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/16 v18, 0x1

    move/from16 v16, v3

    invoke-static/range {v4 .. v20}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getReport(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZZZZZZZZZZZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 134
    :cond_2
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->txtSession:Landroid/widget/TextView;

    const v3, 0x7f120266

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 136
    :goto_3
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->txtDate:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mDateFormatDay:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    .line 309
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_6

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/MinistryAssistant;->hasPermissionToTrack(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 275
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 276
    const-string p2, "item_id"

    const-string v0, "EditReport_daily_calendar"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string p2, "item_name"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string p2, "content_type"

    const-string v0, "action"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->getTracker()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p2

    const-string v0, "select_content"

    invoke-virtual {p2, v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 282
    :cond_1
    iget-wide p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->miEditSession:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 284
    new-instance p1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->miEditSession:J

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 285
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p2

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p2, v2, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonthSession(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 287
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p2

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->removeServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 291
    :cond_2
    const-string p1, "Session"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 292
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->hasComment()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 293
    :cond_3
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p3, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 296
    :cond_4
    iget-wide p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->miEditSession:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_5

    .line 297
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    new-instance p2, Ljava/util/Date;

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->miEditSession:J

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    const-string p3, ""

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/squareup/timessquare/CalendarPickerView;->setTextOnDate(Ljava/util/Date;Ljava/lang/String;Z)Z

    .line 298
    new-instance p1, Ljava/util/Date;

    iget-wide p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->miEditSession:J

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->updateReportText(Ljava/util/Date;)V

    goto :goto_0

    .line 300
    :cond_5
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->updateReportText(Ljava/util/Date;)V

    .line 302
    :goto_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->updateCalendar()V

    .line 303
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    invoke-interface {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;->onReportUpdated()V

    .line 304
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    :cond_6
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 245
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 246
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->realm:Lio/realm/Realm;

    .line 247
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    if-eqz v0, :cond_0

    .line 248
    check-cast p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    return-void

    .line 250
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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v0, 0x7f0c0127

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-wide/16 v2, -0x1

    .line 73
    iput-wide v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->miEditSession:J

    if-eqz p3, :cond_0

    .line 75
    const-string p2, "EditSession"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->miEditSession:J

    :cond_0
    const p2, 0x7f090115

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/squareup/timessquare/CalendarPickerView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    const p2, 0x7f090567

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->txtSession:Landroid/widget/TextView;

    const p2, 0x7f090576

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->txtDate:Landroid/widget/TextView;

    const p2, 0x7f0901e3

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 83
    const-string v0, "inputMode"

    const-string v2, "hhmm"

    invoke-interface {p3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mbIsHhmm:Z

    .line 84
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom1()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mbCustom1:Z

    .line 86
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom2()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mbCustom2:Z

    .line 87
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom3()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mbCustom3:Z

    .line 88
    const-string v2, "mileageKM"

    const/4 v3, 0x1

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->mbIsKilometers:Z

    .line 89
    const-string v2, "ReportDensity"

    invoke-interface {p3, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->reportDensity:I

    .line 91
    const-string v2, "checkFirstDayOfWeek"

    invoke-interface {p3, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-interface {p3, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v4, v3}, Lcom/squareup/timessquare/CalendarPickerView;->setFirstDayOfWeek(I)V

    goto :goto_1

    .line 94
    :cond_2
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/squareup/timessquare/CalendarPickerView;->setFirstDayOfWeek(I)V

    .line 95
    :goto_1
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->initCalendar()V

    .line 97
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    invoke-interface {p3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;->onReportUpdated()V

    .line 99
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->updateReportText(Ljava/util/Date;)V

    .line 101
    new-instance p3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$1;

    invoke-direct {p3, p0, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 256
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;

    .line 258
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 263
    const-string v0, "EditSession"

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->miEditSession:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 264
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
