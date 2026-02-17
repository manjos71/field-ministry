.class Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->merge(Lcom/fasterxml/jackson/core/JsonParser;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

.field final synthetic val$rhs:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$4;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 465
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$dateChanged()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmSet$dateChanged(Ljava/util/Date;)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$4;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$dateChanged()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmSet$dateChanged(Ljava/util/Date;)V

    .line 469
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 470
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$4;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$4;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method
