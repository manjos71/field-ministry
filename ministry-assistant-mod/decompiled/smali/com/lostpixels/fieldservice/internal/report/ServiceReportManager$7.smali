.class Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustom2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

.field final synthetic val$custom2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Ljava/lang/String;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$7;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$7;->val$custom2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$7;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$7;->val$custom2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustom2(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$7;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustomDate(Ljava/util/Date;)V

    return-void
.end method
