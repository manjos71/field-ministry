.class Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$2;->onFileOperationComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$2;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$2;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$2$1;->this$1:Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 2

    .line 622
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$2$1;->this$1:Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$2;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$2;->this$0:Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->loadFromFile(Landroid/content/Context;)Z

    .line 623
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$2$1;->this$1:Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$2;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$2;->this$0:Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->loadFromFile(Landroid/content/Context;)Z

    return-void
.end method
