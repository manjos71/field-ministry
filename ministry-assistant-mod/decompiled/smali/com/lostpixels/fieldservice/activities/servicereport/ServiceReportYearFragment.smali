.class public Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;
    }
.end annotation


# instance fields
.field private bCustom1Caps:Z

.field private bCustom1IsTime:Z

.field private bCustom2Caps:Z

.field private bCustom2IsTime:Z

.field private bCustom3Caps:Z

.field private bCustom3IsTime:Z

.field private bShowCustom1:Z

.field private bShowCustom2:Z

.field private bShowCustom3:Z

.field private isCompactFragment:Z

.field private listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;

.field private mCurrentYear:Ljava/util/Date;

.field private mLastTapTime:J

.field private mLayoutMileageYear:Landroid/view/View;

.field private final mMonthFormat:Ljava/text/SimpleDateFormat;

.field private final mMonthYearFormat:Ljava/text/SimpleDateFormat;

.field private mView:Landroid/view/View;

.field private mbIsHhmm:Z

.field private mbIsKilometers:Z

.field private meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

.field private meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

.field private mlblCustom1:Landroid/widget/TextView;

.field private mlblCustom1Time:Landroid/widget/TextView;

.field private mlblCustom2:Landroid/widget/TextView;

.field private mlblCustom2Time:Landroid/widget/TextView;

.field private mlblCustom3:Landroid/widget/TextView;

.field private mlblCustom3Time:Landroid/widget/TextView;

.field private mlblHoursYear:Landroid/widget/TextView;

.field private mlblMileageYear:Landroid/widget/TextView;

.field private mlblStudies2Year:Landroid/widget/TextView;

.field private mlblStudiesYear:Landroid/widget/TextView;

.field private mlblTimeRange:Landroid/widget/TextView;

.field private mlblTotalHoursYear:Landroid/widget/TextView;

.field private mtxtAuxiliaryMonths:Landroid/widget/TextView;

.field private mtxtBooksYear:Landroid/widget/TextView;

.field private mtxtBrochuresYear:Landroid/widget/TextView;

.field private mtxtCurYear:Landroid/widget/TextView;

.field private mtxtCustom1:Landroid/widget/TextView;

.field private mtxtCustom1Time:Landroid/widget/TextView;

.field private mtxtCustom2:Landroid/widget/TextView;

.field private mtxtCustom2Time:Landroid/widget/TextView;

.field private mtxtCustom3:Landroid/widget/TextView;

.field private mtxtCustom3Time:Landroid/widget/TextView;

.field private mtxtDVDsYear:Landroid/widget/TextView;

.field private mtxtHourBalance:Landroid/widget/TextView;

.field private mtxtHoursLeft:Landroid/widget/TextView;

.field private mtxtHoursPerMonth:Landroid/widget/TextView;

.field private mtxtHoursYear:Landroid/widget/TextView;

.field private mtxtLabelRBCHoursMonth:Landroid/widget/TextView;

.field private mtxtMagazinesYear:Landroid/widget/TextView;

.field private mtxtMileageYear:Landroid/widget/TextView;

.field private mtxtNextYear:Landroid/widget/TextView;

.field private mtxtPrevYear:Landroid/widget/TextView;

.field private mtxtPublicationsYear:Landroid/widget/TextView;

.field private mtxtRBCHoursYear:Landroid/widget/TextView;

.field private mtxtReturnVisitsYear:Landroid/widget/TextView;

.field private mtxtSchools:Landroid/widget/TextView;

.field private mtxtSchoolsTime:Landroid/widget/TextView;

.field private mtxtStudies2Year:Landroid/widget/TextView;

.field private mtxtStudiesYear:Landroid/widget/TextView;

.field private mtxtTotalHoursYear:Landroid/widget/TextView;

.field private mtxtTractsYear:Landroid/widget/TextView;

.field private mtxtVideoShowingsYear:Landroid/widget/TextView;

.field private mviewAuxiliaryStatistics:Landroid/view/View;

.field private mviewYearReportStatistics:Landroid/view/View;

.field realm:Lio/realm/Realm;

.field private reportDensity:I

.field private txtApril:Landroid/widget/TextView;

.field private txtAugust:Landroid/widget/TextView;

.field private txtDecember:Landroid/widget/TextView;

.field private txtFebruary:Landroid/widget/TextView;

.field private txtJanuary:Landroid/widget/TextView;

.field private txtJuly:Landroid/widget/TextView;

.field private txtJune:Landroid/widget/TextView;

.field private txtMarch:Landroid/widget/TextView;

.field private txtMay:Landroid/widget/TextView;

.field private txtNovember:Landroid/widget/TextView;

.field private txtOctober:Landroid/widget/TextView;

.field private txtSeptember:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentYear(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;)Ljava/util/Date;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mCurrentYear:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentYear(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;Ljava/util/Date;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mCurrentYear:Ljava/util/Date;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTapTime(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mLastTapTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->switchFragment()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 129
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLLL"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mMonthFormat:Ljava/text/SimpleDateFormat;

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLLL yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mMonthYearFormat:Ljava/text/SimpleDateFormat;

    const-wide/16 v0, 0x0

    .line 126
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mLastTapTime:J

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->isCompactFragment:Z

    .line 130
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mCurrentYear:Ljava/util/Date;

    return-void
.end method

.method private getPioneerHours(I)I
    .locals 1

    const/16 v0, 0x7e7

    if-ge p1, v0, :cond_0

    const/16 p1, 0x46

    return p1

    :cond_0
    const/16 p1, 0x32

    return p1
.end method

.method private onlyMinistryHours(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)Z
    .locals 2

    .line 1102
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    .line 1103
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1104
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bShowCustom1:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom1IsTime:Z

    if-eqz v1, :cond_1

    .line 1105
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1107
    :cond_1
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bShowCustom2:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v1

    if-lez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom2IsTime:Z

    if-eqz v1, :cond_3

    .line 1108
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1110
    :cond_3
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bShowCustom3:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v1

    if-lez v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom3IsTime:Z

    if-eqz v1, :cond_5

    .line 1111
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1114
    :cond_5
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result p1

    if-ne v0, p1, :cond_9

    if-nez p2, :cond_9

    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bShowCustom1:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom1IsTime:Z

    if-nez p1, :cond_9

    :cond_6
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bShowCustom2:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom2IsTime:Z

    if-nez p1, :cond_9

    :cond_7
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bShowCustom3:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom3IsTime:Z

    if-nez p1, :cond_9

    :cond_8
    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method private relaunchFragment()V
    .locals 2

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 164
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 165
    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 166
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 167
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private shouldShowMinistryTime(ZLcom/lostpixels/fieldservice/internal/report/YearReport;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 392
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isCircuitOversser()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->hasAnyMonthGoals()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private switchFragment()Z
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mCurrentYear:Ljava/util/Date;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v0

    const/16 v1, 0x7e8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    .line 141
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->reportDensity:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 144
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->isCompactFragment:Z

    if-nez v1, :cond_1

    .line 145
    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->isCompactFragment:Z

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->relaunchFragment()V

    return v3

    :cond_1
    if-nez v0, :cond_2

    .line 150
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->isCompactFragment:Z

    if-eqz v0, :cond_2

    .line 151
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->isCompactFragment:Z

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->relaunchFragment()V

    return v3

    :cond_2
    return v2
.end method

.method private updateMinistryDone(ILcom/lostpixels/fieldservice/internal/report/YearReport;)V
    .locals 7

    if-nez p1, :cond_19

    .line 398
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x2

    .line 399
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    .line 400
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v3

    .line 401
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mCurrentYear:Ljava/util/Date;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 402
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result p1

    const/4 v4, 0x0

    if-le p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 404
    :goto_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtSeptember:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    if-nez p1, :cond_2

    if-le v2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, 0x1

    :goto_2
    invoke-direct {p0, v3, v5, v6}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateMinistryDone(Landroid/widget/TextView;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V

    .line 407
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtOctober:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    if-nez p1, :cond_4

    if-le v0, v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0, v3, v5, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateMinistryDone(Landroid/widget/TextView;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V

    .line 409
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtNovember:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    if-nez p1, :cond_6

    if-le v3, v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v3, 0x1

    :goto_6
    invoke-direct {p0, v0, v5, v3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateMinistryDone(Landroid/widget/TextView;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V

    .line 411
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtDecember:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    if-nez p1, :cond_8

    if-le v3, v1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v3, 0x1

    :goto_8
    invoke-direct {p0, v0, v5, v3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateMinistryDone(Landroid/widget/TextView;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V

    .line 413
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtJanuary:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    if-nez p1, :cond_a

    if-le v3, v1, :cond_9

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v3, 0x1

    :goto_a
    invoke-direct {p0, v0, v5, v3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateMinistryDone(Landroid/widget/TextView;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V

    .line 415
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtFebruary:Landroid/widget/TextView;

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    if-nez p1, :cond_c

    if-le v3, v1, :cond_b

    goto :goto_b

    :cond_b
    const/4 v3, 0x0

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v3, 0x1

    :goto_c
    invoke-direct {p0, v0, v5, v3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateMinistryDone(Landroid/widget/TextView;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V

    .line 417
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtMarch:Landroid/widget/TextView;

    const/4 v3, 0x7

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    if-nez p1, :cond_e

    if-le v3, v1, :cond_d

    goto :goto_d

    :cond_d
    const/4 v3, 0x0

    goto :goto_e

    :cond_e
    :goto_d
    const/4 v3, 0x1

    :goto_e
    invoke-direct {p0, v0, v5, v3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateMinistryDone(Landroid/widget/TextView;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V

    .line 419
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtApril:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    if-nez p1, :cond_10

    if-le v3, v1, :cond_f

    goto :goto_f

    :cond_f
    const/4 v3, 0x0

    goto :goto_10

    :cond_10
    :goto_f
    const/4 v3, 0x1

    :goto_10
    invoke-direct {p0, v0, v5, v3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateMinistryDone(Landroid/widget/TextView;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V

    .line 421
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtMay:Landroid/widget/TextView;

    const/16 v3, 0x9

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    if-nez p1, :cond_12

    if-le v3, v1, :cond_11

    goto :goto_11

    :cond_11
    const/4 v3, 0x0

    goto :goto_12

    :cond_12
    :goto_11
    const/4 v3, 0x1

    :goto_12
    invoke-direct {p0, v0, v5, v3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateMinistryDone(Landroid/widget/TextView;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V

    .line 423
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtJune:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    if-nez p1, :cond_14

    if-le v3, v1, :cond_13

    goto :goto_13

    :cond_13
    const/4 v3, 0x0

    goto :goto_14

    :cond_14
    :goto_13
    const/4 v3, 0x1

    :goto_14
    invoke-direct {p0, v0, v5, v3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateMinistryDone(Landroid/widget/TextView;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V

    .line 425
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtJuly:Landroid/widget/TextView;

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    if-nez p1, :cond_16

    if-le v3, v1, :cond_15

    goto :goto_15

    :cond_15
    const/4 v3, 0x0

    goto :goto_16

    :cond_16
    :goto_15
    const/4 v3, 0x1

    :goto_16
    invoke-direct {p0, v0, v5, v3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateMinistryDone(Landroid/widget/TextView;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V

    .line 427
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtAugust:Landroid/widget/TextView;

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p2

    if-nez p1, :cond_18

    if-le v3, v1, :cond_17

    goto :goto_17

    :cond_17
    const/4 v2, 0x0

    :cond_18
    :goto_17
    invoke-direct {p0, v0, p2, v2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateMinistryDone(Landroid/widget/TextView;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V

    :cond_19
    return-void
.end method

.method private updateMinistryDone(Landroid/widget/TextView;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V
    .locals 0

    if-eqz p1, :cond_2

    .line 434
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->hasDoneMinistry()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 435
    const-string p2, "\u2713"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 437
    const-string p2, "-"

    goto :goto_0

    :cond_1
    const-string p2, "\u2a09"

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public canDoubleTap()Z
    .locals 5

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mLastTapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getTimeToAdd(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;I)Lcom/lostpixels/fieldservice/internal/report/Time;
    .locals 3

    .line 1120
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>()V

    .line 1121
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>()V

    .line 1122
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1123
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1124
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom1IsTime:Z

    if-eqz v2, :cond_1

    .line 1125
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom1Caps:Z

    if-eqz v2, :cond_0

    .line 1126
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    goto :goto_0

    .line 1128
    :cond_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1130
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom2IsTime:Z

    if-eqz v2, :cond_3

    .line 1131
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom2Caps:Z

    if-eqz v2, :cond_2

    .line 1132
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    goto :goto_1

    .line 1134
    :cond_2
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1136
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom3IsTime:Z

    if-eqz v2, :cond_5

    .line 1137
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom3Caps:Z

    if-eqz v2, :cond_4

    .line 1138
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    goto :goto_2

    .line 1140
    :cond_4
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1143
    :cond_5
    :goto_2
    invoke-static {v0, p2}, Lcom/lostpixels/fieldservice/utils/DateUtils;->areHoursCapped(Lcom/lostpixels/fieldservice/internal/report/Time;I)Z

    move-result p1

    if-eqz p1, :cond_6

    return-object v0

    :cond_6
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v0

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2}, Lcom/lostpixels/fieldservice/utils/DateUtils;->getCapHours(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {p1, p2}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    return-object p1
.end method

.method public getYear()Ljava/util/Date;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mCurrentYear:Ljava/util/Date;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 352
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 353
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->realm:Lio/realm/Realm;

    .line 354
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;

    if-eqz v0, :cond_0

    .line 355
    check-cast p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;

    return-void

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet OnUpdateYearListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    const-string v1, "ReportDensity"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->reportDensity:I

    .line 174
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mCurrentYear:Ljava/util/Date;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v1

    const/16 v3, 0x7e8

    if-lt v1, v3, :cond_0

    .line 175
    iget v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->reportDensity:I

    if-nez v1, :cond_0

    const v1, 0x7f0c012f

    goto :goto_0

    :cond_0
    const v1, 0x7f0c012e

    .line 177
    :goto_0
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 178
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    .line 180
    const-string p2, "inputMode"

    const-string v1, "hhmm"

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    .line 181
    const-string p2, "mileageKM"

    const/4 v1, 0x1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsKilometers:Z

    .line 182
    const-string p2, "showVideo"

    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 183
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom1()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bShowCustom1:Z

    .line 185
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom2()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bShowCustom2:Z

    .line 186
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom3()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bShowCustom3:Z

    .line 187
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom1IsTime:Z

    .line 188
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom2IsTime:Z

    .line 189
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom3IsTime:Z

    .line 190
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1Caps()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom1Caps:Z

    .line 191
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2Caps()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom2Caps:Z

    .line 192
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3Caps()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom3Caps:Z

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "MyPrefsSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f090378

    .line 196
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 198
    iget v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->reportDensity:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :cond_2
    const-string v1, "whenShowRBC"

    const-string v3, "pioneer"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    sget-object v4, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eWhenPioneer:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    iput-object v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    .line 202
    const-string v5, "never"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "always"

    if-eqz v6, :cond_3

    .line 203
    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    goto :goto_2

    .line 204
    :cond_3
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    .line 207
    :cond_4
    :goto_2
    const-string v1, "whenShowMilage"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    iput-object v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    .line 209
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 210
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    goto :goto_3

    .line 211
    :cond_5
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 212
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    :cond_6
    :goto_3
    if-eqz p3, :cond_7

    .line 215
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mCurrentYear:Ljava/util/Date;

    const-string v1, "Year"

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Date;->setTime(J)V

    :cond_7
    const p3, 0x7f09005b

    .line 218
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtTotalHoursYear:Landroid/widget/TextView;

    const p3, 0x7f090029

    .line 219
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblTotalHoursYear:Landroid/widget/TextView;

    const p3, 0x7f090052

    .line 220
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursYear:Landroid/widget/TextView;

    const p3, 0x7f090026

    .line 221
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblHoursYear:Landroid/widget/TextView;

    const p3, 0x7f090034

    .line 222
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtRBCHoursYear:Landroid/widget/TextView;

    const p3, 0x7f090024

    .line 223
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtLabelRBCHoursMonth:Landroid/widget/TextView;

    const p3, 0x7f09002e

    .line 224
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtMagazinesYear:Landroid/widget/TextView;

    const p3, 0x7f090007

    .line 225
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtBrochuresYear:Landroid/widget/TextView;

    const p3, 0x7f090006

    .line 226
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtBooksYear:Landroid/widget/TextView;

    const p3, 0x7f09005c

    .line 227
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtTractsYear:Landroid/widget/TextView;

    const p3, 0x7f09005e

    .line 228
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtDVDsYear:Landroid/widget/TextView;

    const p3, 0x7f090033

    .line 230
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtPublicationsYear:Landroid/widget/TextView;

    const p3, 0x7f09005f

    .line 231
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtVideoShowingsYear:Landroid/widget/TextView;

    const p3, 0x7f090035

    .line 232
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtReturnVisitsYear:Landroid/widget/TextView;

    const p3, 0x7f09002f

    .line 235
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtMileageYear:Landroid/widget/TextView;

    const p3, 0x7f090330

    .line 236
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblMileageYear:Landroid/widget/TextView;

    const p3, 0x7f090196

    .line 237
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom1:Landroid/widget/TextView;

    const p3, 0x7f090317

    .line 238
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom1:Landroid/widget/TextView;

    const p3, 0x7f090199

    .line 239
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom2:Landroid/widget/TextView;

    const p3, 0x7f090318

    .line 240
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom2:Landroid/widget/TextView;

    const p3, 0x7f09019c

    .line 241
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom3:Landroid/widget/TextView;

    const p3, 0x7f090319

    .line 242
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom3:Landroid/widget/TextView;

    const p3, 0x7f09000b

    .line 243
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom1Time:Landroid/widget/TextView;

    const p3, 0x7f09001f

    .line 244
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom1Time:Landroid/widget/TextView;

    const p3, 0x7f09000d

    .line 245
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom2Time:Landroid/widget/TextView;

    const p3, 0x7f090020

    .line 246
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom2Time:Landroid/widget/TextView;

    const p3, 0x7f09000f

    .line 247
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom3Time:Landroid/widget/TextView;

    const p3, 0x7f090021

    .line 248
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom3Time:Landroid/widget/TextView;

    const p3, 0x7f090055

    .line 250
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtStudiesYear:Landroid/widget/TextView;

    const p3, 0x7f090027

    .line 251
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblStudiesYear:Landroid/widget/TextView;

    const p3, 0x7f090056

    .line 252
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtStudies2Year:Landroid/widget/TextView;

    const p3, 0x7f090028

    .line 253
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblStudies2Year:Landroid/widget/TextView;

    const p3, 0x7f090003

    .line 254
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mviewAuxiliaryStatistics:Landroid/view/View;

    const p3, 0x7f090519

    .line 255
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtAuxiliaryMonths:Landroid/widget/TextView;

    const p3, 0x7f090061

    .line 256
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mviewYearReportStatistics:Landroid/view/View;

    const p3, 0x7f090522

    .line 257
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursLeft:Landroid/widget/TextView;

    const p3, 0x7f090523

    .line 258
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursPerMonth:Landroid/widget/TextView;

    const p3, 0x7f090521

    .line 259
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHourBalance:Landroid/widget/TextView;

    const p3, 0x7f09052c

    .line 260
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtPrevYear:Landroid/widget/TextView;

    const p3, 0x7f09051e

    .line 261
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCurYear:Landroid/widget/TextView;

    const p3, 0x7f090529

    .line 262
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtNextYear:Landroid/widget/TextView;

    const p3, 0x7f090381

    .line 263
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mLayoutMileageYear:Landroid/view/View;

    const p3, 0x7f090632

    .line 264
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtSchools:Landroid/widget/TextView;

    const p3, 0x7f090631

    .line 265
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtSchoolsTime:Landroid/widget/TextView;

    const p3, 0x7f09034f

    .line 266
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblTimeRange:Landroid/widget/TextView;

    const p3, 0x7f090391

    .line 267
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_8

    if-eqz p2, :cond_8

    .line 268
    iget p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->reportDensity:I

    if-eqz p2, :cond_8

    .line 269
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_8
    iget p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->reportDensity:I

    if-nez p2, :cond_9

    const p2, 0x7f090634

    .line 272
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtSeptember:Landroid/widget/TextView;

    const p2, 0x7f090622

    .line 273
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtOctober:Landroid/widget/TextView;

    const p2, 0x7f09061e

    .line 274
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtNovember:Landroid/widget/TextView;

    const p2, 0x7f0905f7

    .line 275
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtDecember:Landroid/widget/TextView;

    const p2, 0x7f090604

    .line 276
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtJanuary:Landroid/widget/TextView;

    const p2, 0x7f0905fc

    .line 277
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtFebruary:Landroid/widget/TextView;

    const p2, 0x7f090613

    .line 278
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtMarch:Landroid/widget/TextView;

    const p2, 0x7f0905e4

    .line 279
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtApril:Landroid/widget/TextView;

    const p2, 0x7f090614

    .line 280
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtMay:Landroid/widget/TextView;

    const p2, 0x7f090606

    .line 281
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtJune:Landroid/widget/TextView;

    const p2, 0x7f090605

    .line 282
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtJuly:Landroid/widget/TextView;

    const p2, 0x7f0905e6

    .line 283
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->txtAugust:Landroid/widget/TextView;

    :cond_9
    const p2, 0x7f090280

    .line 286
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p3, 0x7f09027f

    .line 287
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 289
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtNextYear:Landroid/widget/TextView;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$2;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    new-instance p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$3;

    invoke-direct {p2, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$3;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtPrevYear:Landroid/widget/TextView;

    new-instance p3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$4;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$4;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateYearReport()V

    .line 346
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mCurrentYear:Ljava/util/Date;

    invoke-interface {p2, p3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;->onYearUpdated(Ljava/util/Date;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 363
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;

    .line 365
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mCurrentYear:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-string v2, "Year"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 372
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setYear(Ljava/util/Date;)V
    .locals 1

    .line 380
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mCurrentYear:Ljava/util/Date;

    .line 381
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->switchFragment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateYearReport()V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;

    if-eqz v0, :cond_1

    .line 384
    invoke-interface {v0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;->onYearUpdated(Ljava/util/Date;)V

    :cond_1
    return-void
.end method

.method public updateYearReport()V
    .locals 28

    move-object/from16 v0, p0

    .line 444
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->realm:Lio/realm/Realm;

    if-nez v1, :cond_0

    goto/16 :goto_39

    .line 446
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 447
    const-string v2, "ReportDensity"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->reportDensity:I

    .line 448
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mCurrentYear:Ljava/util/Date;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v1

    const/16 v2, 0x7e8

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1

    .line 449
    iget v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->reportDensity:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 451
    :goto_0
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mCurrentYear:Ljava/util/Date;

    .line 452
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->realm:Lio/realm/Realm;

    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v5

    .line 453
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v2}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    invoke-virtual {v5, v6, v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v8

    .line 454
    invoke-direct {v0, v1, v8}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->shouldShowMinistryTime(ZLcom/lostpixels/fieldservice/internal/report/YearReport;)Z

    move-result v1

    .line 455
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getServiceYearReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    .line 456
    iget-boolean v9, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom1IsTime:Z

    iget-boolean v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom1Caps:Z

    iget-boolean v11, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom2IsTime:Z

    iget-boolean v12, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom2Caps:Z

    iget-boolean v13, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom3IsTime:Z

    iget-boolean v14, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom3Caps:Z

    invoke-virtual/range {v8 .. v14}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getServiceYearCappedTime(ZZZZZZ)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    .line 457
    iget-boolean v9, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom1IsTime:Z

    iget-boolean v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom2IsTime:Z

    iget-boolean v11, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom3IsTime:Z

    invoke-virtual {v8, v9, v10, v11}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getServiceYearTotalTime(ZZZ)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v9

    .line 458
    new-instance v10, Ljava/text/DecimalFormat;

    const-string v11, "###.#"

    invoke-direct {v10, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 461
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 462
    invoke-virtual {v12, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 463
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 466
    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/utils/DateUtils;->dateToYear(Ljava/util/Date;)I

    move-result v2

    .line 467
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-static {v12}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v12

    invoke-static {v12}, Lcom/lostpixels/fieldservice/utils/DateUtils;->dateToYear(Ljava/util/Date;)I

    move-result v12

    .line 470
    new-instance v13, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    const/4 v14, 0x2

    .line 471
    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/2addr v15, v4

    invoke-static {v15}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0xd

    const/16 v18, 0x0

    if-ne v15, v4, :cond_2

    if-ne v2, v12, :cond_2

    .line 473
    invoke-static {v15}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v13

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_2
    if-eq v2, v12, :cond_3

    const/16 v15, 0xd

    :cond_3
    const/4 v14, 0x1

    const/16 v20, 0x0

    :goto_1
    if-ge v14, v15, :cond_4

    .line 479
    invoke-static {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->add(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    add-float v20, v20, v16

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    const/4 v14, 0x0

    :goto_2
    if-ge v4, v15, :cond_5

    .line 485
    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result v3

    add-int/2addr v14, v3

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_2

    .line 487
    :cond_5
    invoke-virtual {v13, v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setStudyPersons(I)V

    move/from16 v3, v20

    :goto_3
    const/4 v4, 0x1

    :goto_4
    const/16 v14, 0xc

    if-gt v4, v14, :cond_7

    .line 492
    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v15

    invoke-virtual {v8, v15}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    .line 501
    :goto_5
    iget v15, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->reportDensity:I

    invoke-direct {v0, v15, v8}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateMinistryDone(ILcom/lostpixels/fieldservice/internal/report/YearReport;)V

    .line 504
    iget-object v15, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtTotalHoursYear:Landroid/widget/TextView;

    const-string v14, ")"

    move/from16 v22, v1

    if-eqz v15, :cond_a

    if-eqz v22, :cond_8

    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    const/16 v1, 0x8

    .line 505
    :goto_6
    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    iget-boolean v15, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v9, v15, v15}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v9

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v15

    if-eq v9, v15, :cond_9

    .line 509
    const-string v9, " (^ "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget-boolean v9, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v7, v9, v9}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_9
    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtTotalHoursYear:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :cond_a
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursYear:Landroid/widget/TextView;

    const-string v7, " (\u00f8 "

    if-eqz v1, :cond_e

    if-eqz v22, :cond_b

    const/4 v9, 0x0

    goto :goto_7

    :cond_b
    const/16 v9, 0x8

    .line 518
    :goto_7
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblHoursYear:Landroid/widget/TextView;

    if-eqz v22, :cond_c

    const/4 v9, 0x0

    goto :goto_8

    :cond_c
    const/16 v9, 0x8

    :goto_8
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 520
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    .line 521
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    iget-boolean v15, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v1, v15, v15}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v1

    if-lez v1, :cond_d

    .line 524
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v24

    move/from16 v26, v4

    move-object v15, v5

    float-to-double v4, v3

    div-double v4, v24, v4

    invoke-direct {v1, v4, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-boolean v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v1, v4, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_d
    move/from16 v26, v4

    move-object v15, v5

    .line 528
    :goto_9
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursYear:Landroid/widget/TextView;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_e
    move/from16 v26, v4

    move-object v15, v5

    .line 534
    :goto_a
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtRBCHoursYear:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtLabelRBCHoursMonth:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    .line 536
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcMinutes()I

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    sget-object v4, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eWhenPioneer:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v1, v4, :cond_f

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    sget-object v4, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v1, v4, :cond_12

    .line 537
    :cond_10
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtRBCHoursYear:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtLabelRBCHoursMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    move-object v5, v11

    move v9, v12

    goto/16 :goto_d

    :cond_12
    if-eqz v26, :cond_13

    .line 542
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtLabelRBCHoursMonth:Landroid/widget/TextView;

    const v4, 0x7f1201df

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 544
    :cond_13
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtLabelRBCHoursMonth:Landroid/widget/TextView;

    const v4, 0x7f1204a3

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :goto_b
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtRBCHoursYear:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtLabelRBCHoursMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 549
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    iget-boolean v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v1, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v1

    if-lez v1, :cond_14

    .line 553
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v24

    move-object v5, v11

    move v9, v12

    float-to-double v11, v3

    div-double v11, v24, v11

    invoke-direct {v1, v11, v12}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-boolean v11, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v1, v11, v11}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_14
    move-object v5, v11

    move v9, v12

    .line 557
    :goto_c
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtRBCHoursYear:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    goto :goto_e

    :goto_d
    const/4 v1, 0x0

    .line 562
    :goto_e
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblTotalHoursYear:Landroid/widget/TextView;

    if-eqz v4, :cond_17

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblHoursYear:Landroid/widget/TextView;

    if-eqz v4, :cond_17

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursYear:Landroid/widget/TextView;

    if-eqz v4, :cond_17

    .line 563
    invoke-direct {v0, v6, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->onlyMinistryHours(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 564
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblTotalHoursYear:Landroid/widget/TextView;

    const v4, 0x7f120413

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 565
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblHoursYear:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 566
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursYear:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtTotalHoursYear:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursYear:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 570
    :cond_15
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblTotalHoursYear:Landroid/widget/TextView;

    const v4, 0x7f12058d

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 571
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblHoursYear:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 572
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursYear:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 575
    :goto_f
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblTotalHoursYear:Landroid/widget/TextView;

    if-eqz v22, :cond_16

    const/4 v4, 0x0

    goto :goto_10

    :cond_16
    const/16 v4, 0x8

    :goto_10
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 580
    :cond_17
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtPublicationsYear:Landroid/widget/TextView;

    if-eqz v1, :cond_19

    .line 581
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v1

    int-to-float v1, v1

    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v11, v1

    .line 583
    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v1, v1, v18

    if-lez v1, :cond_18

    .line 585
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_18
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtPublicationsYear:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    :cond_19
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtMagazinesYear:Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    .line 594
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v1

    int-to-float v1, v1

    .line 595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v11, v1

    .line 596
    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v1, v1, v18

    if-lez v1, :cond_1a

    .line 598
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_1a
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtMagazinesYear:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    :cond_1b
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtBrochuresYear:Landroid/widget/TextView;

    if-eqz v1, :cond_1d

    .line 607
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v1

    int-to-float v1, v1

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v11, v1

    .line 609
    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v1, v1, v18

    if-lez v1, :cond_1c

    .line 611
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_1c
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtBrochuresYear:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    :cond_1d
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtBooksYear:Landroid/widget/TextView;

    if-eqz v1, :cond_1f

    .line 619
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v1

    int-to-float v1, v1

    .line 620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v11, v1

    .line 621
    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v1, v1, v18

    if-lez v1, :cond_1e

    .line 623
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :cond_1e
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtBooksYear:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    :cond_1f
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtTractsYear:Landroid/widget/TextView;

    if-eqz v1, :cond_21

    .line 632
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v1

    int-to-float v1, v1

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v11, v1

    .line 634
    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v1, v1, v18

    if-lez v1, :cond_20

    .line 636
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :cond_20
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtTractsYear:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    :cond_21
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtVideoShowingsYear:Landroid/widget/TextView;

    if-eqz v1, :cond_23

    .line 645
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v1

    int-to-float v1, v1

    .line 646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v11, v1

    .line 647
    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v1, v1, v18

    if-lez v1, :cond_22

    .line 649
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_22
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtVideoShowingsYear:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    :cond_23
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtDVDsYear:Landroid/widget/TextView;

    if-eqz v1, :cond_25

    .line 658
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v1

    int-to-float v1, v1

    .line 659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v11, v1

    .line 660
    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v1, v1, v18

    if-lez v1, :cond_24

    .line 662
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    :cond_24
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtDVDsYear:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    :cond_25
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtReturnVisitsYear:Landroid/widget/TextView;

    if-eqz v1, :cond_27

    .line 671
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v1

    int-to-float v1, v1

    .line 672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v11, v1

    .line 673
    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v1, v1, v18

    if-lez v1, :cond_26

    .line 675
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    :cond_26
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtReturnVisitsYear:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    :cond_27
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtStudiesYear:Landroid/widget/TextView;

    if-eqz v1, :cond_29

    .line 683
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v1

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    .line 684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v11, v1

    .line 685
    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v1, v1, v18

    if-lez v1, :cond_28

    .line 687
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result v1

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v11

    add-int/2addr v1, v11

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    :cond_28
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtStudiesYear:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    :cond_29
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtStudies2Year:Landroid/widget/TextView;

    if-eqz v1, :cond_2a

    .line 695
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMaxNumberOfStudies()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    :cond_2a
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblStudies2Year:Landroid/widget/TextView;

    if-eqz v1, :cond_2b

    const v4, 0x7f120501

    .line 697
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    :cond_2b
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblStudiesYear:Landroid/widget/TextView;

    if-eqz v1, :cond_2c

    const v4, 0x7f1204ff

    .line 699
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    :cond_2c
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtMileageYear:Landroid/widget/TextView;

    if-eqz v1, :cond_32

    .line 703
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    sget-object v4, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eWhenPioneer:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v1, v4, :cond_2d

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneerOrMissionary()Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_2d
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    sget-object v4, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v1, v4, :cond_2f

    .line 704
    :cond_2e
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mLayoutMileageYear:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    .line 706
    :cond_2f
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mLayoutMileageYear:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    iget-boolean v11, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsKilometers:Z

    invoke-virtual {v6, v11}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMileage(Z)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x1

    const/16 v16, 0x0

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v11, v4, v16

    const-string v11, "%.1f"

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v6, v12}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMileage(Z)F

    move-result v4

    cmpl-float v4, v4, v18

    if-lez v4, :cond_30

    .line 710
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    iget-boolean v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsKilometers:Z

    invoke-virtual {v13, v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMileage(Z)F

    move-result v4

    div-float/2addr v4, v3

    float-to-double v11, v4

    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :cond_30
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtMileageYear:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblMileageYear:Landroid/widget/TextView;

    iget-boolean v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsKilometers:Z

    if-eqz v4, :cond_31

    const v4, 0x7f120426

    :goto_11
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_12

    :cond_31
    const v4, 0x7f120445

    goto :goto_11

    :goto_12
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_32
    :goto_13
    const/4 v1, 0x0

    const/4 v4, 0x1

    :goto_14
    const/16 v11, 0xc

    if-gt v4, v11, :cond_34

    .line 721
    invoke-virtual {v8, v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isAuxiliry()Z

    move-result v11

    if-eqz v11, :cond_33

    add-int/lit8 v1, v1, 0x1

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 725
    :cond_34
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mviewAuxiliaryStatistics:Landroid/view/View;

    if-eqz v4, :cond_36

    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtAuxiliaryMonths:Landroid/widget/TextView;

    if-eqz v11, :cond_36

    if-lez v1, :cond_35

    const/4 v11, 0x0

    .line 727
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 728
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtAuxiliaryMonths:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_35
    const/16 v1, 0x8

    .line 730
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 734
    :cond_36
    :goto_15
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom1:Landroid/widget/TextView;

    if-eqz v1, :cond_38

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom1:Landroid/widget/TextView;

    if-eqz v1, :cond_38

    .line 735
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v1

    int-to-float v1, v1

    .line 736
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v11, v1

    .line 737
    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v1, v1, v18

    if-lez v1, :cond_37

    .line 739
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    :cond_37
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom1:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom1:Landroid/widget/TextView;

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    :cond_38
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom2:Landroid/widget/TextView;

    if-eqz v1, :cond_3a

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom2:Landroid/widget/TextView;

    if-eqz v1, :cond_3a

    .line 749
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v1

    int-to-float v1, v1

    .line 750
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v11, v1

    .line 751
    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v1, v1, v18

    if-lez v1, :cond_39

    .line 753
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    :cond_39
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom2:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom2:Landroid/widget/TextView;

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    :cond_3a
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom3:Landroid/widget/TextView;

    if-eqz v1, :cond_3c

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom3:Landroid/widget/TextView;

    if-eqz v1, :cond_3c

    .line 763
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v1

    int-to-float v1, v1

    .line 764
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v11, v1

    .line 765
    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v1, v1, v18

    if-lez v1, :cond_3b

    .line 767
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    :cond_3b
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom3:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom3:Landroid/widget/TextView;

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    :cond_3c
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom1Time:Landroid/widget/TextView;

    if-eqz v1, :cond_3e

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom1Time:Landroid/widget/TextView;

    if-eqz v1, :cond_3e

    .line 777
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    .line 778
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    iget-boolean v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v1, v10, v10}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v1

    if-lez v1, :cond_3d

    .line 781
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v10

    move-object/from16 v22, v5

    move-object v12, v6

    float-to-double v5, v3

    div-double/2addr v10, v5

    invoke-direct {v1, v10, v11}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-boolean v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v1, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_3d
    move-object/from16 v22, v5

    move-object v12, v6

    .line 785
    :goto_16
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom1Time:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom1Time:Landroid/widget/TextView;

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_3e
    move-object/from16 v22, v5

    move-object v12, v6

    .line 790
    :goto_17
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom2Time:Landroid/widget/TextView;

    if-eqz v1, :cond_40

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom2Time:Landroid/widget/TextView;

    if-eqz v1, :cond_40

    .line 791
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    .line 792
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 793
    iget-boolean v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v1, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v1

    if-lez v1, :cond_3f

    .line 795
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v5

    float-to-double v10, v3

    div-double/2addr v5, v10

    invoke-direct {v1, v5, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-boolean v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v1, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    :cond_3f
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom2Time:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom2Time:Landroid/widget/TextView;

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    :cond_40
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom3Time:Landroid/widget/TextView;

    if-eqz v1, :cond_42

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom3Time:Landroid/widget/TextView;

    if-eqz v1, :cond_42

    .line 805
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    .line 806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    iget-boolean v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v1, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v1

    if-lez v1, :cond_41

    .line 809
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v5

    float-to-double v10, v3

    div-double/2addr v5, v10

    invoke-direct {v1, v5, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-boolean v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v1, v3, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :cond_41
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCustom3Time:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblCustom3Time:Landroid/widget/TextView;

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    :cond_42
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_46

    .line 818
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bShowCustom1:Z

    const v3, 0x7f090372

    const v4, 0x7f09000b

    const v5, 0x7f09001f

    if-nez v1, :cond_44

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v1

    if-lez v1, :cond_43

    goto :goto_18

    .line 826
    :cond_43
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 827
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 828
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    .line 819
    :cond_44
    :goto_18
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom1IsTime:Z

    if-eqz v1, :cond_45

    .line 820
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 821
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    :cond_45
    const/4 v11, 0x0

    .line 823
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 832
    :cond_46
    :goto_19
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_4a

    .line 833
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bShowCustom2:Z

    const v3, 0x7f090374

    const v4, 0x7f09000d

    const v5, 0x7f090020

    if-nez v1, :cond_48

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v1

    if-lez v1, :cond_47

    goto :goto_1a

    .line 841
    :cond_47
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 842
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 843
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1b

    .line 834
    :cond_48
    :goto_1a
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom2IsTime:Z

    if-eqz v1, :cond_49

    .line 835
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 836
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1b

    :cond_49
    const/4 v11, 0x0

    .line 838
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 847
    :cond_4a
    :goto_1b
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_4e

    .line 848
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bShowCustom3:Z

    const v3, 0x7f090376

    const v4, 0x7f09000f

    const v5, 0x7f090021

    if-nez v1, :cond_4c

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v1

    if-lez v1, :cond_4b

    goto :goto_1c

    .line 856
    :cond_4b
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 857
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 858
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d

    .line 849
    :cond_4c
    :goto_1c
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->bCustom3IsTime:Z

    if-eqz v1, :cond_4d

    .line 850
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 851
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d

    :cond_4d
    const/4 v11, 0x0

    .line 853
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 863
    :cond_4e
    :goto_1d
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtSchools:Landroid/widget/TextView;

    const/4 v3, 0x5

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtSchoolsTime:Landroid/widget/TextView;

    if-eqz v1, :cond_59

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 865
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v12, 0x1

    .line 867
    invoke-virtual {v5, v3, v12}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x1

    :goto_1e
    const/16 v11, 0xc

    if-gt v6, v11, :cond_59

    .line 869
    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v7

    .line 870
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getSchoolInfoItem()Lio/realm/RealmList;

    move-result-object v7

    if-eqz v7, :cond_57

    .line 871
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_57

    .line 872
    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v10

    sub-int/2addr v10, v12

    const/4 v11, 0x2

    invoke-virtual {v5, v11, v10}, Ljava/util/Calendar;->set(II)V

    .line 875
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 876
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_52

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 878
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_20
    if-ge v13, v12, :cond_50

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v24

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v24, v5

    const/4 v5, 0x0

    .line 879
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$msName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v27, v6

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$msName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v5

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v6

    if-ne v5, v6, :cond_4f

    .line 881
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    :cond_4f
    move-object/from16 v5, v24

    move/from16 v6, v27

    const/4 v3, 0x5

    goto :goto_20

    :cond_50
    move-object/from16 v24, v5

    move/from16 v27, v6

    if-nez v15, :cond_51

    .line 886
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 887
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    move-object/from16 v5, v24

    move/from16 v6, v27

    const/4 v3, 0x5

    goto :goto_1f

    :cond_52
    move-object/from16 v24, v5

    move/from16 v27, v6

    .line 891
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_21
    if-ge v5, v3, :cond_56

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/util/ArrayList;

    .line 892
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const-string v11, "\n"

    if-lez v7, :cond_53

    .line 893
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    :cond_53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_54

    .line 895
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    const/4 v11, 0x0

    .line 896
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$msName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    const-string v7, " ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mMonthFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v12, 0x1

    if-le v7, v12, :cond_55

    .line 901
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 902
    const-string v7, "x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_55
    const/4 v11, 0x0

    .line 904
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_56
    :goto_22
    const/4 v11, 0x0

    goto :goto_23

    :cond_57
    move-object/from16 v24, v5

    move/from16 v27, v6

    goto :goto_22

    .line 908
    :goto_23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_58

    .line 909
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtSchools:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 910
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtSchoolsTime:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 912
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtSchools:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtSchoolsTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 915
    :cond_58
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtSchools:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 916
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtSchoolsTime:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_24
    add-int/lit8 v6, v27, 0x1

    move-object/from16 v5, v24

    const/4 v3, 0x5

    const/4 v12, 0x1

    goto/16 :goto_1e

    .line 922
    :cond_59
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isInfirmPioneer()Z

    move-result v1

    if-nez v1, :cond_77

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursLeft:Landroid/widget/TextView;

    if-eqz v1, :cond_77

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHourBalance:Landroid/widget/TextView;

    if-eqz v1, :cond_77

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursPerMonth:Landroid/widget/TextView;

    if-eqz v1, :cond_77

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mviewYearReportStatistics:Landroid/view/View;

    if-eqz v1, :cond_77

    if-eq v2, v9, :cond_5a

    const/16 v1, 0xd

    goto :goto_25

    :cond_5a
    move-object/from16 v5, v22

    const/4 v11, 0x2

    .line 928
    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v21, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v17

    move/from16 v1, v17

    .line 930
    :goto_25
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v3

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v3

    .line 931
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v4

    const/16 v5, 0x7e7

    if-ne v4, v5, :cond_5b

    const/4 v4, 0x7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 932
    :cond_5b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v6, 0x5

    const/4 v12, 0x1

    .line 933
    invoke-virtual {v4, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 934
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v6

    sub-int/2addr v6, v12

    const/4 v11, 0x2

    invoke-virtual {v4, v11, v6}, Ljava/util/Calendar;->set(II)V

    .line 935
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v6

    const/16 v7, 0x8

    if-gt v6, v7, :cond_5c

    move v6, v2

    goto :goto_26

    :cond_5c
    add-int/lit8 v6, v2, -0x1

    :goto_26
    invoke-virtual {v4, v12, v6}, Ljava/util/Calendar;->set(II)V

    .line 936
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mlblTimeRange:Landroid/widget/TextView;

    const v7, 0x7f12048f

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mMonthYearFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-array v10, v12, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x7e4

    .line 941
    const-string v6, "0"

    if-ne v2, v9, :cond_6a

    if-ge v3, v1, :cond_5d

    goto/16 :goto_2e

    :cond_5d
    if-ne v2, v9, :cond_69

    if-ne v3, v1, :cond_69

    .line 1011
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mviewYearReportStatistics:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    rsub-int/lit8 v5, v3, 0xd

    int-to-float v5, v5

    move v10, v3

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_27
    if-ge v10, v1, :cond_5f

    .line 1016
    invoke-static {v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v12

    .line 1017
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v13

    float-to-double v14, v11

    .line 1018
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v11

    invoke-virtual {v0, v13, v11}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->getTimeToAdd(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;I)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v22

    add-double v14, v14, v22

    double-to-float v11, v14

    .line 1020
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getSchoolInfoItem()Lio/realm/RealmList;

    move-result-object v12

    if-eqz v12, :cond_5e

    .line 1022
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_28
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 1023
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v13

    add-int/2addr v7, v13

    goto :goto_28

    :cond_5e
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    :cond_5f
    move v12, v3

    const/4 v10, 0x0

    :goto_29
    const/16 v13, 0xc

    if-gt v12, v13, :cond_62

    .line 1030
    invoke-static {v12}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v13

    .line 1031
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result v13

    if-eqz v13, :cond_61

    .line 1032
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v13

    if-ge v13, v4, :cond_60

    add-int/lit8 v7, v7, 0x5

    :cond_60
    add-int/lit8 v10, v10, 0x1

    :cond_61
    add-int/lit8 v12, v12, 0x1

    goto :goto_29

    :cond_62
    if-ne v2, v9, :cond_65

    .line 1043
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    .line 1044
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v1

    float-to-double v11, v11

    .line 1045
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->getTimeToAdd(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;I)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v13

    add-double/2addr v11, v13

    double-to-float v11, v11

    :goto_2a
    const/16 v13, 0xc

    if-gt v3, v13, :cond_64

    .line 1048
    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v1

    .line 1049
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result v2

    if-eqz v2, :cond_63

    const/4 v3, 0x1

    goto :goto_2b

    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_64
    const/4 v3, 0x0

    .line 1055
    :goto_2b
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getSchoolInfoItem()Lio/realm/RealmList;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 1057
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 1058
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v2

    add-int/2addr v7, v2

    goto :goto_2c

    :cond_65
    const/4 v3, 0x0

    .line 1063
    :cond_66
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->getPioneerHours(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v5

    int-to-float v2, v7

    sub-float/2addr v1, v2

    sub-float/2addr v1, v11

    cmpl-float v1, v1, v18

    if-lez v1, :cond_67

    .line 1064
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursLeft:Landroid/widget/TextView;

    new-instance v4, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v7

    invoke-direct {v0, v7}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->getPioneerHours(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v5

    sub-float/2addr v7, v2

    sub-float/2addr v7, v11

    float-to-double v11, v7

    invoke-direct {v4, v11, v12}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-boolean v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v4, v2, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 1067
    :cond_67
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    :goto_2d
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHourBalance:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_68

    .line 1071
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursPerMonth:Landroid/widget/TextView;

    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->getPioneerHours(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v10

    sub-float v4, v5, v4

    mul-float v3, v3, v4

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v4

    invoke-static {v4}, Lcom/lostpixels/fieldservice/utils/DateUtils;->getMaxBethelHours(I)I

    move-result v4

    mul-int v10, v10, v4

    int-to-float v4, v10

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-boolean v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v2, v3, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_38

    .line 1074
    :cond_68
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursPerMonth:Landroid/widget/TextView;

    const-string v2, "50"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_38

    .line 1076
    :cond_69
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v4

    if-ne v4, v5, :cond_78

    if-ne v5, v2, :cond_78

    if-le v3, v1, :cond_78

    .line 1077
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mviewYearReportStatistics:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1078
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursLeft:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->getPioneerHours(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHourBalance:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursPerMonth:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->getPioneerHours(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_38

    :cond_6a
    :goto_2e
    rsub-int/lit8 v5, v3, 0xd

    int-to-float v5, v5

    move v10, v3

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_2f
    if-ge v10, v1, :cond_6c

    .line 945
    invoke-static {v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v12

    .line 946
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v13

    float-to-double v14, v11

    .line 947
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v11

    invoke-virtual {v0, v13, v11}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->getTimeToAdd(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;I)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v22

    add-double v14, v14, v22

    double-to-float v11, v14

    .line 949
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getSchoolInfoItem()Lio/realm/RealmList;

    move-result-object v12

    if-eqz v12, :cond_6b

    .line 951
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_30
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 952
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v13

    add-int/2addr v7, v13

    goto :goto_30

    :cond_6b
    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    :cond_6c
    move v12, v3

    const/4 v10, 0x0

    const/16 v13, 0xc

    :goto_31
    if-gt v12, v13, :cond_6e

    .line 959
    invoke-static {v12}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v14

    invoke-virtual {v8, v14}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v14

    .line 960
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result v14

    if-eqz v14, :cond_6d

    .line 961
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v14

    if-ge v14, v4, :cond_6d

    add-int/lit8 v10, v10, 0x5

    :cond_6d
    add-int/lit8 v12, v12, 0x1

    goto :goto_31

    :cond_6e
    add-int/2addr v7, v10

    if-ne v2, v9, :cond_6f

    .line 970
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v12

    .line 971
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v13

    float-to-double v14, v11

    .line 972
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v4

    invoke-virtual {v0, v13, v4}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->getTimeToAdd(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;I)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v19

    add-double v14, v14, v19

    double-to-float v4, v14

    .line 974
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getSchoolInfoItem()Lio/realm/RealmList;

    move-result-object v12

    if-eqz v12, :cond_70

    .line 976
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_32
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_70

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 977
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v13

    add-int/2addr v7, v13

    goto :goto_32

    :cond_6f
    move v4, v11

    .line 982
    :cond_70
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v12

    invoke-direct {v0, v12}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->getPioneerHours(I)I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v5

    int-to-float v7, v7

    sub-float/2addr v12, v7

    sub-float/2addr v12, v4

    cmpl-float v12, v12, v18

    if-lez v12, :cond_71

    .line 983
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursLeft:Landroid/widget/TextView;

    new-instance v12, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v13

    invoke-direct {v0, v13}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->getPioneerHours(I)I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v5

    sub-float/2addr v13, v7

    sub-float/2addr v13, v4

    float-to-double v13, v13

    invoke-direct {v12, v13, v14}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-boolean v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v12, v4, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 986
    :cond_71
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursLeft:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_33
    if-eq v2, v9, :cond_72

    .line 989
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursPerMonth:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 990
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHourBalance:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 992
    :cond_72
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHoursPerMonth:Landroid/widget/TextView;

    new-instance v4, Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 993
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v6

    invoke-direct {v0, v6}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->getPioneerHours(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v5

    sub-float/2addr v6, v7

    sub-float/2addr v6, v11

    rsub-int/lit8 v5, v1, 0xd

    int-to-float v5, v5

    div-float/2addr v6, v5

    float-to-double v5, v6

    invoke-direct {v4, v5, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-boolean v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    invoke-static {v4, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 992
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    const/4 v4, 0x0

    :goto_34
    if-ge v2, v1, :cond_75

    .line 998
    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v5

    .line 999
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v5

    const/16 v6, 0x7e4

    if-ge v5, v6, :cond_74

    const/high16 v5, 0x40a00000    # 5.0f

    add-float/2addr v4, v5

    goto :goto_35

    :cond_73
    const/16 v6, 0x7e4

    :cond_74
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 1003
    :cond_75
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->getPioneerHours(I)I

    move-result v2

    sub-int/2addr v1, v3

    mul-int v2, v2, v1

    int-to-float v1, v2

    sub-float/2addr v1, v4

    sub-float/2addr v11, v1

    add-float/2addr v11, v7

    int-to-float v1, v10

    sub-float/2addr v11, v1

    .line 1004
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtHourBalance:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v3, v11, v18

    if-lez v3, :cond_76

    const-string v3, "+"

    goto :goto_36

    :cond_76
    const-string v3, ""

    :goto_36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/lostpixels/fieldservice/internal/report/Time;

    float-to-double v4, v11

    invoke-direct {v3, v4, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-boolean v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mbIsHhmm:Z

    .line 1005
    invoke-static {v3, v4, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1004
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    :goto_37
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mviewYearReportStatistics:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_38

    .line 1082
    :cond_77
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mviewYearReportStatistics:Landroid/view/View;

    if-eqz v1, :cond_78

    const/16 v5, 0x8

    .line 1083
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    :cond_78
    :goto_38
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1087
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mCurrentYear:Ljava/util/Date;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, -0x1

    const/4 v12, 0x1

    .line 1089
    invoke-virtual {v1, v12, v2}, Ljava/util/Calendar;->add(II)V

    .line 1090
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtPrevYear:Landroid/widget/TextView;

    if-eqz v2, :cond_79

    .line 1091
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    :cond_79
    invoke-virtual {v1, v12, v12}, Ljava/util/Calendar;->add(II)V

    .line 1093
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtCurYear:Landroid/widget/TextView;

    if-eqz v2, :cond_7a

    .line 1094
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    :cond_7a
    invoke-virtual {v1, v12, v12}, Ljava/util/Calendar;->add(II)V

    .line 1096
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->mtxtNextYear:Landroid/widget/TextView;

    if-eqz v2, :cond_7b

    .line 1097
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7b
    :goto_39
    return-void
.end method
