.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->displayFilterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 866
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget v0, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 867
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmSortFilter(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/ui/SortFilter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/ui/SortFilter;->setSelected(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 869
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmSortFilter(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/ui/SortFilter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/ui/SortFilter;->setSelected(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 871
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmSortFilter(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/ui/SortFilter;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/ui/SortFilter;->setSelected(I)V

    goto :goto_0

    .line 873
    :cond_2
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmSortFilter(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/ui/SortFilter;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/ui/SortFilter;->setSelected(I)V

    .line 874
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmSortFilter(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/ui/SortFilter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
