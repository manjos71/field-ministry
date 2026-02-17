.class Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->fixBugWithNull(Lio/realm/Realm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

.field final synthetic val$items:Lio/realm/RealmResults;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;Lio/realm/RealmResults;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$7;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$7;->val$items:Lio/realm/RealmResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 631
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$7;->val$items:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    .line 632
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmSet$comment(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
