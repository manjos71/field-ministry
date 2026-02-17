.class Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/MonthReportWidgetBase;

.field final synthetic val$appWidgetIds:[I

.field final synthetic val$appWidgetIds2:[I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$manager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/MonthReportWidgetBase;Landroid/content/Context;[ILandroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->this$0:Lcom/lostpixels/fieldservice/MonthReportWidgetBase;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->val$appWidgetIds:[I

    iput-object p4, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->val$manager:Landroid/appwidget/AppWidgetManager;

    iput-object p5, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->val$appWidgetIds2:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(I)V
    .locals 11

    .line 507
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1

    if-nez p1, :cond_3

    .line 511
    :try_start_0
    new-instance p1, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4$1;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4$1;-><init>(Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;)V

    invoke-virtual {v1, p1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 518
    iget-object p1, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->deleteServiceFile(Landroid/content/Context;)V

    .line 519
    iget-object p1, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->deleteMinistryFile(Landroid/content/Context;)V

    .line 520
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 521
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer(Ljava/util/Date;)Z

    move-result v6

    .line 522
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    .line 523
    iget-object p1, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->val$context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->-$$Nest$smonlyShowDoneMinistry(Landroid/content/Context;Lio/realm/Realm;)Z

    move-result v8

    .line 526
    iget-object p1, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->val$appWidgetIds:[I

    array-length v0, p1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v0, :cond_1

    aget v4, p1, v10

    .line 527
    iget-object v2, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->val$manager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const v2, 0x7f0c00b9

    const v7, 0x7f0c00b9

    goto :goto_1

    .line 528
    :cond_0
    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    move v7, v2

    .line 529
    :goto_1
    iget-object v2, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->val$manager:Landroid/appwidget/AppWidgetManager;

    invoke-static/range {v2 .. v8}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->-$$Nest$smupdateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILcom/lostpixels/fieldservice/internal/report/ServiceSession;ZIZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    .line 532
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->val$appWidgetIds2:[I

    array-length v0, p1

    :goto_2
    if-ge v9, v0, :cond_3

    aget v4, p1, v9

    .line 533
    iget-object v2, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->val$manager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-nez v2, :cond_2

    const v2, 0x7f0c00b8

    const v7, 0x7f0c00b8

    goto :goto_3

    .line 534
    :cond_2
    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    move v7, v2

    .line 535
    :goto_3
    iget-object v2, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;->val$manager:Landroid/appwidget/AppWidgetManager;

    invoke-static/range {v2 .. v8}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->-$$Nest$smupdateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILcom/lostpixels/fieldservice/internal/report/ServiceSession;ZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 540
    :goto_4
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    return-void

    :goto_5
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 543
    throw p1

    .line 542
    :cond_3
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    return-void
.end method
