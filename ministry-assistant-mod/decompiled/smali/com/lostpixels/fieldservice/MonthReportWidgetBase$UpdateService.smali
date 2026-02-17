.class public Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/MonthReportWidgetBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 579
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11

    const/4 p1, 0x1

    .line 586
    :try_start_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 587
    new-instance p2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-class v0, Lcom/lostpixels/fieldservice/MonthReportWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-virtual {v2, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p2

    .line 589
    new-instance p3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/lostpixels/fieldservice/MonthReportWidget4x1;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v2, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p3

    .line 593
    array-length v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    if-lez v0, :cond_6

    .line 595
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->ministryFileExists(Landroid/content/Context;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceFileExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v1, p0

    goto/16 :goto_a

    .line 656
    :cond_1
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 658
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 659
    invoke-static {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    invoke-virtual {v1, v9, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer(Ljava/util/Date;)Z

    move-result v5

    .line 660
    invoke-static {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    invoke-virtual {v1, v9, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v4

    .line 661
    invoke-static {p0, v9}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->-$$Nest$smonlyShowDoneMinistry(Landroid/content/Context;Lio/realm/Realm;)Z

    move-result v7

    .line 664
    array-length v0, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v0, :cond_3

    :try_start_2
    aget v3, p2, v10

    .line 665
    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const v1, 0x7f0c00b9

    const v6, 0x7f0c00b9

    :goto_1
    move-object v1, p0

    goto :goto_2

    .line 666
    :cond_2
    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    move v6, v1

    goto :goto_1

    .line 667
    :goto_2
    invoke-static/range {v1 .. v7}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->-$$Nest$smupdateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILcom/lostpixels/fieldservice/internal/report/ServiceSession;ZIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    move-object v1, p0

    goto :goto_9

    .line 670
    :cond_3
    :try_start_3
    array-length p2, p3

    :goto_3
    if-ge v8, p2, :cond_5

    aget v3, p3, v8

    .line 671
    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-nez v0, :cond_4

    const v0, 0x7f0c00b8

    const v6, 0x7f0c00b8

    :goto_4
    move-object v1, p0

    goto :goto_5

    .line 672
    :cond_4
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v6, v0

    goto :goto_4

    .line 673
    :goto_5
    :try_start_4
    invoke-static/range {v1 .. v7}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->-$$Nest$smupdateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILcom/lostpixels/fieldservice/internal/report/ServiceSession;ZIZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_6
    move-object p2, v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_6

    :cond_5
    move-object v1, p0

    .line 676
    :try_start_5
    invoke-virtual {v9}, Lio/realm/Realm;->close()V

    goto :goto_b

    :catchall_3
    move-exception v0

    :goto_7
    move-object p2, v0

    goto :goto_e

    :catch_0
    move-exception v0

    :goto_8
    move-object p2, v0

    goto :goto_c

    :goto_9
    invoke-virtual {v9}, Lio/realm/Realm;->close()V

    .line 677
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_4
    move-exception v0

    move-object v1, p0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, p0

    goto :goto_8

    .line 599
    :goto_a
    :try_start_6
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 601
    :try_start_7
    new-instance v0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$1;-><init>(Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService;)V

    invoke-virtual {p1, v0}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 608
    :try_start_8
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    .line 612
    new-instance p1, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$2;

    invoke-direct {p1, p0, p2, v2, p3}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$2;-><init>(Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService;[ILandroid/appwidget/AppWidgetManager;[I)V

    const-string p2, "SearchActivity"

    invoke-static {p0, p1, p2}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->loadInternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;Ljava/lang/String;)V

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object p2, v0

    const/4 p1, 0x0

    goto :goto_e

    :catch_2
    move-exception v0

    move-object p2, v0

    const/4 p1, 0x0

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object p2, v0

    .line 608
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    .line 609
    throw p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_6
    move-object v1, p0

    .line 684
    :goto_b
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_d

    .line 681
    :goto_c
    :try_start_9
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz p1, :cond_7

    goto :goto_b

    :cond_7
    :goto_d
    const/4 p1, 0x2

    return p1

    :goto_e
    if-eqz p1, :cond_8

    .line 684
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 685
    :cond_8
    throw p2
.end method
