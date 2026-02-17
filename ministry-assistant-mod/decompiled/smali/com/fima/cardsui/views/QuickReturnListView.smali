.class public Lcom/fima/cardsui/views/QuickReturnListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field private mHeight:I

.field private mItemOffsetY:[I

.field private scrollIsComputed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/fima/cardsui/views/QuickReturnListView;->scrollIsComputed:Z

    return-void
.end method


# virtual methods
.method public getComputedScrollY()I
    .locals 3

    .line 56
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 59
    iget-object v2, p0, Lcom/fima/cardsui/views/QuickReturnListView;->mItemOffsetY:[I

    aget v0, v2, v0

    sub-int/2addr v0, v1

    return v0
.end method

.method public getListHeight()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/fima/cardsui/views/QuickReturnListView;->mHeight:I

    return v0
.end method
