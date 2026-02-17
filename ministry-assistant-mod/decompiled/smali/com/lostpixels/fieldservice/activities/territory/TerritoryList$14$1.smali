.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;)V
    .locals 0

    .line 1771
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 p1, 0x4

    .line 1777
    new-array p1, p1, [Z

    fill-array-data p1, :array_0

    .line 1779
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mcreateShareStreet(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Street;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    .line 1780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1781
    const-string v2, "MA Export"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1782
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": "

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1783
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1786
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1787
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 1788
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1789
    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    :cond_1
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1792
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-nez p2, :cond_3

    .line 1797
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$1200(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p2

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v2, v1, v0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendTerritoryAsText(Lio/realm/Realm;Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;[Z)V

    return-void

    .line 1801
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$1300(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendTerritoryAsData(Lio/realm/Realm;Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method
