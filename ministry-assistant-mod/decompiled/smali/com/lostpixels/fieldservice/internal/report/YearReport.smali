.class public Lcom/lostpixels/fieldservice/internal/report/YearReport;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;


# instance fields
.field public infirmPioneer:Z

.field mLastModified:Ljava/util/Date;

.field public mePioneer:I

.field public miFirstPioneerMonth:I

.field public miYear:I

.field mlstMonths:Lio/realm/RealmList;


# direct methods
.method static bridge synthetic -$$Nest$mcheckMonth(Lcom/lostpixels/fieldservice/internal/report/YearReport;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->checkMonth(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mLastModified(Ljava/util/Date;)V

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$infirmPioneer(Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .line 50
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mLastModified(Ljava/util/Date;)V

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mePioneer(I)V

    const/16 v1, 0x9

    .line 52
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$miFirstPioneerMonth(I)V

    .line 55
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 56
    new-instance v1, Lio/realm/RealmList;

    invoke-direct {v1}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mlstMonths(Lio/realm/RealmList;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/16 v2, 0xc

    if-gt v1, v2, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    mul-int/lit8 v4, p1, 0x64

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;-><init>(I)V

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$miYear(I)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$infirmPioneer(Z)V

    return-void
.end method

.method private checkMonth(I)V
    .locals 5

    if-lez p1, :cond_0

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    .line 136
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Incorrect month %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private getPioneerType(Ljava/lang/String;)I
    .locals 1

    .line 86
    const-string v0, "eNotPioneer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 88
    :cond_0
    const-string v0, "eRegular"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 90
    :cond_1
    const-string v0, "eSpecial120"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 92
    :cond_2
    const-string v0, "eSpecial130"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 94
    :cond_3
    const-string v0, "eCircuitOverseer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 96
    :cond_4
    const-string v0, "eMissionary120"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x5

    return p1

    .line 98
    :cond_5
    const-string v0, "eMissionary130"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x6

    return p1

    .line 101
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unknown state"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 1

    .line 109
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/YearReport$2;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport$2;-><init>(Lcom/lostpixels/fieldservice/internal/report/YearReport;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 117
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 109
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public firstPioneerMonth()I
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miFirstPioneerMonth()I

    move-result v0

    return v0
.end method

.method public getMaxNumberOfStudies()I
    .locals 4

    .line 366
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    .line 367
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v3

    .line 368
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result v2

    add-int/2addr v3, v2

    .line 367
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v0

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    return-object p1
.end method

.method public getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 2

    .line 281
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 282
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 283
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    return-object p1
.end method

.method public getMonthGoal(IZ)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 1

    if-eqz p2, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object p2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->updateGoalDate()V

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object p2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    return-object p1
.end method

.method public getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 2

    .line 380
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 381
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x2

    if-eqz p2, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->updateGoalDate()V

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    return-object p1
.end method

.method public getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;
    .locals 1

    .line 389
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v0

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    return-object p1
.end method

.method public getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;
    .locals 2

    .line 394
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 395
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 396
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    return-object p1
.end method

.method public getServiceYearCappedTime(ZZZZZZ)Lcom/lostpixels/fieldservice/internal/report/Time;
    .locals 6

    .line 315
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>()V

    .line 316
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    .line 317
    new-instance v3, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v3}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>()V

    .line 318
    new-instance v4, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>()V

    .line 319
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 320
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 323
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    goto :goto_1

    .line 325
    :cond_0
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    :cond_1
    :goto_1
    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    .line 329
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    goto :goto_2

    .line 331
    :cond_2
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    :cond_3
    :goto_2
    if-eqz p5, :cond_5

    if-eqz p6, :cond_4

    .line 335
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    goto :goto_3

    .line 337
    :cond_4
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 340
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miYear()I

    move-result v2

    invoke-static {v3, v2}, Lcom/lostpixels/fieldservice/utils/DateUtils;->areHoursCapped(Lcom/lostpixels/fieldservice/internal/report/Time;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v3

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miYear()I

    move-result v4

    invoke-static {v4}, Lcom/lostpixels/fieldservice/utils/DateUtils;->getCapHours(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    move-object v3, v2

    :goto_4
    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method public getServiceYearReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 8

    .line 288
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 289
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>()V

    .line 290
    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v2}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>()V

    .line 291
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    .line 292
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 293
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 294
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v5

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMagazines(I)V

    .line 295
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v5

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setBrochures(I)V

    .line 296
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v5

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setBooks(I)V

    .line 297
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v5

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setTracts(I)V

    .line 298
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v5

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDvds(I)V

    .line 299
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v5

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setRetVisits(I)V

    .line 300
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v5

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setAddedStudies(I)V

    .line 301
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result v5

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setStudyPersons(I)V

    .line 302
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v5

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setVideoShowings(I)V

    const/4 v5, 0x1

    .line 303
    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMileage(Z)F

    move-result v6

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMileage(Z)F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v0, v6, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMileage(FZ)V

    .line 304
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v5

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setCustom1(I)V

    .line 305
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v5

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setCustom2(I)V

    .line 306
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v5

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v4

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setCustom3(I)V

    goto/16 :goto_0

    .line 308
    :cond_0
    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 309
    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setRbcHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    return-object v0
.end method

.method public getServiceYearTotalTime(ZZZ)Lcom/lostpixels/fieldservice/internal/report/Time;
    .locals 4

    .line 347
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>()V

    .line 348
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    .line 349
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 350
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    if-eqz p1, :cond_1

    .line 352
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    :cond_1
    if-eqz p2, :cond_2

    .line 355
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    :cond_2
    if-eqz p3, :cond_0

    .line 358
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miYear()I

    move-result v0

    return v0
.end method

.method public hasAnyMonthGoals()Z
    .locals 4

    .line 564
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    .line 565
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isAuxiliary(Ljava/util/Date;)Z
    .locals 2

    .line 249
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 250
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 251
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isAuxiliry()Z

    move-result p1

    return p1
.end method

.method public isAuxiliary15(Ljava/util/Date;)Z
    .locals 2

    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 256
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 257
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isAuxiliry15()Z

    move-result p1

    return p1
.end method

.method public isAuxiliary30(Ljava/util/Date;)Z
    .locals 2

    .line 261
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 262
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 263
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isAuxiliry30()Z

    move-result p1

    return p1
.end method

.method public isBethelite(Ljava/util/Date;)Z
    .locals 2

    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 268
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 269
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result p1

    return p1
.end method

.method public isCircuitOversser()Z
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInfirmPioneer()Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$infirmPioneer()Z

    move-result v0

    return v0
.end method

.method public isMissionary()Z
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isMissionary100()Z
    .locals 2

    .line 225
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMissionary90()Z
    .locals 2

    .line 221
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPioneer()Z
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPioneer(Ljava/util/Date;)Z
    .locals 2

    .line 194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 195
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x2

    .line 196
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result p1

    .line 197
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miFirstPioneerMonth()I

    move-result v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    if-lt p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPublisher()Z
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSpecialPioneer()Z
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSpecialPioneer100()Z
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSpecialPioneer90()Z
    .locals 2

    .line 213
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSpecialPioneerOrMissionary()Z
    .locals 2

    .line 201
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isYearEmpty()Z
    .locals 2

    .line 414
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    .line 415
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isMonthEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadFromDataStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V
    .locals 2

    .line 427
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mePioneer(I)V

    .line 428
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$miFirstPioneerMonth(I)V

    .line 429
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$miYear(I)V

    .line 430
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mLastModified(Ljava/util/Date;)V

    const/4 v0, 0x0

    .line 432
    :goto_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->loadFromDataStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    return-void

    .line 436
    :goto_1
    const-string p2, "YearReport.loadFromDataStream 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    throw p1
.end method

.method public loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V
    .locals 5

    .line 467
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 469
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    .line 470
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 473
    const-string v1, "Month"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0xc

    if-eqz v1, :cond_2

    .line 475
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 477
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;-><init>()V

    .line 478
    invoke-virtual {v0, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V

    if-ge v2, v3, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v2, v0}, Lio/realm/RealmList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 482
    :cond_2
    const-string v1, "IsPI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 483
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mePioneer(I)V

    goto :goto_0

    .line 484
    :cond_3
    const-string v1, "Infirm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 485
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$infirmPioneer(Z)V

    goto :goto_0

    .line 486
    :cond_4
    const-string v1, "PI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 487
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getPioneerType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mePioneer(I)V

    goto :goto_0

    .line 488
    :cond_5
    const-string v1, "PII"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 490
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mePioneer(I)V

    goto :goto_0

    .line 491
    :cond_6
    const-string v1, "FirstPI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 492
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$miFirstPioneerMonth(I)V

    .line 493
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miFirstPioneerMonth()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miFirstPioneerMonth()I

    move-result v0

    if-le v0, v3, :cond_0

    :cond_7
    const/16 v0, 0x9

    .line 494
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$miFirstPioneerMonth(I)V

    goto/16 :goto_0

    .line 495
    :cond_8
    const-string v1, "Year"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 496
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$miYear(I)V

    goto/16 :goto_0

    .line 497
    :cond_9
    const-string v1, "Modified"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 498
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mLastModified(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 500
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized field \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const/4 p1, 0x3

    if-gt p2, p1, :cond_d

    .line 508
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x5

    const/4 v0, 0x1

    .line 509
    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    .line 510
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    const/4 v3, 0x4

    if-ge v2, v3, :cond_c

    .line 512
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miYear()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_3

    .line 514
    :cond_c
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miYear()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 515
    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v3

    sub-int/2addr v3, v0

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 516
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->updateDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_d
    return-void

    .line 521
    :goto_4
    const-string p2, "YearReport.loadFromFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    throw p1
.end method

.method merge(Lcom/lostpixels/fieldservice/internal/report/YearReport;Ljava/util/Date;)Z
    .locals 3

    .line 527
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miYear()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    .line 529
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mLastModified()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mLastModified()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mLastModified()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mLastModified()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mLastModified()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mLastModified()Ljava/util/Date;

    move-result-object v1

    .line 531
    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 532
    :cond_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mePioneer(I)V

    .line 533
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miFirstPioneerMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$miFirstPioneerMonth(I)V

    .line 534
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miFirstPioneerMonth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miFirstPioneerMonth()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_3

    :cond_2
    const/16 v0, 0x9

    .line 535
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$miFirstPioneerMonth(I)V

    .line 538
    :cond_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mLastModified()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mLastModified(Ljava/util/Date;)V

    .line 539
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$infirmPioneer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$infirmPioneer(Z)V

    .line 543
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 544
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->merge(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Ljava/util/Date;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    return v2
.end method

.method public realmGet$infirmPioneer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport;->infirmPioneer:Z

    return v0
.end method

.method public realmGet$mLastModified()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport;->mLastModified:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$mePioneer()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport;->mePioneer:I

    return v0
.end method

.method public realmGet$miFirstPioneerMonth()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport;->miFirstPioneerMonth:I

    return v0
.end method

.method public realmGet$miYear()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport;->miYear:I

    return v0
.end method

.method public realmGet$mlstMonths()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport;->mlstMonths:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmSet$infirmPioneer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport;->infirmPioneer:Z

    return-void
.end method

.method public realmSet$mLastModified(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport;->mLastModified:Ljava/util/Date;

    return-void
.end method

.method public realmSet$mePioneer(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport;->mePioneer:I

    return-void
.end method

.method public realmSet$miFirstPioneerMonth(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport;->miFirstPioneerMonth:I

    return-void
.end method

.method public realmSet$miYear(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport;->miYear:I

    return-void
.end method

.method public realmSet$mlstMonths(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport;->mlstMonths:Lio/realm/RealmList;

    return-void
.end method

.method public removeServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 1

    .line 400
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/YearReport$9;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport$9;-><init>(Lcom/lostpixels/fieldservice/internal/report/YearReport;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 408
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 400
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3

    .line 443
    const-string v0, "Year"

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 444
    const-string v1, "Month"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    .line 447
    invoke-virtual {v2, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 449
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 451
    const-string v1, "PII"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mePioneer()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 452
    const-string v1, "FirstPI"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miFirstPioneerMonth()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 453
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miYear()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 454
    const-string v0, "Infirm"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$infirmPioneer()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 455
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mLastModified()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 456
    const-string v0, "Modified"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mLastModified()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 457
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 459
    :goto_1
    const-string v0, "YearReport.saveToFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    throw p1
.end method

.method public setCircuitOversser(I)V
    .locals 1

    .line 233
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/YearReport$8;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport$8;-><init>(Lcom/lostpixels/fieldservice/internal/report/YearReport;I)V

    .line 241
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 233
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setInfirmPioneer(Z)V
    .locals 1

    .line 71
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/YearReport$1;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport$1;-><init>(Lcom/lostpixels/fieldservice/internal/report/YearReport;Z)V

    .line 77
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 71
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setMissionay(ZI)V
    .locals 1

    .line 166
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/YearReport$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/YearReport$6;-><init>(Lcom/lostpixels/fieldservice/internal/report/YearReport;ZI)V

    .line 174
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 166
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setMonthGoal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 1

    .line 121
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/YearReport$3;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport$3;-><init>(Lcom/lostpixels/fieldservice/internal/report/YearReport;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 129
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 121
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setPioneer(I)V
    .locals 1

    .line 182
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/YearReport$7;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport$7;-><init>(Lcom/lostpixels/fieldservice/internal/report/YearReport;I)V

    .line 190
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 182
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setPublisher()V
    .locals 2

    .line 144
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/YearReport$4;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport$4;-><init>(Lcom/lostpixels/fieldservice/internal/report/YearReport;)V

    .line 150
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v1

    .line 144
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setSpecial(ZI)V
    .locals 1

    .line 154
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/YearReport$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/YearReport$5;-><init>(Lcom/lostpixels/fieldservice/internal/report/YearReport;ZI)V

    .line 162
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 154
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method updateToNewVersion(I)V
    .locals 4

    .line 553
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x8

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    .line 554
    rem-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0x1

    .line 556
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$miYear()I

    move-result v3

    invoke-static {v3, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceYear2Year(II)I

    move-result v3

    .line 557
    invoke-virtual {v2, p1, v3, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->updateToNewVersion(III)V

    goto :goto_0

    :cond_0
    return-void
.end method
