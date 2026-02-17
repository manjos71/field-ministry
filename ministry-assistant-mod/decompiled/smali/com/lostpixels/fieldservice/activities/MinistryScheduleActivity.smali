.class public Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$OnDuplicateButtonListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;
    }
.end annotation


# instance fields
.field private actionMode:Landroidx/appcompat/view/ActionMode;

.field private calendar:Lcom/squareup/timessquare/CalendarPickerView;

.field private chSyncReport:Landroid/widget/CheckBox;

.field private currentMonth:Ljava/lang/String;

.field final endDate:Ljava/util/Calendar;

.field private iCurrentServiceYear:I

.field iLastMonthToShow:I

.field private iPreviousServiceYear:I

.field private iSelectedServiceYear:I

.field private mbIsHhmm:Z

.field private mlTimeForLastTap:J

.field final startDate:Ljava/util/Calendar;

.field private txtCurrentServiceYear:Landroid/widget/TextView;

.field private txtMonthTotal:Landroid/widget/TextView;

.field private txtMonthTotalTime:Landroid/widget/TextView;

.field private txtTipCopy:Landroid/widget/TextView;

.field private txtYearTotalTime:Landroid/widget/TextView;

.field private workerClearDates:Ljava/lang/Thread;

.field private workerFillUpdate:Ljava/lang/Thread;

.field private workerMonthUpdate:Ljava/lang/Thread;

.field private workerYearUpdate:Ljava/lang/Thread;


# direct methods
.method static bridge synthetic -$$Nest$fgetactionMode(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchSyncReport(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->chSyncReport:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentMonth(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->currentMonth:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiCurrentServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iCurrentServiceYear:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetiPreviousServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iPreviousServiceYear:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetiSelectedServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iSelectedServiceYear:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->mbIsHhmm:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmlTimeForLastTap(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->mlTimeForLastTap:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettxtCurrentServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->txtCurrentServiceYear:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtMonthTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->txtMonthTotal:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtMonthTotalTime(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->txtMonthTotalTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtTipCopy(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->txtTipCopy:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtYearTotalTime(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->txtYearTotalTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetworkerClearDates(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Ljava/lang/Thread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->workerClearDates:Ljava/lang/Thread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetworkerFillUpdate(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Ljava/lang/Thread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->workerFillUpdate:Ljava/lang/Thread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetworkerMonthUpdate(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Ljava/lang/Thread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->workerMonthUpdate:Ljava/lang/Thread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetworkerYearUpdate(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Ljava/lang/Thread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->workerYearUpdate:Ljava/lang/Thread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputactionMode(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;Landroidx/appcompat/view/ActionMode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentMonth(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->currentMonth:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputiPreviousServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iPreviousServiceYear:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputiSelectedServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iSelectedServiceYear:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmlTimeForLastTap(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->mlTimeForLastTap:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearDates(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->clearDates(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdpToPx(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->dpToPx(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mfillCalendarFromYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->fillCalendarFromYear()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mformatToTime(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;D)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->formatToTime(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetEndOfServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)Ljava/util/Date;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->getEndOfServiceYear(I)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateMonthTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->updateMonthTotal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateYearTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->updateYearTotal()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0c00b5

    .line 100
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->startDate:Ljava/util/Calendar;

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->endDate:Ljava/util/Calendar;

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iLastMonthToShow:I

    .line 80
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iSelectedServiceYear:I

    .line 81
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iCurrentServiceYear:I

    .line 82
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iPreviousServiceYear:I

    const-wide/16 v0, 0x0

    .line 97
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->mlTimeForLastTap:J

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lio/realm/Realm;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lio/realm/Realm;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lio/realm/Realm;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lio/realm/Realm;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method private clearDates(Ljava/util/List;)V
    .locals 2

    .line 593
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$8;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->workerClearDates:Ljava/lang/Thread;

    .line 633
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private dpToPx(I)I
    .locals 2

    .line 281
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 282
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private fillCalendarFromYear()V
    .locals 2

    .line 547
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$7;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$7;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->workerFillUpdate:Ljava/lang/Thread;

    .line 589
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private formatToTime(D)Ljava/lang/String;
    .locals 3

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v1, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->mbIsHhmm:Z

    invoke-static {v1, p1, p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "h"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 792
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getEndOfServiceYear(I)Ljava/util/Date;
    .locals 3

    .line 775
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 776
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    const/16 v2, 0x8

    .line 777
    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 778
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    const/4 v1, 0x0

    .line 779
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 780
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 781
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 782
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 784
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method private initCalendar()V
    .locals 11

    .line 287
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->startDate:Ljava/util/Calendar;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iSelectedServiceYear:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 288
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->startDate:Ljava/util/Calendar;

    const/16 v1, 0x8

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 289
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->startDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 290
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->startDate:Ljava/util/Calendar;

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 291
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->startDate:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 292
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->startDate:Ljava/util/Calendar;

    const/16 v8, 0xd

    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 293
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->startDate:Ljava/util/Calendar;

    const/16 v9, 0xe

    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 295
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->endDate:Ljava/util/Calendar;

    iget v10, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iSelectedServiceYear:I

    add-int/2addr v10, v3

    invoke-virtual {v0, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 296
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 297
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 298
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 299
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 300
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 301
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 303
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->startDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/timessquare/CalendarPickerView;->init(Ljava/util/Date;Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    move-result-object v0

    sget-object v1, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->SINGLE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    .line 304
    invoke-virtual {v0, v1}, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->inMode(Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    move-result-object v0

    .line 305
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 306
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->startDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->withSelectedDate(Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 348
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V

    invoke-virtual {v0, v1}, Lcom/squareup/timessquare/CalendarPickerView;->setOnDateSelectedListener(Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;)V

    .line 409
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    .line 410
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 411
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 412
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iLastMonthToShow:I

    if-eq v0, v1, :cond_2

    .line 413
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iLastMonthToShow:I

    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iLastMonthToShow:I

    if-eq v0, v1, :cond_2

    .line 416
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iLastMonthToShow:I

    :cond_2
    return-void
.end method

.method private updateMonthTotal(I)V
    .locals 2

    .line 423
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->workerMonthUpdate:Ljava/lang/Thread;

    .line 508
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateYearTotal()V
    .locals 2

    .line 513
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->workerYearUpdate:Ljava/lang/Thread;

    .line 543
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 118
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f090573

    .line 120
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->txtMonthTotal:Landroid/widget/TextView;

    const v0, 0x7f090574

    .line 121
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->txtMonthTotalTime:Landroid/widget/TextView;

    const v0, 0x7f09058b

    .line 122
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->txtYearTotalTime:Landroid/widget/TextView;

    const v0, 0x7f090582

    .line 123
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->txtTipCopy:Landroid/widget/TextView;

    const v0, 0x7f090115

    .line 124
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/squareup/timessquare/CalendarPickerView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    const v0, 0x7f09014f

    .line 125
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->chSyncReport:Landroid/widget/CheckBox;

    const v0, 0x7f0905f1

    .line 126
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->txtCurrentServiceYear:Landroid/widget/TextView;

    .line 128
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f12017d

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 135
    const-string v0, "Year"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iSelectedServiceYear:I

    .line 136
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iPreviousServiceYear:I

    goto :goto_0

    .line 138
    :cond_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iSelectedServiceYear:I

    .line 139
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iPreviousServiceYear:I

    .line 141
    :goto_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iCurrentServiceYear:I

    .line 143
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 144
    const-string v0, "inputMode"

    const-string v3, "hhmm"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->mbIsHhmm:Z

    .line 146
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->chSyncReport:Landroid/widget/CheckBox;

    const-string v3, "syncReport"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 148
    const-string v0, "checkFirstDayOfWeek"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 149
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/squareup/timessquare/CalendarPickerView;->setFirstDayOfWeek(I)V

    goto :goto_2

    .line 151
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->setFirstDayOfWeek(I)V

    .line 152
    :goto_2
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->initCalendar()V

    .line 154
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->fillCalendarFromYear()V

    .line 156
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->chSyncReport:Landroid/widget/CheckBox;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result p1

    .line 193
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->hasYear(I)Z

    move-result p1

    if-nez p1, :cond_4

    const p1, 0x7f0c00f1

    .line 194
    const-string v0, "Schedule"

    invoke-static {p0, p1, v0}, Lcom/lostpixels/fieldservice/ui/OverlayHelper;->showOverLay(Landroid/content/Context;ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v0, 0x7f12001e

    .line 205
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f080188

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 105
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->workerMonthUpdate:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->workerYearUpdate:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->workerFillUpdate:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->workerClearDates:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    return-void
.end method

.method public onDuplicate(Ljava/util/Date;IZ)V
    .locals 8

    .line 638
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->calendar:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v0}, Lcom/squareup/timessquare/CalendarPickerView;->getSelectedDates()Ljava/util/List;

    move-result-object v3

    .line 639
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 764
    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;

    move-object v2, p0

    move-object v4, p1

    move v7, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;Ljava/util/List;Ljava/util/Date;IZI)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 769
    :goto_0
    iget-object p1, v2, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz p1, :cond_1

    .line 770
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 215
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0091

    .line 216
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f12010e

    .line 217
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->currentMonth:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x7f0902a4

    .line 219
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f12001e

    .line 220
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 221
    iget v3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iLastMonthToShow:I

    add-int/2addr v3, v4

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v3

    sub-int/2addr v3, v4

    .line 222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v7, 0x5

    .line 223
    invoke-virtual {v5, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 224
    invoke-virtual {v5, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 225
    iget v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iSelectedServiceYear:I

    invoke-virtual {v5, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 226
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    iget v8, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iSelectedServiceYear:I

    invoke-virtual {v1, v7, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5, v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v5

    if-eqz v5, :cond_1

    .line 229
    iget-boolean v5, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->mbIsHhmm:Z

    invoke-static {v1, v6, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 v1, 0x2002

    .line 231
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 232
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    const v1, 0x7f0900f5

    .line 233
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 234
    new-instance v4, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;

    invoke-direct {v4, p0, v2, v3, v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;Landroid/widget/EditText;ILandroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 277
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 199
    const-string v0, "Year"

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iSelectedServiceYear:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 200
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
