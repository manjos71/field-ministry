.class Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setUsingCustom2(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

.field final synthetic val$usingCustom2:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Z)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$4;->val$usingCustom2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$4;->val$usingCustom2:Z

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$usingCustom2(Z)V

    .line 307
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustomDate(Ljava/util/Date;)V

    return-void
.end method
