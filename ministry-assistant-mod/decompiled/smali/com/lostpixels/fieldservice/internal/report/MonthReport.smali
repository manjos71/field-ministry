.class public Lcom/lostpixels/fieldservice/internal/report/MonthReport;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;


# instance fields
.field private id:J

.field mLastGoalModified:Ljava/util/Date;

.field mLastMonthModified:Ljava/util/Date;

.field mLastReportModified:Ljava/util/Date;

.field mLastSchoolModified:Ljava/util/Date;

.field private mbHasBeenSent:Z

.field private meProfileMonth:I

.field mlstDailyItems:Lio/realm/RealmList;

.field mlstSchoolInfo:Lio/realm/RealmList;

.field moMonthGoal:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

.field moMonthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;


# direct methods
.method static bridge synthetic -$$Nest$maddToDailyList(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->addToDailyList(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misDateEqual(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isDateEqual(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveFromDailyList(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->removeFromDailyList(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mlstDailyItems(Lio/realm/RealmList;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastReportModified(Ljava/util/Date;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastGoalModified(Ljava/util/Date;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastMonthModified(Ljava/util/Date;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mlstSchoolInfo(Lio/realm/RealmList;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastSchoolModified(Ljava/util/Date;)V

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$meProfileMonth(I)V

    .line 57
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$moMonthGoal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 58
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$moMonthReport(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mbHasBeenSent(Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 62
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mlstDailyItems(Lio/realm/RealmList;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastReportModified(Ljava/util/Date;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastGoalModified(Ljava/util/Date;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastMonthModified(Ljava/util/Date;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mlstSchoolInfo(Lio/realm/RealmList;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastSchoolModified(Ljava/util/Date;)V

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$meProfileMonth(I)V

    .line 64
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$moMonthGoal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 65
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$moMonthReport(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mbHasBeenSent(Z)V

    int-to-long v0, p1

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$id(J)V

    return-void
.end method

.method private addToDailyList(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 1

    .line 708
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;-><init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 736
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 708
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method private getMonthProfile(Ljava/lang/String;)I
    .locals 2

    .line 95
    const-string v0, "eProfileNone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 97
    :cond_0
    const-string v0, "eAuxialiary50"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 99
    :cond_1
    const-string v0, "eAuxialiary15"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 101
    :cond_2
    const-string v0, "eAuxialiary30"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 103
    :cond_3
    const-string v0, "eBethelService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    return p1

    .line 106
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unknown state"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private isDateEqual(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 6

    .line 740
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 741
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 742
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 743
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 744
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 746
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 747
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 748
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 749
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, p2, :cond_0

    if-ne v3, v2, :cond_0

    if-ne v5, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private removeFromDailyList(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 1

    .line 680
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$14;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport$14;-><init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 704
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 680
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method


# virtual methods
.method public addSchoolItem(Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;)V
    .locals 1

    .line 122
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$3;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport$3;-><init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;)V

    .line 130
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 122
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 1

    .line 110
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$2;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport$2;-><init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 118
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 110
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public getDailyItems()Ljava/util/List;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    return-object v0
.end method

.method public getMonthProfile()I
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$meProfileMonth()I

    move-result v0

    return v0
.end method

.method public getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    return-object v0
.end method

.method public getSchoolInfoItem()Lio/realm/RealmList;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public hasBeenSent()Z
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mbHasBeenSent()Z

    move-result v0

    return v0
.end method

.method public isAuxiliry()Z
    .locals 3

    .line 291
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$meProfileMonth()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$meProfileMonth()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public isAuxiliry15()Z
    .locals 2

    .line 299
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$meProfileMonth()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAuxiliry30()Z
    .locals 2

    .line 303
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$meProfileMonth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBethelite()Z
    .locals 2

    .line 307
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$meProfileMonth()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMonthEmpty()Z
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$meProfileMonth()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isMonthReportEmpty()Z
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result v0

    return v0
.end method

.method public isProfileNone()Z
    .locals 1

    .line 295
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$meProfileMonth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadFromDataStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V
    .locals 5

    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->loadFromFileObjectStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V

    .line 336
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 338
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mlstDailyItems(Lio/realm/RealmList;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 340
    new-instance v3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 341
    invoke-virtual {v3, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->loadFromFileObjectStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V

    .line 342
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mlstDailyItems(Lio/realm/RealmList;)V

    :cond_1
    const/16 v0, 0x11

    if-gt p2, v0, :cond_2

    .line 348
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 351
    new-instance v4, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 352
    invoke-virtual {v4, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->loadFromFileObjectStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 357
    :cond_2
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastReportModified(Ljava/util/Date;)V

    if-gt p2, v0, :cond_3

    .line 359
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->loadFromFileObjectStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V

    .line 364
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 365
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->loadFromFileObjectStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V

    .line 368
    :cond_4
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastGoalModified(Ljava/util/Date;)V

    .line 369
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mbHasBeenSent(Z)V

    .line 370
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastMonthModified(Ljava/util/Date;)V

    .line 373
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$meProfileMonth(I)V

    .line 375
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    .line 376
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mlstSchoolInfo(Lio/realm/RealmList;)V

    :goto_2
    if-ge v1, p2, :cond_5

    .line 378
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;-><init>()V

    .line 379
    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->loadFromDataStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;)V

    .line 380
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 383
    :cond_5
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastSchoolModified(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 385
    :goto_3
    const-string p2, "MonthReport.loadFromDataStream 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    throw p1
.end method

.method public loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V
    .locals 10

    .line 450
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 454
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1b

    .line 455
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 458
    const-string v3, "RP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 459
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 460
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 462
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_a

    .line 463
    :cond_1
    const-string v3, "RG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 464
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 465
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 466
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 467
    :cond_2
    const-string v3, "A"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 468
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 470
    :cond_3
    const-string v3, "A30"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 471
    invoke-virtual {p0, v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$meProfileMonth(I)V

    goto :goto_0

    .line 472
    :cond_4
    const-string v3, "Id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 473
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$id(J)V

    goto :goto_0

    .line 474
    :cond_5
    const-string v3, "A50"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 475
    invoke-virtual {p0, v5}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$meProfileMonth(I)V

    goto :goto_0

    .line 476
    :cond_6
    const-string v3, "Prof"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 477
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthProfile(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$meProfileMonth(I)V

    goto/16 :goto_0

    .line 478
    :cond_7
    const-string v3, "ProfI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 480
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$meProfileMonth(I)V

    goto/16 :goto_0

    .line 481
    :cond_8
    const-string v3, "S"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 482
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mbHasBeenSent(Z)V

    goto/16 :goto_0

    .line 483
    :cond_9
    const-string v3, "RM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 484
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastReportModified(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 485
    :cond_a
    const-string v3, "GM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 486
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastGoalModified(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 487
    :cond_b
    const-string v3, "MM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 488
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastMonthModified(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 489
    :cond_c
    const-string v3, "SM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 490
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastSchoolModified(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 491
    :cond_d
    const-string v3, "Sh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 492
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v2

    if-nez v2, :cond_e

    .line 493
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mlstSchoolInfo(Lio/realm/RealmList;)V

    goto :goto_1

    .line 494
    :cond_e
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 495
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_1

    .line 497
    :cond_f
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->clear()V

    .line 498
    :goto_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_10

    .line 500
    new-instance v3, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-direct {v3}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;-><init>()V

    .line 501
    invoke-virtual {v3, p1}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 502
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 504
    :cond_10
    monitor-exit v2

    goto/16 :goto_0

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 505
    :cond_11
    const-string v3, "Daily"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 506
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v2

    if-nez v2, :cond_12

    .line 507
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mlstDailyItems(Lio/realm/RealmList;)V

    goto :goto_4

    .line 508
    :cond_12
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 509
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_4

    .line 511
    :cond_13
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->clear()V

    .line 512
    :goto_4
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 513
    :goto_5
    :try_start_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_18

    .line 514
    new-instance v3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 515
    invoke-virtual {v3, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 517
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 518
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_14

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_6

    .line 526
    :cond_15
    new-instance v4, Lcom/lostpixels/fieldservice/utils/comparators/SessionDateCompare;

    invoke-direct {v4}, Lcom/lostpixels/fieldservice/utils/comparators/SessionDateCompare;-><init>()V

    .line 527
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 528
    invoke-virtual {v4, v6, v3}, Lcom/lostpixels/fieldservice/utils/comparators/SessionDateCompare;->compare(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)I

    move-result v7

    if-nez v7, :cond_16

    .line 529
    invoke-virtual {v6, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->add(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    goto :goto_5

    .line 535
    :cond_17
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 538
    :cond_18
    monitor-exit v2

    goto/16 :goto_0

    :goto_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    .line 539
    :cond_19
    const-string v3, "DailySync"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 541
    :goto_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_0

    .line 542
    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 543
    invoke-virtual {v2, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_7

    .line 547
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized field \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    if-nez v0, :cond_1c

    .line 551
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 552
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    :cond_1c
    if-eqz v1, :cond_1e

    .line 556
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result p1

    const/16 v0, 0x32

    if-lt p1, v0, :cond_1d

    .line 557
    invoke-virtual {p0, v5}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$meProfileMonth(I)V

    goto :goto_8

    .line 559
    :cond_1d
    invoke-virtual {p0, v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$meProfileMonth(I)V

    .line 563
    :cond_1e
    :goto_8
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$id()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_20

    const/16 p1, 0x12

    if-ge p2, p1, :cond_1f

    goto :goto_9

    .line 564
    :cond_1f
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_20
    :goto_9
    return-void

    .line 569
    :goto_a
    const-string p2, "MonthReport.loadFromFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    throw p1
.end method

.method merge(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Ljava/util/Date;)V
    .locals 4

    .line 617
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$id()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$id()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_13

    .line 620
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastMonthModified()Ljava/util/Date;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastMonthModified()Ljava/util/Date;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastMonthModified()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastMonthModified()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastMonthModified()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastMonthModified()Ljava/util/Date;

    move-result-object v0

    .line 622
    invoke-virtual {p2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 623
    :cond_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mbHasBeenSent()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mbHasBeenSent(Z)V

    .line 624
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$meProfileMonth()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$meProfileMonth(I)V

    .line 625
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastMonthModified()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastMonthModified(Ljava/util/Date;)V

    .line 629
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object p2

    if-nez p2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object v0

    .line 631
    invoke-virtual {p2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 632
    :cond_4
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->set(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 633
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastReportModified(Ljava/util/Date;)V

    .line 635
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    .line 636
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p2

    if-nez p2, :cond_5

    .line 637
    new-instance p2, Lio/realm/RealmList;

    invoke-direct {p2}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mlstDailyItems(Lio/realm/RealmList;)V

    .line 638
    :cond_5
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 639
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p2

    .line 640
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {p2, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$id()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 641
    invoke-virtual {p2}, Lio/realm/Realm;->close()V

    .line 642
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 644
    :cond_6
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 645
    :cond_7
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 650
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastGoalModified()Ljava/util/Date;

    move-result-object p2

    if-nez p2, :cond_9

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastGoalModified()Ljava/util/Date;

    move-result-object p2

    if-nez p2, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastGoalModified()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastGoalModified()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastGoalModified()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastGoalModified()Ljava/util/Date;

    move-result-object v0

    .line 652
    invoke-virtual {p2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 653
    :cond_a
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->set(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 654
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastGoalModified()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastGoalModified(Ljava/util/Date;)V

    .line 658
    :cond_b
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastSchoolModified()Ljava/util/Date;

    move-result-object p2

    if-nez p2, :cond_c

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastSchoolModified()Ljava/util/Date;

    move-result-object p2

    if-nez p2, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastSchoolModified()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastSchoolModified()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastSchoolModified()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastSchoolModified()Ljava/util/Date;

    move-result-object v0

    .line 660
    invoke-virtual {p2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 661
    :cond_d
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 662
    :cond_e
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 663
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 665
    :cond_f
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 666
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object p2

    if-nez p2, :cond_10

    .line 667
    new-instance p2, Lio/realm/RealmList;

    invoke-direct {p2}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mlstSchoolInfo(Lio/realm/RealmList;)V

    .line 668
    :cond_10
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 670
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 671
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$msName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 675
    :cond_11
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastSchoolModified()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastSchoolModified(Ljava/util/Date;)V

    :cond_12
    return-void

    .line 618
    :cond_13
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->id:J

    return-wide v0
.end method

.method public realmGet$mLastGoalModified()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->mLastGoalModified:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$mLastMonthModified()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->mLastMonthModified:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$mLastReportModified()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->mLastReportModified:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$mLastSchoolModified()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->mLastSchoolModified:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$mbHasBeenSent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->mbHasBeenSent:Z

    return v0
.end method

.method public realmGet$meProfileMonth()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->meProfileMonth:I

    return v0
.end method

.method public realmGet$mlstDailyItems()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->mlstDailyItems:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$mlstSchoolInfo()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->mlstSchoolInfo:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->moMonthGoal:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    return-object v0
.end method

.method public realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->moMonthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    return-object v0
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->id:J

    return-void
.end method

.method public realmSet$mLastGoalModified(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->mLastGoalModified:Ljava/util/Date;

    return-void
.end method

.method public realmSet$mLastMonthModified(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->mLastMonthModified:Ljava/util/Date;

    return-void
.end method

.method public realmSet$mLastReportModified(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->mLastReportModified:Ljava/util/Date;

    return-void
.end method

.method public realmSet$mLastSchoolModified(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->mLastSchoolModified:Ljava/util/Date;

    return-void
.end method

.method public realmSet$mbHasBeenSent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->mbHasBeenSent:Z

    return-void
.end method

.method public realmSet$meProfileMonth(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->meProfileMonth:I

    return-void
.end method

.method public realmSet$mlstDailyItems(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->mlstDailyItems:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$mlstSchoolInfo(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->mlstSchoolInfo:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$moMonthGoal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->moMonthGoal:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    return-void
.end method

.method public realmSet$moMonthReport(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->moMonthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    return-void
.end method

.method removeDailyItems()V
    .locals 2

    .line 195
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$8;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport$8;-><init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;)V

    .line 210
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v1

    .line 195
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public removeSchoolItem(Ljava/lang/String;I)V
    .locals 1

    .line 147
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport$5;-><init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;ILjava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 147
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public removeServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 1

    .line 214
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$9;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport$9;-><init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 221
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 214
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3

    .line 392
    :try_start_0
    const-string v0, "M"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    const-string v0, "RP"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 396
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_7

    .line 399
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    const-string v0, "RG"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 402
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$meProfileMonth()I

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    const-string v0, "ProfI"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$meProfileMonth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 407
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mbHasBeenSent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    const-string v0, "S"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mbHasBeenSent()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 410
    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 411
    const-string v0, "RM"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 412
    :cond_4
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastGoalModified()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 413
    const-string v0, "GM"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastGoalModified()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 414
    :cond_5
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastMonthModified()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 415
    const-string v0, "MM"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastMonthModified()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 417
    :cond_6
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastSchoolModified()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 418
    const-string v0, "SM"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastSchoolModified()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 420
    :cond_7
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 421
    const-string v0, "Sh"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :try_start_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 424
    invoke-virtual {v2, p1}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 425
    :cond_8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :try_start_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 425
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 429
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 430
    const-string v0, "Daily"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 432
    :try_start_5
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 433
    invoke-virtual {v2, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    .line 434
    :cond_a
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 435
    :try_start_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    .line 434
    :goto_5
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    .line 438
    :cond_b
    :goto_6
    const-string v0, "Id"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 440
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return-void

    .line 442
    :goto_7
    const-string v0, "MonthReport.saveToFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    throw p1
.end method

.method setDailyItems(Ljava/util/ArrayList;)V
    .locals 1

    .line 182
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$7;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport$7;-><init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Ljava/util/ArrayList;)V

    .line 190
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 182
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$id(J)V

    return-void
.end method

.method public setMonthGoal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 1

    .line 238
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$11;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport$11;-><init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 244
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 238
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setMonthProfile(I)V
    .locals 1

    .line 84
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$1;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport$1;-><init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;I)V

    .line 90
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 84
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setSent()V
    .locals 2

    .line 315
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$13;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport$13;-><init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;)V

    .line 321
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v1

    .line 315
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public transferMinutes(Ljava/lang/String;Z)V
    .locals 1

    .line 252
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;

    invoke-direct {v0, p0, p2, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;-><init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method updateDate(Ljava/util/Date;)V
    .locals 1

    .line 169
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$6;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport$6;-><init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Ljava/util/Date;)V

    .line 174
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 169
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public updateGoalDate()V
    .locals 2

    .line 225
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$10;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport$10;-><init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;)V

    .line 230
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v1

    .line 225
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method updateToNewVersion(III)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0xb

    if-ge p1, v1, :cond_4

    .line 576
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 577
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p2, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastReportModified(Ljava/util/Date;)V

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_2

    .line 579
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 580
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastReportModified(Ljava/util/Date;)V

    .line 584
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastGoalModified()Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 585
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastGoalModified(Ljava/util/Date;)V

    .line 588
    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mLastMonthModified()Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_6

    .line 589
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastMonthModified(Ljava/util/Date;)V

    return-void

    :cond_4
    const/16 v2, 0xd

    if-ge p1, v2, :cond_6

    .line 595
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 596
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    .line 597
    invoke-virtual {p1, v4, p2}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p3, v4

    const/4 p2, 0x2

    .line 598
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p3, 0x5

    .line 599
    invoke-virtual {p1, p3, v4}, Ljava/util/Calendar;->set(II)V

    .line 600
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xc

    .line 601
    invoke-virtual {p1, p3, v0}, Ljava/util/Calendar;->set(II)V

    .line 602
    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xe

    .line 603
    invoke-virtual {p1, p3, v0}, Ljava/util/Calendar;->set(II)V

    .line 604
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 605
    invoke-virtual {v3, p2, v4}, Ljava/util/Calendar;->add(II)V

    const/4 p2, -0x1

    .line 606
    invoke-virtual {v3, v2, p2}, Ljava/util/Calendar;->add(II)V

    .line 608
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 609
    :cond_5
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 610
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastMonthModified(Ljava/util/Date;)V

    :cond_6
    return-void
.end method
