.class Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getYearTotal(I)F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

.field final synthetic val$lstIncorrectItems:Ljava/util/List;

.field final synthetic val$year:Lio/realm/RealmList;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;Ljava/util/List;Lio/realm/RealmList;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$1;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$1;->val$lstIncorrectItems:Ljava/util/List;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$1;->val$year:Lio/realm/RealmList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$1;->val$lstIncorrectItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    .line 215
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$1;->val$year:Lio/realm/RealmList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 217
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$1;->val$year:Lio/realm/RealmList;

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->deleteFromRealm(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
