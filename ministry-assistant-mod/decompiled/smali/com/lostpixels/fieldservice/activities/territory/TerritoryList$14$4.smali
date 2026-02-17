.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$4;
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

    .line 1875
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$4;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1877
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$4;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 1878
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 1879
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset()V

    goto :goto_0

    .line 1883
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$4;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 1884
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$4;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    return-void
.end method
