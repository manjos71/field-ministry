.class Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

.field final synthetic val$iYear:I

.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;ILio/realm/Realm;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$13;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iput p2, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$13;->val$iYear:I

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$13;->val$realm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 451
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$13;->val$iYear:I

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;-><init>(I)V

    .line 452
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$13;->val$realm:Lio/realm/Realm;

    const/4 v2, 0x0

    new-array v2, v2, [Lio/realm/ImportFlag;

    invoke-virtual {v1, v0, v2}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    .line 453
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$13;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    return-void
.end method
