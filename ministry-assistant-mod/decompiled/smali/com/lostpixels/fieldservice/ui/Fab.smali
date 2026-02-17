.class public Lcom/lostpixels/fieldservice/ui/Fab;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mButtonPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private final mDrawablePaint:Landroid/graphics/Paint;

.field private mHidden:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mYDisplayed:F

.field private mYHidden:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/lostpixels/fieldservice/ui/Fab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p3, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 31
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mButtonPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mDrawablePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mHidden:Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 39
    iput v2, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mYDisplayed:F

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/lostpixels/fieldservice/R$styleable;->FloatingActionButton:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v2, 0x9

    const/4 v3, -0x1

    .line 58
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mColor:I

    .line 59
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget v2, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0x12

    const/high16 v3, 0x41200000    # 10.0f

    .line 62
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    .line 63
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    const/16 v4, 0x11

    const/high16 v5, 0x40600000    # 3.5f

    .line 64
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/16 v5, 0x64

    .line 65
    invoke-static {v5, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/16 v6, 0xf

    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 66
    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 p3, 0x4

    .line 68
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 70
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mBitmap:Landroid/graphics/Bitmap;

    .line 73
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 p2, 0x0

    .line 75
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 77
    const-string p2, "window"

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 79
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 80
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 82
    iget p1, p2, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iput p1, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mYHidden:F

    return-void
.end method

.method public static darkenColor(I)I
    .locals 3

    const/4 v0, 0x3

    .line 86
    new-array v0, v0, [F

    .line 87
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x2

    .line 88
    aget v1, v0, p0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    aput v1, v0, p0

    .line 89
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public hide(Z)V
    .locals 2

    .line 136
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mHidden:Z

    if-eq v0, p1, :cond_1

    .line 139
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mHidden:Z

    if-eqz p1, :cond_0

    .line 142
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mYHidden:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mYDisplayed:F

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "y"

    invoke-static {p0, p1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 144
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method

.method public listenTo(Landroid/widget/AbsListView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 150
    new-instance v0, Lcom/lostpixels/fieldservice/ui/DirectionScrollListener;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/ui/DirectionScrollListener;-><init>(Lcom/lostpixels/fieldservice/ui/Fab;)V

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x4004cccccccccccdL    # 2.6

    div-double/2addr v3, v5

    double-to-float v3, v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mButtonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 106
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mDrawablePaint:Landroid/graphics/Paint;

    .line 107
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 115
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    .line 118
    invoke-static {p0}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result p2

    iput p2, p1, Lcom/lostpixels/fieldservice/ui/Fab;->mYDisplayed:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mColor:I

    goto :goto_0

    .line 127
    :cond_0
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mColor:I

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/Fab;->darkenColor(I)I

    move-result v0

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mButtonPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 131
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setColor(I)V
    .locals 1

    .line 93
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mColor:I

    .line 94
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mButtonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawable(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/Fab;->mBitmap:Landroid/graphics/Bitmap;

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
