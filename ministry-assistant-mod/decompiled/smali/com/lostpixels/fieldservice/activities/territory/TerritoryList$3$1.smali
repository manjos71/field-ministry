.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->onTabClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;

.field final synthetic val$names:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;Ljava/util/List;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3$1;->val$names:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 531
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fputfilterStreet(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;)V

    .line 532
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmSortFilter(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/ui/SortFilter;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Lcom/lostpixels/fieldservice/ui/SortFilter;->setChecked(IZ)V

    goto :goto_0

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3$1;->val$names:Ljava/util/List;

    sub-int/2addr p2, p1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 535
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v2, v3, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fputfilterStreet(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;)V

    .line 537
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmSortFilter(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/ui/SortFilter;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/lostpixels/fieldservice/ui/SortFilter;->setChecked(IZ)V

    .line 539
    :goto_0
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 540
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mupdateFilterInfo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    .line 541
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 542
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    :cond_1
    return-void
.end method
