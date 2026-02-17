.class public Lcom/hlab/fabrevealmenu/helper/ViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final SHEET_REVEAL_OFFSET_Y:I

.field private const_val:I

.field private mContext:Landroid/content/Context;

.field private matchParams:Landroid/view/ViewGroup$LayoutParams;

.field private wrapParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 22
    iput v0, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->SHEET_REVEAL_OFFSET_Y:I

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->const_val:I

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->matchParams:Landroid/view/ViewGroup$LayoutParams;

    .line 27
    iput-object v0, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->wrapParams:Landroid/view/ViewGroup$LayoutParams;

    .line 30
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->mContext:Landroid/content/Context;

    .line 31
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->matchParams:Landroid/view/ViewGroup$LayoutParams;

    .line 32
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->wrapParams:Landroid/view/ViewGroup$LayoutParams;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->const_val:I

    return-void
.end method


# virtual methods
.method public alignMenuWithFab(Landroid/view/View;Landroid/view/View;Lcom/hlab/fabrevealmenu/enums/Direction;)V
    .locals 9

    .line 84
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 89
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v2, 0x2

    .line 92
    new-array v3, v2, [I

    .line 93
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 97
    new-array v2, v2, [I

    .line 98
    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    .line 100
    aget v5, v2, v4

    aget v6, v3, v4

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 101
    aget v6, v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v4, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v4, v7

    sub-int/2addr v6, v4

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    neg-int v4, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v6, 0x1

    .line 102
    aget v7, v2, v6

    aget v8, v3, v6

    sub-int/2addr v7, v8

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 103
    aget v2, v2, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v2, v8

    aget v3, v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    sub-int/2addr v2, v3

    iget p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    neg-int p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    .line 106
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    .line 108
    sget-object v3, Lcom/hlab/fabrevealmenu/enums/Direction;->LEFT:Lcom/hlab/fabrevealmenu/enums/Direction;

    if-eq p3, v3, :cond_3

    sget-object v3, Lcom/hlab/fabrevealmenu/enums/Direction;->UP:Lcom/hlab/fabrevealmenu/enums/Direction;

    if-ne p3, v3, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    sget-object v3, Lcom/hlab/fabrevealmenu/enums/Direction;->RIGHT:Lcom/hlab/fabrevealmenu/enums/Direction;

    if-ne p3, v3, :cond_1

    int-to-float p3, v5

    sub-float/2addr v1, p3

    .line 115
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float p3, p3

    add-float/2addr v1, p3

    invoke-virtual {p2, v1}, Landroid/view/View;->setX(F)V

    int-to-float p1, p1

    sub-float/2addr v2, p1

    .line 117
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float p1, p1

    sub-float/2addr v2, p1

    invoke-virtual {p2, v2}, Landroid/view/View;->setY(F)V

    return-void

    .line 118
    :cond_1
    sget-object p1, Lcom/hlab/fabrevealmenu/enums/Direction;->DOWN:Lcom/hlab/fabrevealmenu/enums/Direction;

    if-ne p3, p1, :cond_2

    int-to-float p1, v7

    sub-float/2addr v2, p1

    .line 120
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float p1, p1

    add-float/2addr v2, p1

    invoke-virtual {p2, v2}, Landroid/view/View;->setY(F)V

    int-to-float p1, v4

    sub-float/2addr v1, p1

    .line 122
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    invoke-virtual {p2, v1}, Landroid/view/View;->setX(F)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    int-to-float p3, v4

    sub-float/2addr v1, p3

    .line 110
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float p3, p3

    sub-float/2addr v1, p3

    invoke-virtual {p2, v1}, Landroid/view/View;->setX(F)V

    int-to-float p1, p1

    sub-float/2addr v2, p1

    .line 112
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float p1, p1

    sub-float/2addr v2, p1

    invoke-virtual {p2, v2}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public dpToPx(Landroid/content/Context;I)I
    .locals 1

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    int-to-float p2, p2

    .line 190
    iget p1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public generateBaseView()Landroidx/cardview/widget/CardView;
    .locals 3

    .line 39
    new-instance v0, Landroidx/cardview/widget/CardView;

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 40
    iget-object v1, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->matchParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object v1, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 42
    iget-object v1, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/hlab/fabrevealmenu/R$dimen;->card_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    return-object v0
.end method

.method public generateMenuView(Z)Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    .line 48
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    iget-object v1, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->matchParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-object v0
.end method

.method public generateOverlayView()Landroid/widget/FrameLayout;
    .locals 3

    .line 67
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    iget-object v1, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->matchParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    const/16 v1, 0x8

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-object v0
.end method

.method public generateRevealView()Lio/codetail/widget/RevealLinearLayout;
    .locals 2

    .line 58
    new-instance v0, Lio/codetail/widget/RevealLinearLayout;

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/codetail/widget/RevealLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 60
    iget-object v1, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->wrapParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x4

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public getSheetRevealCenterX(Landroid/view/View;Lcom/hlab/fabrevealmenu/enums/Direction;)I
    .locals 1

    .line 156
    sget-object v0, Lcom/hlab/fabrevealmenu/enums/Direction;->LEFT:Lcom/hlab/fabrevealmenu/enums/Direction;

    if-ne p2, v0, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->const_val:I

    mul-int p1, p1, v0

    :goto_0
    int-to-float p1, p1

    add-float/2addr p2, p1

    :goto_1
    float-to-int p1, p2

    return p1

    .line 158
    :cond_0
    sget-object v0, Lcom/hlab/fabrevealmenu/enums/Direction;->RIGHT:Lcom/hlab/fabrevealmenu/enums/Direction;

    if-ne p2, v0, :cond_1

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->const_val:I

    mul-int p1, p1, v0

    int-to-float p1, p1

    sub-float/2addr p2, p1

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    goto :goto_0
.end method

.method public getSheetRevealCenterY(Landroid/view/View;Lcom/hlab/fabrevealmenu/enums/Direction;)I
    .locals 1

    .line 165
    sget-object v0, Lcom/hlab/fabrevealmenu/enums/Direction;->UP:Lcom/hlab/fabrevealmenu/enums/Direction;

    if-ne p2, v0, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->const_val:I

    mul-int p1, p1, v0

    :goto_0
    int-to-float p1, p1

    add-float/2addr p2, p1

    :goto_1
    float-to-int p1, p2

    return p1

    .line 167
    :cond_0
    sget-object v0, Lcom/hlab/fabrevealmenu/enums/Direction;->DOWN:Lcom/hlab/fabrevealmenu/enums/Direction;

    if-ne p2, v0, :cond_1

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->const_val:I

    mul-int p1, p1, v0

    int-to-float p1, p1

    sub-float/2addr p2, p1

    goto :goto_1

    .line 170
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    goto :goto_0
.end method

.method public setFabAnchor(Landroid/view/View;FF)Landroid/graphics/Point;
    .locals 2

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    sub-float/2addr p2, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    sub-float/2addr p3, p1

    add-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 185
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p3
.end method

.method public setLayoutParams(Landroid/view/View;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->matchParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateFabAnchor(Landroid/view/View;)Landroid/graphics/Point;
    .locals 2

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->setFabAnchor(Landroid/view/View;FF)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method
