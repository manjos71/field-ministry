.class public Lcom/hlab/fabrevealmenu/view/DynamicGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# instance fields
.field private minItemWidth:I

.field private totalItems:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 14
    iput p2, p0, Lcom/hlab/fabrevealmenu/view/DynamicGridLayoutManager;->minItemWidth:I

    .line 15
    iput p3, p0, Lcom/hlab/fabrevealmenu/view/DynamicGridLayoutManager;->totalItems:I

    return-void
.end method

.method private updateSpanCount()V
    .locals 3

    .line 31
    iget v0, p0, Lcom/hlab/fabrevealmenu/view/DynamicGridLayoutManager;->minItemWidth:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/hlab/fabrevealmenu/view/DynamicGridLayoutManager;->minItemWidth:I

    div-int/2addr v0, v2

    iget v2, p0, Lcom/hlab/fabrevealmenu/view/DynamicGridLayoutManager;->totalItems:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/hlab/fabrevealmenu/view/DynamicGridLayoutManager;->updateSpanCount()V

    .line 22
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method
