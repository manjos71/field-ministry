.class public Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;


# instance fields
.field private profileImage:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;
    .locals 1

    .line 59
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->instance:Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->instance:Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    .line 61
    :cond_0
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->instance:Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    return-object v0
.end method

.method public static removeOldProfile(Lio/realm/Realm;Ljava/util/Calendar;)V
    .locals 4

    .line 65
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 67
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p0

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->setInfirmPioneer(Z)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isAuxiliary(Ljava/util/Date;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p0, v0, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p0

    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPublisher()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 72
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, v3

    .line 73
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result p1

    :goto_0
    const/16 v0, 0xc

    if-gt p1, v0, :cond_1

    .line 74
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(IZ)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v2, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 75
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setMonthProfile(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setProfile(Lio/realm/Realm;IIZ)V
    .locals 6

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    .line 84
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x5

    if-lt p1, v4, :cond_1

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 85
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 86
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v4

    .line 87
    invoke-virtual {v1, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 88
    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    if-eqz v3, :cond_2

    add-int/lit8 v4, v4, -0x1

    .line 89
    :cond_2
    invoke-virtual {v1, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 91
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p1, p0, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v3

    sub-int/2addr v3, v0

    .line 93
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 125
    :pswitch_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary100()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq v3, p1, :cond_3

    goto/16 :goto_2

    .line 121
    :pswitch_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary90()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq v3, p1, :cond_3

    goto/16 :goto_2

    .line 138
    :pswitch_2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isProfileNone()Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_2

    .line 129
    :pswitch_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isCircuitOversser()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq v3, p1, :cond_3

    goto/16 :goto_2

    .line 134
    :pswitch_4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 117
    :pswitch_5
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer100()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq v3, p1, :cond_3

    goto :goto_2

    .line 113
    :pswitch_6
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer90()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq v3, p1, :cond_3

    goto :goto_2

    .line 109
    :pswitch_7
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v3, v0, :cond_4

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isInfirmPioneer()Z

    move-result p1

    if-eq p1, p3, :cond_3

    goto :goto_2

    .line 105
    :pswitch_8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isAuxiliry30()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 101
    :pswitch_9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isAuxiliry15()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 97
    :pswitch_a
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPublisher()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isAuxiliry()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    .line 145
    :cond_4
    :goto_2
    invoke-static {p0, v1, p2, p3}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V
    .locals 1

    .line 149
    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;-><init>(Ljava/util/Calendar;ILio/realm/Realm;Z)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public static updateHourRequirement(Lio/realm/Realm;)V
    .locals 1

    .line 278
    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;-><init>(Lio/realm/Realm;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method


# virtual methods
.method public getProfileImage(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->profileImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 331
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getProfileImage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->profileImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getProfileImage"

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->profileImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getThemeColor(Landroid/content/Context;)I
    .locals 0

    .line 406
    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->getThemeColor(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getThemeColorList(Landroid/content/Context;)[I
    .locals 14

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 361
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 367
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06002e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    filled-new-array/range {v2 .. v13}, [I

    move-result-object p1

    return-object p1
.end method

.method public getThemeColorName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 378
    sget-object p1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_PURPLE:Ljava/lang/String;

    return-object p1

    .line 379
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 380
    sget-object p1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_BLUE:Ljava/lang/String;

    return-object p1

    .line 381
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 382
    sget-object p1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_RED:Ljava/lang/String;

    return-object p1

    .line 383
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 384
    sget-object p1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_YELLOW:Ljava/lang/String;

    return-object p1

    .line 385
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 386
    sget-object p1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_DARK:Ljava/lang/String;

    return-object p1

    .line 387
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 388
    sget-object p1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_GREEN:Ljava/lang/String;

    return-object p1

    .line 389
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 390
    sget-object p1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_GREENER:Ljava/lang/String;

    return-object p1

    .line 391
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-ne p2, v0, :cond_7

    .line 392
    sget-object p1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_ORANGE:Ljava/lang/String;

    return-object p1

    .line 393
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 394
    sget-object p1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_LIME:Ljava/lang/String;

    return-object p1

    .line 395
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 396
    sget-object p1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_STEEL:Ljava/lang/String;

    return-object p1

    .line 397
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-ne p2, v0, :cond_a

    .line 398
    sget-object p1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_PINK:Ljava/lang/String;

    return-object p1

    .line 399
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06002e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    if-ne p2, p1, :cond_b

    .line 400
    sget-object p1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_BROWN:Ljava/lang/String;

    return-object p1

    .line 402
    :cond_b
    sget-object p1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_DEFAULT:Ljava/lang/String;

    return-object p1
.end method

.method public setTheme(Landroid/content/Context;Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;)V
    .locals 0

    .line 350
    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->saveTheme(Landroid/content/Context;Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;)V

    return-void
.end method

.method public setThemeColor(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 354
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 355
    const-string v0, "selectedThemeColor"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 356
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateProfileImage()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->profileImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->profileImage:Landroid/graphics/Bitmap;

    return-void
.end method
