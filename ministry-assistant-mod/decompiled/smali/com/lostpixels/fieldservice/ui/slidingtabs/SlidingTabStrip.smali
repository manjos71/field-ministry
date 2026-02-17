.class Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip$SimpleTabColorizer;
    }
.end annotation


# instance fields
.field private final mBottomBorderPaint:Landroid/graphics/Paint;

.field private final mBottomBorderThickness:I

.field private mCustomTabColorizer:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabColorizer;

.field private final mDefaultBottomBorderColor:I

.field private final mDefaultTabColorizer:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip$SimpleTabColorizer;

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private final mSelectedIndicatorThickness:I

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field radius:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 67
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 71
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010030

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 73
    iget v0, v0, Landroid/util/TypedValue;->data:I

    const/16 v1, 0x26

    .line 75
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->setColorAlpha(IB)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mDefaultBottomBorderColor:I

    .line 78
    new-instance v1, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip$SimpleTabColorizer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip$SimpleTabColorizer;-><init>(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip-IA;)V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mDefaultTabColorizer:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip$SimpleTabColorizer;

    const v2, -0xcc4a1b

    .line 79
    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    const/4 v1, 0x0

    mul-float v1, v1, p2

    float-to-int v1, v1

    .line 81
    iput v1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mBottomBorderThickness:I

    .line 82
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    .line 83
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40400000    # 3.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 85
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectedIndicatorThickness:I

    .line 86
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 p2, 0x40a00000    # 5.0f

    .line 89
    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->pxFromDp(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->radius:F

    return-void
.end method

.method private static blendColors(IIF)I
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 107
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 108
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    .line 109
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int p0, p0

    .line 110
    invoke-static {p1, p2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private roundedRect(FFFFFFZ)Landroid/graphics/Path;
    .locals 5

    .line 133
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    cmpg-float v2, p5, v1

    if-gez v2, :cond_0

    const/4 p5, 0x0

    :cond_0
    cmpg-float v2, p6, v1

    if-gez v2, :cond_1

    const/4 p6, 0x0

    :cond_1
    sub-float p1, p3, p1

    sub-float/2addr p4, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p1, v2

    cmpl-float v4, p5, v3

    if-lez v4, :cond_2

    move p5, v3

    :cond_2
    div-float v3, p4, v2

    cmpl-float v4, p6, v3

    if-lez v4, :cond_3

    move p6, v3

    :cond_3
    mul-float v3, p5, v2

    sub-float v3, p1, v3

    mul-float v2, v2, p6

    sub-float/2addr p4, v2

    add-float/2addr p2, p6

    .line 143
    invoke-virtual {v0, p3, p2}, Landroid/graphics/Path;->moveTo(FF)V

    neg-float p2, p6

    neg-float p3, p5

    .line 144
    invoke-virtual {v0, v1, p2, p3, p2}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    neg-float v2, v3

    .line 145
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 146
    invoke-virtual {v0, p3, v1, p3, p6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 147
    invoke-virtual {v0, v1, p4}, Landroid/graphics/Path;->rLineTo(FF)V

    if-eqz p7, :cond_4

    .line 150
    invoke-virtual {v0, v1, p6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 151
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 152
    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_0

    .line 154
    :cond_4
    invoke-virtual {v0, v1, p6, p5, p6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 155
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 156
    invoke-virtual {v0, p5, v1, p5, p2}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    :goto_0
    neg-float p1, p4

    .line 159
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method

.method private static setColorAlpha(IB)I
    .locals 2

    .line 96
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 169
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 170
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mCustomTabColorizer:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabColorizer;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mDefaultTabColorizer:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip$SimpleTabColorizer;

    :goto_0
    if-lez v1, :cond_3

    .line 176
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 178
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 179
    iget v4, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectedPosition:I

    invoke-interface {v2, v4}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v4

    .line 181
    iget v5, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectionOffset:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    iget v5, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 182
    iget v5, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v2, v5}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v2

    if-eq v4, v2, :cond_1

    .line 184
    iget v5, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectionOffset:F

    invoke-static {v2, v4, v5}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->blendColors(IIF)I

    move-result v4

    .line 188
    :cond_1
    iget v2, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 189
    iget v5, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    iget v6, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectionOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v7, v6

    int-to-float v3, v3

    mul-float v8, v8, v3

    add-float/2addr v5, v8

    float-to-int v3, v5

    .line 191
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    mul-float v6, v6, v2

    iget v2, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v7, v2

    int-to-float v1, v1

    mul-float v7, v7, v1

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, v3

    .line 196
    iget v2, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectedIndicatorThickness:I

    sub-int v2, v0, v2

    int-to-float v7, v2

    int-to-float v8, v1

    int-to-float v9, v0

    iget v10, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->radius:F

    const/4 v12, 0x1

    move v11, v10

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->roundedRect(FFFFFFZ)Landroid/graphics/Path;

    move-result-object v1

    .line 197
    iget-object v2, v5, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    move-object v5, p0

    .line 201
    :goto_1
    iget v1, v5, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mBottomBorderThickness:I

    sub-int v1, v0, v1

    int-to-float v8, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v9, v1

    int-to-float v10, v0

    iget-object v11, v5, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method onViewPagerPageChanged(IF)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectedPosition:I

    .line 127
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mSelectionOffset:F

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setCustomTabColorizer(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabColorizer;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mCustomTabColorizer:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabColorizer;

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method varargs setSelectedIndicatorColors([I)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mCustomTabColorizer:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabColorizer;

    .line 121
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->mDefaultTabColorizer:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip$SimpleTabColorizer;

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
