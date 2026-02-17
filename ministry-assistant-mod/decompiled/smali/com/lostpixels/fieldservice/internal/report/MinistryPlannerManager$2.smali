.class Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->sort(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

.field final synthetic val$iYear:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;I)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    iput p2, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$2;->val$iYear:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$2;->val$iYear:I

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->-$$Nest$mgetYear(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;I)Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$DateCompare;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$DateCompare;-><init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager-IA;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method
