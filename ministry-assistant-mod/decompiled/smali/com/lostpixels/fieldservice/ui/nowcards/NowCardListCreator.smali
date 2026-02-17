.class public abstract Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;,
        Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;
    }
.end annotation


# static fields
.field private static mCardList:Ljava/util/List; = null

.field private static mCardsToUpdate:I = -0x1

.field private static mExampleCardList:Ljava/util/List; = null

.field private static mLastBehindGoalDate:Ljava/util/Date; = null

.field private static mLastOldVisitDate:Ljava/util/Date; = null

.field private static mLastPlanningDate:Ljava/util/Date; = null

.field private static mLastScheduleDate:Ljava/util/Date; = null

.field private static mLastVisitAboutNowDate:Ljava/util/Date; = null

.field private static mbLightTheme:Z = true

.field private static mbShouldUpdate:Z = true


# direct methods
.method static bridge synthetic -$$Nest$smisAboutSameDateAndTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->isAboutSameDateAndTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static addBackupCard(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/ui/nowcards/UpdateCardsInterface;)Lcom/fima/cardsui/objects/CardStack;
    .locals 9

    .line 512
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 513
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 514
    const-string v2, "HelpDlgs"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 515
    const-string v2, "ScheduleBackup"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 516
    const-string v4, "accountName"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 518
    :goto_0
    const-string v6, "NoBackupPlease"

    invoke-interface {p1, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 519
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, p0, v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isYearEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 522
    :goto_3
    const-string v7, "syncMode"

    const-string v8, ""

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "auto"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-eqz p0, :cond_7

    if-nez p1, :cond_5

    if-eqz v2, :cond_6

    if-nez v4, :cond_6

    :cond_5
    if-nez v6, :cond_6

    if-eqz v3, :cond_7

    .line 524
    :cond_6
    new-instance p0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {p0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 525
    new-instance p1, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;

    invoke-direct {p1, p2, v3}, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;-><init>(Lcom/lostpixels/fieldservice/ui/nowcards/UpdateCardsInterface;Z)V

    invoke-virtual {p0, p1}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    return-object p0

    :cond_7
    return-object v1
.end method

.method private static addCongratulationsCard(Lio/realm/Realm;Landroid/content/Context;)Lcom/fima/cardsui/objects/CardStack;
    .locals 24

    move-object/from16 v0, p0

    .line 535
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 538
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    .line 539
    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_8

    .line 543
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 544
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v7

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v3

    .line 545
    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v9

    .line 546
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v10

    invoke-static {v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v10

    rsub-int/lit8 v11, v10, 0xd

    move-wide v13, v4

    const/4 v12, 0x0

    :goto_0
    if-gt v10, v3, :cond_7

    .line 555
    invoke-static {v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v15

    invoke-virtual {v9, v15}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v15

    .line 556
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v16

    .line 558
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 559
    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v17

    add-double v17, v17, v4

    goto :goto_1

    :cond_0
    move-wide/from16 v17, v4

    .line 560
    :goto_1
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 561
    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v19

    add-double v17, v17, v19

    .line 562
    :cond_1
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 563
    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v19

    add-double v17, v17, v19

    .line 565
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v19

    if-gtz v19, :cond_5

    cmpl-double v19, v17, v4

    if-lez v19, :cond_3

    goto :goto_2

    :cond_3
    move-wide/from16 v20, v4

    :cond_4
    move-object/from16 v18, v9

    goto :goto_4

    :cond_5
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v19

    move-wide/from16 v20, v4

    invoke-virtual/range {v19 .. v19}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v4

    const/16 v5, 0x37

    if-ge v4, v5, :cond_4

    .line 566
    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v22

    add-double v4, v4, v22

    add-double v4, v4, v17

    move-object/from16 v18, v9

    const-wide v8, 0x404b800000000000L    # 55.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    :goto_3
    add-double/2addr v13, v4

    goto :goto_5

    .line 570
    :goto_4
    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v4

    goto :goto_3

    .line 572
    :goto_5
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getSchoolInfoItem()Lio/realm/RealmList;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 574
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 575
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v5

    add-int/2addr v12, v5

    goto :goto_6

    :cond_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v9, v18

    move-wide/from16 v4, v20

    goto/16 :goto_0

    :cond_7
    move-wide/from16 v20, v4

    mul-int/lit8 v11, v11, 0x32

    sub-int/2addr v11, v12

    int-to-double v3, v11

    sub-double/2addr v3, v13

    cmpg-double v5, v3, v20

    if-gtz v5, :cond_e

    const/4 v3, 0x1

    :goto_7
    const/4 v4, 0x0

    goto/16 :goto_d

    :cond_8
    move-wide/from16 v20, v4

    .line 582
    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isAuxiliry()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 584
    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v3

    .line 585
    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isAuxiliry15()Z

    move-result v5

    .line 586
    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isAuxiliry30()Z

    move-result v8

    .line 587
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0x7e7

    if-gt v9, v10, :cond_a

    .line 588
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v9, v10, :cond_9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-lt v9, v6, :cond_9

    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v9, 0x1

    :goto_9
    const/high16 v10, 0x41f00000    # 30.0f

    if-eqz v5, :cond_c

    if-eqz v9, :cond_b

    const/high16 v5, 0x41700000    # 15.0f

    goto :goto_a

    :cond_b
    const/high16 v5, 0x41f00000    # 30.0f

    :goto_a
    float-to-double v11, v5

    cmpl-double v5, v3, v11

    if-ltz v5, :cond_c

    :goto_b
    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_d

    :cond_c
    if-eqz v8, :cond_e

    if-eqz v9, :cond_d

    goto :goto_c

    :cond_d
    const/high16 v10, 0x42480000    # 50.0f

    :goto_c
    float-to-double v8, v10

    cmpl-double v5, v3, v8

    if-ltz v5, :cond_e

    goto :goto_b

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 597
    :goto_d
    const-string v5, "CongratPref"

    move-object/from16 v8, p1

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 598
    const-string v8, "ReportDensity"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 599
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 600
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 601
    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v12, 0x5

    .line 602
    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 603
    const-string v14, "LastShowDay"

    move v15, v13

    const-wide/16 v12, 0x0

    move/from16 v16, v3

    move/from16 v18, v4

    invoke-interface {v5, v14, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 604
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 605
    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x5

    .line 606
    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 608
    const-string v6, "PioneerCongratDay"

    invoke-interface {v5, v6, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v12, 0x1

    .line 609
    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-nez v18, :cond_20

    if-eqz v16, :cond_f

    goto/16 :goto_10

    :cond_f
    if-ne v10, v3, :cond_10

    if-ne v11, v4, :cond_10

    if-eq v15, v7, :cond_12

    :cond_10
    if-ne v10, v3, :cond_12

    if-eq v11, v4, :cond_11

    goto :goto_e

    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_12

    .line 629
    :cond_12
    :goto_e
    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v3, v1, v9}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    .line 630
    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v4

    if-eqz v8, :cond_13

    .line 631
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v6

    if-lez v6, :cond_13

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v6

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v7

    if-lt v6, v7, :cond_13

    .line 632
    new-instance v0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 633
    new-instance v2, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;

    const/16 v4, 0x8

    invoke-direct {v2, v4, v3}, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;-><init>(ILcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    invoke-virtual {v0, v2}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    :goto_f
    const/4 v7, 0x1

    goto/16 :goto_13

    :cond_13
    const/4 v6, 0x2

    if-ne v8, v6, :cond_14

    .line 635
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v7

    if-lez v7, :cond_14

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v7

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v9

    if-lt v7, v9, :cond_14

    .line 636
    new-instance v0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 637
    new-instance v2, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;

    invoke-direct {v2, v6, v3}, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;-><init>(ILcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    invoke-virtual {v0, v2}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto :goto_f

    :cond_14
    if-ne v8, v6, :cond_16

    .line 639
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v6

    if-lez v6, :cond_15

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v6

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v7

    if-lt v6, v7, :cond_15

    .line 640
    new-instance v0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 641
    new-instance v2, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;

    const/4 v4, 0x3

    invoke-direct {v2, v4, v3}, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;-><init>(ILcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    invoke-virtual {v0, v2}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto :goto_f

    :cond_15
    const/4 v6, 0x2

    :cond_16
    if-ne v8, v6, :cond_17

    .line 643
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v6

    if-lez v6, :cond_17

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v6

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v7

    if-lt v6, v7, :cond_17

    .line 644
    new-instance v0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 645
    new-instance v2, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;-><init>(ILcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    invoke-virtual {v0, v2}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto :goto_f

    :cond_17
    if-eqz v8, :cond_18

    .line 647
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v6

    if-lez v6, :cond_18

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v6

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v7

    if-lt v6, v7, :cond_18

    .line 648
    new-instance v0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 649
    new-instance v2, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;

    const/4 v6, 0x5

    invoke-direct {v2, v6, v3}, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;-><init>(ILcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    invoke-virtual {v0, v2}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto/16 :goto_f

    :cond_18
    if-eqz v8, :cond_19

    .line 651
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v6

    if-lez v6, :cond_19

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v6

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v7

    if-lt v6, v7, :cond_19

    .line 652
    new-instance v0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 653
    new-instance v2, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;

    const/4 v4, 0x6

    invoke-direct {v2, v4, v3}, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;-><init>(ILcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    invoke-virtual {v0, v2}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto/16 :goto_f

    .line 655
    :cond_19
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v6

    cmpl-double v8, v6, v20

    if-lez v8, :cond_11

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v6

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v8

    cmpl-double v4, v6, v8

    if-ltz v4, :cond_11

    .line 657
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v6

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    cmpl-double v4, v6, v8

    if-nez v4, :cond_1a

    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v4

    if-nez v4, :cond_11

    .line 658
    :cond_1a
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v6

    const-wide v10, 0x4056800000000000L    # 90.0

    cmpl-double v4, v6, v10

    if-nez v4, :cond_1b

    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer90()Z

    move-result v4

    if-nez v4, :cond_11

    .line 659
    :cond_1b
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v6

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    cmpl-double v4, v6, v12

    if-nez v4, :cond_1c

    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer100()Z

    move-result v4

    if-nez v4, :cond_11

    .line 660
    :cond_1c
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v6

    cmpl-double v4, v6, v10

    if-nez v4, :cond_1d

    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary90()Z

    move-result v4

    if-nez v4, :cond_11

    .line 661
    :cond_1d
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v6

    cmpl-double v4, v6, v12

    if-nez v4, :cond_1e

    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary100()Z

    move-result v4

    if-nez v4, :cond_11

    .line 662
    :cond_1e
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v6

    cmpl-double v4, v6, v8

    if-nez v4, :cond_1f

    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isCircuitOversser()Z

    move-result v0

    if-nez v0, :cond_11

    .line 665
    :cond_1f
    new-instance v0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 666
    new-instance v2, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;

    const/4 v4, 0x7

    invoke-direct {v2, v4, v3}, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;-><init>(ILcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    invoke-virtual {v0, v2}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto/16 :goto_f

    :cond_20
    :goto_10
    if-ne v10, v3, :cond_21

    if-ne v11, v4, :cond_21

    if-ne v15, v7, :cond_21

    .line 615
    new-instance v3, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v3}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 616
    new-instance v4, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;

    const/16 v22, 0x1

    xor-int/lit8 v6, v16, 0x1

    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-direct {v4, v6, v0}, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;-><init>(ILcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    invoke-virtual {v3, v4}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    :goto_11
    move-object v0, v3

    goto/16 :goto_f

    :cond_21
    if-eqz v16, :cond_22

    if-eq v9, v10, :cond_22

    .line 619
    new-instance v3, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v3}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 620
    new-instance v4, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;

    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    const/4 v9, 0x0

    invoke-direct {v4, v9, v0}, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;-><init>(ILcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    invoke-virtual {v3, v4}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    .line 622
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_11

    :cond_22
    const/4 v9, 0x0

    if-eqz v18, :cond_24

    if-ne v3, v10, :cond_23

    if-eq v11, v4, :cond_24

    .line 624
    :cond_23
    new-instance v3, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v3}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 625
    new-instance v4, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;

    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    const/4 v12, 0x1

    invoke-direct {v4, v12, v0}, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;-><init>(ILcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    invoke-virtual {v3, v4}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto :goto_11

    :cond_24
    :goto_12
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_13
    if-eqz v7, :cond_25

    .line 674
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-interface {v2, v14, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_25
    return-object v0
.end method

.method private static addHourRequirement(Lio/realm/Realm;Landroid/content/Context;)Lcom/fima/cardsui/objects/CardStack;
    .locals 5

    .line 769
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 771
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x7e7

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 772
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 773
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v2

    .line 774
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary()Z

    move-result v3

    .line 775
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v4

    invoke-virtual {v4, p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer()Z

    move-result p0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-eqz p0, :cond_1

    .line 778
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 780
    const-string p1, "NewHourRequirement"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 782
    new-instance p0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {p0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 783
    new-instance p1, Lcom/lostpixels/fieldservice/ui/nowcards/HourRequirementCard;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/ui/nowcards/HourRequirementCard;-><init>()V

    invoke-virtual {p0, p1}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static addLastTerritory(Lio/realm/Realm;)Lcom/fima/cardsui/objects/CardStack;
    .locals 5

    .line 714
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v1, :cond_1

    goto :goto_1

    .line 717
    :cond_1
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getLastUpdated()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getLastUpdated()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getLastUpdated()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getLastUpdated()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 722
    new-instance p0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {p0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 723
    new-instance v0, Lcom/lostpixels/fieldservice/ui/nowcards/TerritoryCard;

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/ui/nowcards/TerritoryCard;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    invoke-virtual {p0, v0}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    return-object p0

    :cond_3
    return-object v0
.end method

.method private static addMinistryStatistics(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;)Lcom/fima/cardsui/objects/CardStack;
    .locals 7

    .line 734
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 735
    new-instance p0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {p0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 736
    new-instance v0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;

    const v1, 0x7f12017e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nPersons:I

    iget v3, p2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nReturnVisits:I

    iget v4, p2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nStudies:I

    iget v5, p2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nMagRoutes:I

    iget v6, p2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nFavourites:I

    invoke-direct/range {v0 .. v6}, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;-><init>(Ljava/lang/String;IIIII)V

    invoke-virtual {p0, v0}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static addMinistryTips(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$BooleanResult;Lcom/lostpixels/fieldservice/ui/nowcards/UpdateCardsInterface;)Lcom/fima/cardsui/objects/CardStack;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    .line 807
    invoke-static {v3}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->isLowOnDiskSpace(Z)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_1

    invoke-static {v6}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->isLowOnDiskSpace(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v4, 0x10

    .line 811
    :goto_1
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    .line 814
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 815
    const-string v12, "com.lostpixels.fieldservice"

    invoke-virtual {v11, v12, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 816
    iget-wide v11, v11, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    sub-long v11, v7, v11

    const-wide/32 v13, 0x5265c00

    .line 818
    div-long/2addr v11, v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    move-wide v11, v9

    .line 823
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 824
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v14

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v14

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v14

    .line 825
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v14

    const/16 v15, 0x3c

    const/4 v5, 0x2

    if-le v14, v15, :cond_2

    .line 826
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v14

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v14, v0, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPublisher()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_3
    or-int/lit8 v4, v4, 0x8

    goto :goto_4

    :cond_2
    const/4 v6, -0x1

    .line 829
    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 830
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v14

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v14, v0, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v3

    if-le v3, v15, :cond_3

    .line 831
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v3, v0, v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPublisher()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 834
    :cond_3
    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 835
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    .line 836
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v3

    if-le v3, v15, :cond_4

    .line 837
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPublisher()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    :goto_4
    const-wide/16 v13, 0xa

    cmp-long v3, v11, v13

    if-lez v3, :cond_a

    .line 845
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 847
    const-string v6, "LastManualBackupSD"

    invoke-interface {v3, v6, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v6, v11, v9

    if-eqz v6, :cond_5

    .line 848
    invoke-static {v7, v8, v11, v12}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->daysDiff(JJ)J

    move-result-wide v11

    cmp-long v6, v11, v13

    if-lez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    if-nez v6, :cond_8

    .line 852
    const-string v11, "LastManualBackupMail"

    invoke-interface {v3, v11, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v15, v11, v9

    if-eqz v15, :cond_6

    .line 853
    invoke-static {v7, v8, v11, v12}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->daysDiff(JJ)J

    move-result-wide v11

    cmp-long v15, v11, v13

    if-lez v15, :cond_6

    const/4 v6, 0x1

    :cond_6
    if-nez v6, :cond_8

    .line 857
    const-string v11, "LastManualBackupDrive"

    invoke-interface {v3, v11, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v15, v11, v9

    if-eqz v15, :cond_7

    .line 858
    invoke-static {v7, v8, v11, v12}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->daysDiff(JJ)J

    move-result-wide v11

    cmp-long v15, v11, v13

    if-lez v15, :cond_7

    const/4 v6, 0x1

    :cond_7
    if-nez v6, :cond_8

    .line 862
    const-string v11, "LastSchedBackup"

    invoke-interface {v3, v11, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v3, v11, v9

    if-eqz v3, :cond_8

    .line 863
    invoke-static {v7, v8, v11, v12}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->daysDiff(JJ)J

    move-result-wide v7

    cmp-long v3, v7, v13

    if-lez v3, :cond_8

    const/4 v6, 0x1

    :cond_8
    if-nez v6, :cond_9

    or-int/lit8 v4, v4, 0x4

    .line 874
    :cond_9
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 875
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    or-int/lit8 v4, v4, 0x2

    :cond_a
    if-eqz v4, :cond_16

    .line 882
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    and-int/lit8 v3, v4, 0x10

    const/4 v6, 0x4

    const/16 v7, 0x8

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    .line 887
    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$BooleanResult;->setResult(Z)V

    const/16 v9, 0x10

    goto :goto_7

    :cond_b
    const/4 v3, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_6
    if-eqz v8, :cond_11

    const/4 v10, 0x3

    .line 890
    invoke-virtual {v0, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    if-eqz v10, :cond_10

    if-eq v10, v3, :cond_f

    if-eq v10, v5, :cond_c

    const/4 v3, 0x1

    const/4 v8, 0x0

    goto :goto_6

    :cond_c
    and-int/lit8 v3, v4, 0x8

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    .line 909
    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$BooleanResult;->setResult(Z)V

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x8

    goto :goto_6

    :cond_d
    const/4 v3, 0x1

    :cond_e
    const/4 v10, 0x0

    goto :goto_6

    :cond_f
    and-int/lit8 v3, v4, 0x4

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    .line 902
    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$BooleanResult;->setResult(Z)V

    const/4 v8, 0x0

    const/4 v9, 0x4

    goto :goto_6

    :cond_10
    and-int/lit8 v10, v4, 0x2

    if-eqz v10, :cond_e

    const/4 v10, 0x0

    .line 895
    invoke-virtual {v2, v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$BooleanResult;->setResult(Z)V

    const/4 v8, 0x0

    const/4 v9, 0x2

    goto :goto_6

    :cond_11
    :goto_7
    const v0, 0x7f120063

    if-eq v9, v5, :cond_15

    if-eq v9, v6, :cond_14

    if-eq v9, v7, :cond_13

    const/16 v2, 0x10

    if-eq v9, v2, :cond_12

    goto/16 :goto_8

    .line 935
    :cond_12
    new-instance v2, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v2}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 936
    new-instance v3, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryTipsCard;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f1203de

    .line 937
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f1200db

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v4, v1}, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryTipsCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-virtual {v2, v3}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto :goto_9

    .line 930
    :cond_13
    new-instance v2, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v2}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 931
    new-instance v3, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryTipsCard;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f12006a

    .line 932
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f12006b

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v4, v1}, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryTipsCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-virtual {v2, v3}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto :goto_9

    .line 925
    :cond_14
    new-instance v2, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v2}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 926
    new-instance v3, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryTipsCard;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f120068

    .line 927
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f120069

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v4, v1}, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryTipsCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-virtual {v2, v3}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto :goto_9

    .line 920
    :cond_15
    new-instance v2, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v2}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 921
    new-instance v3, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryTipsCard;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f12006c

    .line 922
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f12006d

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v4, v1}, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryTipsCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-virtual {v2, v3}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto :goto_9

    :cond_16
    :goto_8
    const/4 v2, 0x0

    :goto_9
    return-object v2
.end method

.method private static addMonthGoalCard(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lio/realm/Realm;)Lcom/fima/cardsui/objects/CardStack;
    .locals 21

    move-object/from16 v0, p0

    .line 1041
    invoke-static/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    .line 1042
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    .line 1043
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v3

    .line 1044
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    .line 1045
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v6

    .line 1046
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1047
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 1048
    :cond_0
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1049
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 1050
    :cond_1
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1051
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v8

    add-double/2addr v6, v8

    :cond_2
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    cmpl-double v11, v6, v8

    if-lez v11, :cond_3

    const/4 v11, 0x1

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    :goto_0
    add-double/2addr v3, v6

    cmpl-double v6, v3, v8

    if-lez v6, :cond_15

    .line 1055
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1056
    const-string v7, "inputMode"

    const-string v12, "hhmm"

    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1058
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v12, 0x5

    .line 1059
    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v13, 0x2

    .line 1061
    invoke-virtual {v7, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-eqz v14, :cond_6

    if-eq v14, v10, :cond_4

    if-eq v14, v13, :cond_6

    const/4 v7, 0x4

    if-eq v14, v7, :cond_6

    const/16 v7, 0x9

    if-eq v14, v7, :cond_6

    const/16 v7, 0xb

    if-eq v14, v7, :cond_6

    const/4 v7, 0x6

    if-eq v14, v7, :cond_6

    const/4 v7, 0x7

    if-eq v14, v7, :cond_6

    const/16 v7, 0x1e

    goto :goto_1

    .line 1072
    :cond_4
    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Lcom/lostpixels/fieldservice/utils/DateUtils;->isLeapYear(I)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x1d

    goto :goto_1

    :cond_5
    const/16 v7, 0x1c

    goto :goto_1

    :cond_6
    const/16 v7, 0x1f

    :goto_1
    int-to-double v13, v7

    div-double v13, v3, v13

    move-wide v15, v8

    int-to-double v8, v12

    mul-double v13, v13, v8

    .line 1082
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v7

    .line 1083
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v17

    .line 1084
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1085
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v19

    add-double v17, v17, v19

    .line 1086
    :cond_7
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1087
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v19

    add-double v17, v17, v19

    .line 1088
    :cond_8
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1089
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v19

    add-double v17, v17, v19

    :cond_9
    cmpl-double v9, v17, v15

    if-lez v9, :cond_a

    const/4 v9, 0x1

    goto :goto_2

    :cond_a
    const/4 v9, 0x0

    :goto_2
    or-int/2addr v9, v11

    add-double v7, v7, v17

    cmpg-double v11, v7, v13

    if-gez v11, :cond_15

    sub-double/2addr v13, v7

    .line 1095
    new-instance v7, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v7}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 1096
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f1200aa

    .line 1098
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v12, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    .line 1099
    invoke-static {v12, v6, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v2

    .line 1097
    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_14

    .line 1101
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcMinutes()I

    move-result v3

    if-lez v3, :cond_c

    .line 1102
    const-string v3, " "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result v3

    if-eqz v3, :cond_b

    const v3, 0x7f120206

    .line 1104
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_b
    const v3, 0x7f120207

    .line 1106
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    :cond_c
    :goto_3
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v3

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v4

    if-lez v4, :cond_d

    const/4 v4, 0x1

    goto :goto_4

    :cond_d
    const/4 v4, 0x0

    :goto_4
    and-int/2addr v3, v4

    const-string v4, " + "

    if-eqz v3, :cond_e

    .line 1112
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    .line 1114
    :goto_5
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v9

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v11

    if-lez v11, :cond_f

    const/4 v11, 0x1

    goto :goto_6

    :cond_f
    const/4 v11, 0x0

    :goto_6
    and-int/2addr v9, v11

    const-string v11, ", "

    if-eqz v9, :cond_11

    if-eqz v3, :cond_10

    move-object v3, v11

    goto :goto_7

    :cond_10
    move-object v3, v4

    .line 1115
    :goto_7
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 1118
    :cond_11
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v9

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v5

    if-lez v5, :cond_12

    goto :goto_8

    :cond_12
    const/4 v10, 0x0

    :goto_8
    and-int v5, v9, v10

    if-eqz v5, :cond_14

    if-eqz v3, :cond_13

    move-object v4, v11

    .line 1119
    :cond_13
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    :cond_14
    new-instance v1, Lcom/lostpixels/fieldservice/ui/nowcards/ReportGoalCard;

    const v3, 0x7f120183

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v5, v13, v14}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    invoke-static {v5, v6, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "h"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/lostpixels/fieldservice/ui/nowcards/ReportGoalCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v1}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    return-object v7

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private static addMonthReport(Lio/realm/Realm;Landroid/content/Context;)Lcom/fima/cardsui/objects/CardStack;
    .locals 6

    .line 745
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 746
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v1

    .line 747
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    .line 748
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result v3

    const v4, 0x7f12044c

    if-nez v3, :cond_0

    .line 749
    new-instance p0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {p0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 750
    new-instance v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result v1

    invoke-direct {v0, p1, v2, v1}, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;-><init>(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V

    invoke-virtual {p0, v0}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    return-object p0

    .line 752
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 753
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x2

    const/4 v5, -0x1

    .line 754
    invoke-virtual {v3, v0, v5}, Ljava/util/Calendar;->add(II)V

    .line 755
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 756
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p0

    .line 757
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 758
    new-instance p0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {p0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 759
    new-instance v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result v1

    invoke-direct {v0, p1, v2, v1}, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;-><init>(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V

    invoke-virtual {p0, v0}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static addOldVisits(Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;)Lcom/fima/cardsui/objects/CardStack;
    .locals 8

    .line 960
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrOldVisits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    new-instance v0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 963
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrOldVisits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    .line 964
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 965
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 966
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v4, v2, :cond_3

    .line 969
    :cond_1
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrOldVisits:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 970
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_1

    const/4 v5, 0x1

    .line 971
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 976
    new-instance v5, Lcom/lostpixels/fieldservice/ui/nowcards/OldVisitsCard;

    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrOldVisits:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/lostpixels/fieldservice/ui/nowcards/OldVisitsCard;-><init>(J)V

    invoke-virtual {v0, v5}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto :goto_1

    .line 979
    :cond_2
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrOldVisits:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Long;

    .line 980
    new-instance v4, Lcom/lostpixels/fieldservice/ui/nowcards/OldVisitsCard;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lcom/lostpixels/fieldservice/ui/nowcards/OldVisitsCard;-><init>(J)V

    invoke-virtual {v0, v4}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method private static addPersonsToTakeToday(Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;)Lcom/fima/cardsui/objects/CardStack;
    .locals 5

    .line 682
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 683
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    const/4 v1, 0x6

    .line 684
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 686
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrScheduledVisits:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 688
    new-instance v1, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v1}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 690
    :cond_0
    new-instance v4, Lcom/lostpixels/fieldservice/ui/nowcards/AppointmentPersonCard;

    invoke-direct {v4, v3}, Lcom/lostpixels/fieldservice/ui/nowcards/AppointmentPersonCard;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v1, v4}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static addPinnedPersons(Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;)Lcom/fima/cardsui/objects/CardStack;
    .locals 7

    .line 699
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrPinnedVisits:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 701
    new-instance v1, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v1}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 703
    :cond_0
    new-instance v4, Lcom/lostpixels/fieldservice/ui/nowcards/PinnedVisitsCard;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lcom/lostpixels/fieldservice/ui/nowcards/PinnedVisitsCard;-><init>(J)V

    invoke-virtual {v1, v4}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static addScheduledTimeCard(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/MonthReport;)Lcom/fima/cardsui/objects/CardStack;
    .locals 13

    .line 1020
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 1021
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1022
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1023
    const-string v2, "inputMode"

    const-string v3, "hhmm"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 1024
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object p0

    .line 1025
    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result p2

    .line 1024
    invoke-virtual {p0, p2, v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getTime(ILjava/util/Calendar;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    move-result-object p0

    .line 1025
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->getTime()F

    move-result p0

    float-to-double v9, p0

    .line 1027
    const-string p0, "syncReport"

    const/4 p2, 0x0

    invoke-interface {v1, p0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-wide/16 v0, 0x0

    cmpl-double p0, v9, v0

    if-lez p0, :cond_0

    .line 1029
    new-instance p0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {p0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 1030
    new-instance v4, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;

    const p2, 0x7f12017c

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const p2, 0x7f120067

    .line 1031
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const p2, 0x7f120415

    .line 1032
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const p2, 0x7f120490

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v4 .. v12}, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DZZ)V

    .line 1030
    invoke-virtual {p0, v4}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static addStack(Lcom/fima/cardsui/objects/CardStack;IZZ)V
    .locals 4

    .line 194
    sget-boolean v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbLightTheme:Z

    invoke-virtual {p0, v0}, Lcom/fima/cardsui/objects/CardStack;->setTheme(Z)V

    .line 195
    sget-object v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;

    .line 196
    iget v3, v3, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;->stackType:I

    if-ne v3, p1, :cond_0

    .line 198
    sget-object v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    new-instance v3, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;

    invoke-direct {v3, p0, p1}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;-><init>(Lcom/fima/cardsui/objects/CardStack;I)V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 205
    sget-object p2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    new-instance p3, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;

    invoke-direct {p3, p0, p1}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;-><init>(Lcom/fima/cardsui/objects/CardStack;I)V

    invoke-interface {p2, v1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    if-nez v0, :cond_4

    .line 206
    sget-object p3, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x5

    if-lt p3, v0, :cond_3

    if-eqz p2, :cond_4

    .line 207
    :cond_3
    sget-object p2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    new-instance p3, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;

    invoke-direct {p3, p0, p1}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;-><init>(Lcom/fima/cardsui/objects/CardStack;I)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_4
    :goto_2
    sget p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    not-int p1, p1

    and-int/2addr p0, p1

    sput p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    return-void
.end method

.method private static addTimeAhedOfGoalCard(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lio/realm/Realm;)Lcom/fima/cardsui/objects/CardStack;
    .locals 17

    move-object/from16 v0, p0

    .line 1134
    invoke-static/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    .line 1135
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v2

    .line 1136
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v4

    .line 1137
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1138
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 1139
    :cond_0
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1140
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 1141
    :cond_1
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1142
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v6

    add-double/2addr v4, v6

    :cond_2
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmpl-double v10, v4, v6

    if-lez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    :goto_0
    add-double/2addr v2, v4

    cmpl-double v4, v2, v6

    if-lez v4, :cond_15

    .line 1146
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1147
    const-string v5, "inputMode"

    const-string v11, "hhmm"

    invoke-interface {v4, v5, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1149
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v11, 0x5

    .line 1150
    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v12, 0x2

    .line 1152
    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-eqz v13, :cond_6

    if-eq v13, v9, :cond_4

    if-eq v13, v12, :cond_6

    const/4 v5, 0x4

    if-eq v13, v5, :cond_6

    const/16 v5, 0x9

    if-eq v13, v5, :cond_6

    const/16 v5, 0xb

    if-eq v13, v5, :cond_6

    const/4 v5, 0x6

    if-eq v13, v5, :cond_6

    const/4 v5, 0x7

    if-eq v13, v5, :cond_6

    const/16 v5, 0x1e

    goto :goto_1

    .line 1163
    :cond_4
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Lcom/lostpixels/fieldservice/utils/DateUtils;->isLeapYear(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x1d

    goto :goto_1

    :cond_5
    const/16 v5, 0x1c

    goto :goto_1

    :cond_6
    const/16 v5, 0x1f

    :goto_1
    int-to-double v12, v5

    div-double/2addr v2, v12

    int-to-double v11, v11

    mul-double v2, v2, v11

    .line 1173
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    .line 1174
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v11

    .line 1176
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v13

    .line 1177
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1178
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v15

    add-double/2addr v13, v15

    .line 1179
    :cond_7
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1180
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v15

    add-double/2addr v13, v15

    .line 1181
    :cond_8
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1182
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v15

    add-double/2addr v13, v15

    :cond_9
    cmpl-double v15, v13, v6

    if-lez v15, :cond_a

    const/4 v6, 0x1

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    :goto_2
    or-int/2addr v6, v10

    add-double/2addr v11, v13

    cmpl-double v7, v11, v2

    if-ltz v7, :cond_15

    sub-double/2addr v11, v2

    .line 1188
    new-instance v2, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v2}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 1189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f120361

    .line 1190
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_14

    .line 1193
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcMinutes()I

    move-result v6

    if-lez v6, :cond_c

    .line 1194
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result v6

    if-eqz v6, :cond_b

    const v6, 0x7f120206

    .line 1196
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_b
    const v6, 0x7f120207

    .line 1198
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    :cond_c
    :goto_3
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v6

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v7

    if-lez v7, :cond_d

    const/4 v7, 0x1

    goto :goto_4

    :cond_d
    const/4 v7, 0x0

    :goto_4
    and-int/2addr v6, v7

    const-string v7, " + "

    if-eqz v6, :cond_e

    .line 1204
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    goto :goto_5

    :cond_e
    const/4 v6, 0x0

    .line 1206
    :goto_5
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v10

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v13

    if-lez v13, :cond_f

    const/4 v13, 0x1

    goto :goto_6

    :cond_f
    const/4 v13, 0x0

    :goto_6
    and-int/2addr v10, v13

    const-string v13, ", "

    if-eqz v10, :cond_11

    if-eqz v6, :cond_10

    move-object v6, v13

    goto :goto_7

    :cond_10
    move-object v6, v7

    .line 1207
    :goto_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    .line 1210
    :cond_11
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v10

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v5

    if-lez v5, :cond_12

    const/4 v8, 0x1

    :cond_12
    and-int v5, v10, v8

    if-eqz v5, :cond_14

    if-eqz v6, :cond_13

    move-object v7, v13

    .line 1211
    :cond_13
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    :cond_14
    new-instance v1, Lcom/lostpixels/fieldservice/ui/nowcards/ReportGoalCard;

    const v5, 0x7f120183

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1216
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v6, v11, v12}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    invoke-static {v6, v4, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "h"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4, v9}, Lcom/lostpixels/fieldservice/ui/nowcards/ReportGoalCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1215
    invoke-virtual {v2, v1}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    return-object v2

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private static addVisitsAboutNow(Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;)Lcom/fima/cardsui/objects/CardStack;
    .locals 8

    .line 990
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrPeopleAtHomeNow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 991
    new-instance v0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 993
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrPeopleAtHomeNow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    .line 994
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 995
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 996
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v4, v2, :cond_3

    .line 999
    :cond_1
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrPeopleAtHomeNow:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 1000
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_1

    const/4 v5, 0x1

    .line 1001
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 1006
    new-instance v5, Lcom/lostpixels/fieldservice/ui/nowcards/VisitsAboutNow;

    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrPeopleAtHomeNow:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/lostpixels/fieldservice/ui/nowcards/VisitsAboutNow;-><init>(J)V

    invoke-virtual {v0, v5}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto :goto_1

    .line 1009
    :cond_2
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrPeopleAtHomeNow:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Long;

    .line 1010
    new-instance v4, Lcom/lostpixels/fieldservice/ui/nowcards/VisitsAboutNow;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lcom/lostpixels/fieldservice/ui/nowcards/VisitsAboutNow;-><init>(J)V

    invoke-virtual {v0, v4}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method private static daysDiff(JJ)J
    .locals 2

    .line 946
    invoke-static {p0, p1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x5265c00

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public static generateCardList(Landroid/content/Context;ILcom/lostpixels/fieldservice/ui/nowcards/UpdateCardsInterface;)Ljava/util/List;
    .locals 13

    .line 277
    sget-object v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastBehindGoalDate:Ljava/util/Date;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->isNotToday(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 278
    :goto_1
    sget-object v3, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    if-nez v3, :cond_2

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    .line 280
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->shouldUpdate()Z

    move-result v0

    if-nez v0, :cond_3

    .line 281
    sget-object p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    return-object p0

    .line 283
    :cond_3
    :goto_2
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 288
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 290
    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->removeNotToBeDisplayed(I)V

    .line 292
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 297
    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addCongratulationsCard(Lio/realm/Realm;Landroid/content/Context;)Lcom/fima/cardsui/objects/CardStack;

    move-result-object v4

    const/16 v5, 0x400

    if-eqz v4, :cond_4

    .line 299
    invoke-static {v4, v5, v1, v1}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addStack(Lcom/fima/cardsui/objects/CardStack;IZZ)V

    goto :goto_3

    .line 301
    :cond_4
    invoke-static {v5}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->removeStack(I)V

    :goto_3
    const v4, 0x8000

    and-int v5, p1, v4

    if-eqz v5, :cond_6

    .line 305
    sget v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_6

    .line 306
    invoke-static {v0, p0, p2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addBackupCard(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/ui/nowcards/UpdateCardsInterface;)Lcom/fima/cardsui/objects/CardStack;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 308
    invoke-static {v5, v4, v1, v1}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addStack(Lcom/fima/cardsui/objects/CardStack;IZZ)V

    goto :goto_4

    .line 310
    :cond_5
    invoke-static {v4}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->removeStack(I)V

    .line 314
    :cond_6
    :goto_4
    sget-object v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastBehindGoalDate:Ljava/util/Date;

    if-nez v4, :cond_7

    .line 315
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    sput-object v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastBehindGoalDate:Ljava/util/Date;

    .line 316
    sget v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/lit16 v4, v4, 0x7001

    .line 319
    sput v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    goto :goto_5

    .line 320
    :cond_7
    invoke-static {v4}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->isNotToday(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 321
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    sput-object v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastBehindGoalDate:Ljava/util/Date;

    .line 322
    sget v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/lit16 v4, v4, 0x7001

    .line 325
    sput v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    :cond_8
    :goto_5
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_9

    .line 327
    sget v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    and-int/2addr v4, v1

    if-nez v4, :cond_a

    :cond_9
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_c

    sget v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_c

    .line 329
    :cond_a
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v4

    .line 330
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addMonthGoalCard(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lio/realm/Realm;)Lcom/fima/cardsui/objects/CardStack;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 332
    invoke-static {v4, v1, v1, v2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addStack(Lcom/fima/cardsui/objects/CardStack;IZZ)V

    goto :goto_6

    .line 334
    :cond_b
    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->removeStack(I)V

    :cond_c
    :goto_6
    and-int/lit16 v4, p1, 0x1000

    const/16 v5, 0x1000

    if-eqz v4, :cond_d

    .line 337
    sget v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    and-int/2addr v4, v5

    if-nez v4, :cond_e

    :cond_d
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_10

    sget v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_10

    .line 339
    :cond_e
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v4

    .line 340
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addTimeAhedOfGoalCard(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lio/realm/Realm;)Lcom/fima/cardsui/objects/CardStack;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 342
    invoke-static {v4, v5, v1, v2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addStack(Lcom/fima/cardsui/objects/CardStack;IZZ)V

    goto :goto_7

    .line 344
    :cond_f
    invoke-static {v5}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->removeStack(I)V

    .line 349
    :cond_10
    :goto_7
    sget-object v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastScheduleDate:Ljava/util/Date;

    const/16 v5, 0x40

    if-nez v4, :cond_11

    .line 350
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    sput-object v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastScheduleDate:Ljava/util/Date;

    .line 351
    sget v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/2addr v4, v5

    sput v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    goto :goto_8

    .line 352
    :cond_11
    invoke-static {v4}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->isNotToday(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 353
    sget v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/2addr v4, v5

    sput v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    :cond_12
    :goto_8
    and-int/lit8 v4, p1, 0x40

    if-eqz v4, :cond_14

    .line 355
    sget v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_14

    .line 358
    new-instance v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;

    invoke-direct {v4, v0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;-><init>(Lio/realm/Realm;)V

    .line 359
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    sput-object v6, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastScheduleDate:Ljava/util/Date;

    .line 360
    invoke-static {v4}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addPersonsToTakeToday(Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;)Lcom/fima/cardsui/objects/CardStack;

    move-result-object v6

    if-eqz v6, :cond_13

    const v7, 0x7f1201aa

    .line 362
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fima/cardsui/objects/CardStack;->setTitle(Ljava/lang/String;)V

    .line 363
    invoke-static {v6, v5, v1, v2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addStack(Lcom/fima/cardsui/objects/CardStack;IZZ)V

    goto :goto_9

    .line 365
    :cond_13
    invoke-static {v5}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->removeStack(I)V

    goto :goto_9

    :cond_14
    const/4 v4, 0x0

    :goto_9
    and-int/lit8 v5, p1, 0x20

    if-eqz v5, :cond_17

    .line 370
    sget v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const/16 v6, 0x20

    and-int/2addr v5, v6

    if-eqz v5, :cond_17

    if-nez v4, :cond_15

    .line 372
    new-instance v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;

    invoke-direct {v4, v0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;-><init>(Lio/realm/Realm;)V

    .line 373
    :cond_15
    invoke-static {v4}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addPinnedPersons(Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;)Lcom/fima/cardsui/objects/CardStack;

    move-result-object v5

    if-eqz v5, :cond_16

    const v7, 0x7f12048d

    .line 375
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/fima/cardsui/objects/CardStack;->setTitle(Ljava/lang/String;)V

    .line 376
    invoke-static {v5, v6, v1, v2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addStack(Lcom/fima/cardsui/objects/CardStack;IZZ)V

    goto :goto_a

    .line 378
    :cond_16
    invoke-static {v6}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->removeStack(I)V

    .line 384
    :cond_17
    :goto_a
    sget-object v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastOldVisitDate:Ljava/util/Date;

    const-wide/32 v6, 0x36ee80

    const/16 v8, 0x8

    if-nez v5, :cond_18

    .line 385
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    sput-object v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastOldVisitDate:Ljava/util/Date;

    .line 386
    sget v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/2addr v5, v8

    sput v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    goto :goto_b

    .line 388
    :cond_18
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sget-object v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastOldVisitDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 389
    div-long/2addr v9, v6

    const-wide/16 v11, 0x4

    cmp-long v5, v9, v11

    if-lez v5, :cond_19

    .line 391
    sget v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/2addr v5, v8

    sput v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    :cond_19
    :goto_b
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_1c

    .line 393
    sget v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    and-int/2addr v5, v8

    if-eqz v5, :cond_1c

    if-nez v4, :cond_1a

    .line 395
    new-instance v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;

    invoke-direct {v4, v0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;-><init>(Lio/realm/Realm;)V

    .line 396
    :cond_1a
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    sput-object v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastOldVisitDate:Ljava/util/Date;

    .line 397
    invoke-static {v4}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addOldVisits(Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;)Lcom/fima/cardsui/objects/CardStack;

    move-result-object v5

    if-eqz v5, :cond_1b

    const v9, 0x7f1201c6

    .line 399
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/fima/cardsui/objects/CardStack;->setTitle(Ljava/lang/String;)V

    .line 400
    invoke-static {v5, v8, v2, v2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addStack(Lcom/fima/cardsui/objects/CardStack;IZZ)V

    goto :goto_c

    .line 402
    :cond_1b
    invoke-static {v8}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->removeStack(I)V

    .line 408
    :cond_1c
    :goto_c
    sget-object v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastVisitAboutNowDate:Ljava/util/Date;

    const/16 v8, 0x200

    if-nez v5, :cond_1d

    .line 409
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    sput-object v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastVisitAboutNowDate:Ljava/util/Date;

    .line 410
    sget v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/2addr v5, v8

    sput v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    goto :goto_d

    .line 412
    :cond_1d
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sget-object v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastVisitAboutNowDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 413
    div-long/2addr v9, v6

    const-wide/16 v5, 0x2

    cmp-long v7, v9, v5

    if-lez v7, :cond_1e

    .line 415
    sget v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/2addr v5, v8

    sput v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    :cond_1e
    :goto_d
    and-int/lit16 v5, p1, 0x200

    if-eqz v5, :cond_21

    .line 417
    sget v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    and-int/2addr v5, v8

    if-eqz v5, :cond_21

    if-nez v4, :cond_1f

    .line 419
    new-instance v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;

    invoke-direct {v4, v0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;-><init>(Lio/realm/Realm;)V

    .line 420
    :cond_1f
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    sput-object v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastVisitAboutNowDate:Ljava/util/Date;

    .line 421
    invoke-static {v4}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addVisitsAboutNow(Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;)Lcom/fima/cardsui/objects/CardStack;

    move-result-object v5

    if-eqz v5, :cond_20

    const v6, 0x7f12040f

    .line 423
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fima/cardsui/objects/CardStack;->setTitle(Ljava/lang/String;)V

    .line 424
    invoke-static {v5, v8, v2, v2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addStack(Lcom/fima/cardsui/objects/CardStack;IZZ)V

    goto :goto_e

    .line 426
    :cond_20
    invoke-static {v8}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->removeStack(I)V

    .line 431
    :cond_21
    :goto_e
    sget-object v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastPlanningDate:Ljava/util/Date;

    const/4 v6, 0x2

    if-nez v5, :cond_22

    .line 432
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    sput-object v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mLastPlanningDate:Ljava/util/Date;

    .line 433
    sget v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/2addr v5, v6

    sput v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    goto :goto_f

    .line 434
    :cond_22
    invoke-static {v5}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->isNotToday(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 435
    sget v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/2addr v5, v6

    sput v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    :cond_23
    :goto_f
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_25

    .line 437
    sget v5, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_25

    .line 439
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v3

    .line 440
    invoke-static {v0, p0, v3}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addScheduledTimeCard(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/MonthReport;)Lcom/fima/cardsui/objects/CardStack;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 442
    invoke-static {v3, v6, v2, v2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addStack(Lcom/fima/cardsui/objects/CardStack;IZZ)V

    goto :goto_10

    .line 444
    :cond_24
    invoke-static {v6}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->removeStack(I)V

    :cond_25
    :goto_10
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_27

    .line 449
    sget v3, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const/16 v5, 0x10

    and-int/2addr v3, v5

    if-eqz v3, :cond_27

    .line 450
    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addLastTerritory(Lio/realm/Realm;)Lcom/fima/cardsui/objects/CardStack;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 452
    invoke-static {v3, v5, v2, v2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addStack(Lcom/fima/cardsui/objects/CardStack;IZZ)V

    goto :goto_11

    .line 454
    :cond_26
    invoke-static {v5}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->removeStack(I)V

    :cond_27
    :goto_11
    and-int/lit16 v3, p1, 0x80

    if-eqz v3, :cond_2a

    if-nez v4, :cond_28

    .line 464
    new-instance v4, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;

    invoke-direct {v4, v0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;-><init>(Lio/realm/Realm;)V

    .line 465
    :cond_28
    invoke-static {v0, p0, v4}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addMinistryStatistics(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;)Lcom/fima/cardsui/objects/CardStack;

    move-result-object v3

    const/16 v4, 0x80

    if-eqz v3, :cond_29

    .line 467
    invoke-static {v3, v4, v2, v2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addStack(Lcom/fima/cardsui/objects/CardStack;IZZ)V

    goto :goto_12

    .line 469
    :cond_29
    invoke-static {v4}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->removeStack(I)V

    :cond_2a
    :goto_12
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_2c

    .line 474
    sget v3, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_2c

    .line 475
    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addMonthReport(Lio/realm/Realm;Landroid/content/Context;)Lcom/fima/cardsui/objects/CardStack;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 477
    invoke-static {v3, v4, v2, v2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addStack(Lcom/fima/cardsui/objects/CardStack;IZZ)V

    goto :goto_13

    .line 479
    :cond_2b
    invoke-static {v4}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->removeStack(I)V

    :cond_2c
    :goto_13
    const/16 v3, 0x100

    and-int/2addr p1, v3

    if-eqz p1, :cond_2e

    .line 484
    sget p1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_2e

    .line 485
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$BooleanResult;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$BooleanResult;-><init>()V

    .line 486
    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$BooleanResult;->setResult(Z)V

    .line 487
    invoke-static {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addMinistryTips(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$BooleanResult;Lcom/lostpixels/fieldservice/ui/nowcards/UpdateCardsInterface;)Lcom/fima/cardsui/objects/CardStack;

    move-result-object p2

    if-eqz p2, :cond_2d

    .line 489
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$BooleanResult;->getResult()Z

    move-result p1

    invoke-static {p2, v3, v1, p1}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addStack(Lcom/fima/cardsui/objects/CardStack;IZZ)V

    goto :goto_14

    .line 491
    :cond_2d
    invoke-static {v3}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->removeStack(I)V

    .line 496
    :cond_2e
    :goto_14
    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addHourRequirement(Lio/realm/Realm;Landroid/content/Context;)Lcom/fima/cardsui/objects/CardStack;

    move-result-object p0

    const/high16 p1, 0x20000

    if-eqz p0, :cond_2f

    .line 498
    invoke-static {p0, p1, v1, v1}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->addStack(Lcom/fima/cardsui/objects/CardStack;IZZ)V

    goto :goto_15

    .line 500
    :cond_2f
    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->removeStack(I)V

    .line 502
    :goto_15
    sput-boolean v2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbShouldUpdate:Z

    .line 503
    const-string p0, "Create cards"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 505
    sget-object p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    return-object p0
.end method

.method public static generateExampleCards(Landroid/content/Context;)Ljava/util/List;
    .locals 8

    .line 241
    sget-object v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mExampleCardList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mExampleCardList:Ljava/util/List;

    .line 250
    new-instance v0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 251
    new-instance v1, Lcom/lostpixels/fieldservice/ui/nowcards/SwipeMenuCard;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/ui/nowcards/SwipeMenuCard;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    const v1, 0x7f12050b

    .line 252
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fima/cardsui/objects/CardStack;->setTitle(Ljava/lang/String;)V

    .line 253
    sget-object v1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mExampleCardList:Ljava/util/List;

    new-instance v2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;

    const/16 v3, 0x800

    invoke-direct {v2, v0, v3}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;-><init>(Lcom/fima/cardsui/objects/CardStack;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 257
    new-instance v1, Lcom/lostpixels/fieldservice/ui/nowcards/ReportGoalCard;

    const v2, 0x7f120062

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200aa

    .line 258
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "42"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 257
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f120418

    .line 259
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5, v7}, Lcom/lostpixels/fieldservice/ui/nowcards/ReportGoalCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 257
    invoke-virtual {v0, v1}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    .line 260
    sget-object v1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mExampleCardList:Ljava/util/List;

    new-instance v2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;

    invoke-direct {v2, v0, v4}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;-><init>(Lcom/fima/cardsui/objects/CardStack;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {v0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 264
    new-instance v1, Lcom/lostpixels/fieldservice/ui/nowcards/ExampleAppointmentPersonCard;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/ui/nowcards/ExampleAppointmentPersonCard;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    const v1, 0x7f1201aa

    .line 265
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/fima/cardsui/objects/CardStack;->setTitle(Ljava/lang/String;)V

    .line 266
    sget-object p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mExampleCardList:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;

    const/16 v2, 0x40

    invoke-direct {v1, v0, v2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;-><init>(Lcom/fima/cardsui/objects/CardStack;I)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance p0, Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {p0}, Lcom/fima/cardsui/objects/CardStack;-><init>()V

    .line 270
    new-instance v0, Lcom/lostpixels/fieldservice/ui/nowcards/ExampleTerritoryCard;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/ui/nowcards/ExampleTerritoryCard;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    .line 271
    sget-object v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mExampleCardList:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;-><init>(Lcom/fima/cardsui/objects/CardStack;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mExampleCardList:Ljava/util/List;

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static isAboutSameDateAndTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    const/16 v0, 0xb

    .line 950
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 951
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x6

    .line 952
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v3, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    .line 953
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_3

    sub-int p0, v1, v0

    const/4 p1, 0x2

    const/4 v2, 0x1

    if-gt p0, p1, :cond_1

    if-gez p0, :cond_2

    :cond_1
    sub-int/2addr v0, v1

    if-gt v0, v2, :cond_3

    if-ltz v0, :cond_3

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isNotToday(Ljava/util/Date;)Z
    .locals 4

    .line 232
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 233
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 234
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 235
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 236
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x6

    .line 237
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private static removeNotToBeDisplayed(I)V
    .locals 2

    .line 225
    sget-object v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 226
    sget-object v1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;

    iget v1, v1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;->stackType:I

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    .line 227
    sget-object v1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static removeStack(I)V
    .locals 3

    .line 215
    sget-object v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;

    .line 216
    iget v2, v2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;->stackType:I

    if-ne v2, p0, :cond_0

    .line 217
    sget-object p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static resetCards()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    sput-object v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    const/4 v0, -0x1

    .line 129
    sput v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const/4 v0, 0x1

    .line 130
    sput-boolean v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbShouldUpdate:Z

    return-void
.end method

.method public static resetEnableBackup()V
    .locals 2

    .line 187
    sget v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const v1, 0x8000

    or-int/2addr v0, v1

    sput v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const/4 v0, 0x1

    .line 188
    sput-boolean v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbShouldUpdate:Z

    return-void
.end method

.method public static resetLatestTerritory()V
    .locals 1

    .line 157
    sget v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const/4 v0, 0x1

    .line 158
    sput-boolean v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbShouldUpdate:Z

    return-void
.end method

.method public static resetMinistryStatistics()V
    .locals 1

    .line 177
    sget v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/lit16 v0, v0, 0x80

    sput v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const/4 v0, 0x1

    .line 178
    sput-boolean v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbShouldUpdate:Z

    return-void
.end method

.method public static resetMinistryTips()V
    .locals 1

    .line 182
    sget v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/lit16 v0, v0, 0x100

    sput v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const/4 v0, 0x1

    .line 183
    sput-boolean v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbShouldUpdate:Z

    return-void
.end method

.method public static resetMonthReport()V
    .locals 1

    .line 147
    sget v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const/4 v0, 0x1

    .line 148
    sput-boolean v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbShouldUpdate:Z

    return-void
.end method

.method public static resetOldVisits()V
    .locals 1

    .line 152
    sget v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const/4 v0, 0x1

    .line 153
    sput-boolean v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbShouldUpdate:Z

    return-void
.end method

.method public static resetPinnedVisits()V
    .locals 1

    .line 162
    sget v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/lit8 v0, v0, 0x20

    sput v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const/4 v0, 0x1

    .line 163
    sput-boolean v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbShouldUpdate:Z

    return-void
.end method

.method public static resetScheduledVisits()V
    .locals 1

    .line 167
    sget v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/lit8 v0, v0, 0x40

    sput v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const/4 v0, 0x1

    .line 168
    sput-boolean v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbShouldUpdate:Z

    return-void
.end method

.method public static resetTimeBehind()V
    .locals 1

    .line 134
    sget v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/lit16 v0, v0, 0x7001

    .line 137
    sput v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const/4 v0, 0x1

    .line 138
    sput-boolean v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbShouldUpdate:Z

    return-void
.end method

.method public static resetTimePlanned()V
    .locals 1

    .line 142
    sget v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const/4 v0, 0x1

    .line 143
    sput-boolean v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbShouldUpdate:Z

    return-void
.end method

.method public static resetVisitsAboutNow()V
    .locals 1

    .line 172
    sget v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    or-int/lit16 v0, v0, 0x200

    sput v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardsToUpdate:I

    const/4 v0, 0x1

    .line 173
    sput-boolean v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbShouldUpdate:Z

    return-void
.end method

.method public static setClickable(Z)V
    .locals 7

    .line 90
    sget-object v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;

    .line 92
    iget-object v2, v2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;->stack:Lcom/fima/cardsui/objects/CardStack;

    invoke-virtual {v2}, Lcom/fima/cardsui/objects/CardStack;->getCards()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/fima/cardsui/objects/Card;

    .line 93
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fima/cardsui/objects/AbstractCard;->setIsClickable(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 98
    :cond_1
    sget-object v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mExampleCardList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;

    .line 100
    iget-object v2, v2, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;->stack:Lcom/fima/cardsui/objects/CardStack;

    invoke-virtual {v2}, Lcom/fima/cardsui/objects/CardStack;->getCards()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/fima/cardsui/objects/Card;

    .line 101
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fima/cardsui/objects/AbstractCard;->setIsClickable(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static setTheme(Z)V
    .locals 2

    .line 112
    sput-boolean p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbLightTheme:Z

    .line 114
    sget-object v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mCardList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;

    .line 116
    iget-object v1, v1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;->stack:Lcom/fima/cardsui/objects/CardStack;

    invoke-virtual {v1, p0}, Lcom/fima/cardsui/objects/CardStack;->setTheme(Z)V

    goto :goto_0

    .line 120
    :cond_0
    sget-object v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mExampleCardList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;

    .line 122
    iget-object v1, v1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;->stack:Lcom/fima/cardsui/objects/CardStack;

    invoke-virtual {v1, p0}, Lcom/fima/cardsui/objects/CardStack;->setTheme(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static shouldUpdate()Z
    .locals 1

    .line 108
    sget-boolean v0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->mbShouldUpdate:Z

    return v0
.end method
