.class Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem1IsTime(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

.field final synthetic val$isTime:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Z)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$6;->val$isTime:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$6;->val$isTime:Z

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem1IsTime(Z)V

    .line 335
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustomDate(Ljava/util/Date;)V

    return-void
.end method
