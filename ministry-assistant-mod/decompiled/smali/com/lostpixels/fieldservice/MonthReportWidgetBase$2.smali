.class Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appWidgetId:I

.field final synthetic val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$iLayout:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iput p3, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;->val$appWidgetId:I

    iput p4, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;->val$iLayout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(I)V
    .locals 9

    .line 370
    iget-object v0, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->getRealmInstance(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v1

    if-nez p1, :cond_0

    .line 373
    :try_start_0
    new-instance p1, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2$1;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2$1;-><init>(Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;)V

    invoke-virtual {v1, p1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 380
    iget-object p1, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->deleteServiceFile(Landroid/content/Context;)V

    .line 381
    iget-object p1, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->deleteMinistryFile(Landroid/content/Context;)V

    .line 382
    iget-object p1, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;->val$context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->-$$Nest$smonlyShowDoneMinistry(Landroid/content/Context;Lio/realm/Realm;)Z

    move-result v8

    .line 383
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 384
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer(Ljava/util/Date;)Z

    move-result v6

    .line 385
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    .line 386
    iget-object v2, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v4, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;->val$appWidgetId:I

    iget v7, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;->val$iLayout:I

    invoke-static/range {v2 .. v8}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->-$$Nest$smupdateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILcom/lostpixels/fieldservice/internal/report/ServiceSession;ZIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 389
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 390
    throw p1

    .line 389
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    return-void
.end method
