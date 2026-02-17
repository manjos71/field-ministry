.class Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->removeDate(Ljava/util/Date;Lio/realm/RealmList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$list:Lio/realm/RealmList;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;Ljava/util/Date;Lio/realm/RealmList;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$3;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$3;->val$date:Ljava/util/Date;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$3;->val$list:Lio/realm/RealmList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$3;->val$date:Ljava/util/Date;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getDateId(Ljava/util/Date;)I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$3;->val$list:Lio/realm/RealmList;

    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v2, v0, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;-><init>(IFLjava/lang/String;)V

    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$DateCompare;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$3;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$DateCompare;-><init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager-IA;)V

    invoke-static {v1, v2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$3;->val$list:Lio/realm/RealmList;

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->deleteFromRealm(I)V

    :cond_0
    return-void
.end method
