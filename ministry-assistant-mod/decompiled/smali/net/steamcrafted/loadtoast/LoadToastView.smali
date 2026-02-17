.class public Lnet/steamcrafted/loadtoast/LoadToastView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private BASE_TEXT_SIZE:I

.field private IMAGE_WIDTH:I

.field private LINE_WIDTH:I

.field private MARQUE_STEP:I

.field private MAX_TEXT_WIDTH:I

.field private TOAST_HEIGHT:I

.field private WIDTH_SCALE:F

.field private backPaint:Landroid/graphics/Paint;

.field private borderOffset:I

.field private borderPaint:Landroid/graphics/Paint;

.field private cmp:Lcom/nineoldandroids/animation/ValueAnimator;

.field private completeicon:Landroid/graphics/drawable/Drawable;

.field private easeinterpol:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private errorPaint:Landroid/graphics/Paint;

.field private failedicon:Landroid/graphics/drawable/Drawable;

.field private iconBackPaint:Landroid/graphics/Paint;

.field private iconBounds:Landroid/graphics/Rect;

.field private loaderPaint:Landroid/graphics/Paint;

.field private mLtr:Z

.field private mText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private outOfBounds:Z

.field private prevUpdate:J

.field private spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

.field private spinnerRect:Landroid/graphics/RectF;

.field private success:Z

.field private successPaint:Landroid/graphics/Paint;

.field private textPaint:Landroid/graphics/Paint;

.field private toastPath:Landroid/graphics/Path;

.field private va:Lcom/nineoldandroids/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    const-string p1, ""

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->backPaint:Landroid/graphics/Paint;

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBackPaint:Landroid/graphics/Paint;

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->loaderPaint:Landroid/graphics/Paint;

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->successPaint:Landroid/graphics/Paint;

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->errorPaint:Landroid/graphics/Paint;

    .line 40
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->borderPaint:Landroid/graphics/Paint;

    .line 43
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    .line 44
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerRect:Landroid/graphics/RectF;

    const/16 p1, 0x64

    .line 46
    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    const/16 p1, 0x14

    .line 47
    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->BASE_TEXT_SIZE:I

    const/16 p1, 0x28

    .line 48
    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    const/16 p1, 0x30

    .line 49
    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    const/4 p1, 0x3

    .line 50
    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->LINE_WIDTH:I

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->WIDTH_SCALE:F

    const/4 p1, 0x1

    .line 52
    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MARQUE_STEP:I

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->prevUpdate:J

    .line 62
    iput-boolean p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->success:Z

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->outOfBounds:Z

    .line 64
    iput-boolean p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mLtr:Z

    .line 66
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    .line 67
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->easeinterpol:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 70
    invoke-direct {p0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v1

    iput v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->borderOffset:I

    .line 74
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 75
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->backPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBackPaint:Landroid/graphics/Paint;

    const v3, -0xffff01

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->loaderPaint:Landroid/graphics/Paint;

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->loaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->loaderPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->fetchPrimaryColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->loaderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->borderPaint:Landroid/graphics/Paint;

    iget v4, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->borderOffset:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->successPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lnet/steamcrafted/loadtoast/R$color;->color_success:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lnet/steamcrafted/loadtoast/R$color;->color_error:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->successPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    iget p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    invoke-direct {p0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result p1

    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    .line 100
    iget p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->BASE_TEXT_SIZE:I

    invoke-direct {p0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result p1

    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->BASE_TEXT_SIZE:I

    .line 101
    iget p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    invoke-direct {p0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result p1

    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    .line 102
    iget p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    invoke-direct {p0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result p1

    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    .line 103
    iget p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->LINE_WIDTH:I

    invoke-direct {p0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result p1

    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->LINE_WIDTH:I

    .line 104
    iget p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MARQUE_STEP:I

    invoke-direct {p0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result p1

    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MARQUE_STEP:I

    .line 106
    iget p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    iget v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    sub-int/2addr p1, v0

    div-int/2addr p1, v5

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    iget v3, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    add-int v4, v1, v3

    sub-int/2addr v4, p1

    add-int/2addr v1, v3

    sub-int/2addr v1, p1

    iget v3, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    add-int/2addr v1, v3

    add-int/2addr v3, p1

    invoke-direct {v0, v4, p1, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lnet/steamcrafted/loadtoast/R$drawable;->ic_navigation_check:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->completeicon:Landroid/graphics/drawable/Drawable;

    .line 111
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lnet/steamcrafted/loadtoast/R$drawable;->ic_error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->failedicon:Landroid/graphics/drawable/Drawable;

    .line 113
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 115
    new-array p1, v5, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    const-wide/16 v0, 0x1770

    .line 116
    invoke-virtual {p1, v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 117
    iget-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v0, Lnet/steamcrafted/loadtoast/LoadToastView$1;

    invoke-direct {v0, p0}, Lnet/steamcrafted/loadtoast/LoadToastView$1;-><init>(Lnet/steamcrafted/loadtoast/LoadToastView;)V

    invoke-virtual {p1, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 124
    iget-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {p1, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatMode(I)V

    .line 125
    iget-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    const v0, 0x98967f

    invoke-virtual {p1, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatCount(I)V

    .line 126
    iget-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 127
    iget-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 129
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->initSpinner()V

    .line 131
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->calculateBounds()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$002(Lnet/steamcrafted/loadtoast/LoadToastView;F)F
    .locals 0

    .line 30
    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->WIDTH_SCALE:F

    return p1
.end method

.method private calculateBounds()V
    .locals 6

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->outOfBounds:Z

    const-wide/16 v1, 0x0

    .line 268
    iput-wide v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->prevUpdate:J

    .line 270
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->BASE_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 271
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 272
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    if-le v1, v2, :cond_1

    .line 273
    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->BASE_TEXT_SIZE:I

    :goto_0
    const/16 v2, 0xd

    .line 274
    invoke-direct {p0, v2}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    if-le v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 277
    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 278
    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->outOfBounds:Z

    :cond_1
    return-void
.end method

.method private done()V
    .locals 3

    const/4 v0, 0x2

    .line 216
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    const-wide/16 v1, 0x258

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 218
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lnet/steamcrafted/loadtoast/LoadToastView$2;

    invoke-direct {v1, p0}, Lnet/steamcrafted/loadtoast/LoadToastView$2;-><init>(Lnet/steamcrafted/loadtoast/LoadToastView;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 226
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lnet/steamcrafted/loadtoast/LoadToastView$3;

    invoke-direct {v1, p0}, Lnet/steamcrafted/loadtoast/LoadToastView$3;-><init>(Lnet/steamcrafted/loadtoast/LoadToastView;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/Animator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 239
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 240
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private dpToPx(I)I
    .locals 2

    int-to-float p1, p1

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private fetchPrimaryColor()I
    .locals 4

    const/16 v0, 0x9b

    .line 244
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 247
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->data:I

    const v3, 0x1010435

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 250
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 252
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private initSpinner()V
    .locals 13

    .line 135
    new-instance v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 137
    invoke-virtual {v0, v1, v2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 138
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    invoke-virtual {v0, v2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 140
    iget v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    .line 141
    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->LINE_WIDTH:I

    .line 142
    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    int-to-double v3, v0

    mul-int/lit8 v5, v1, 0x2

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x4

    int-to-double v7, v0

    int-to-double v9, v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v11, v1

    int-to-float v12, v5

    move-wide v5, v3

    invoke-virtual/range {v2 .. v12}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 148
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 149
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->loaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 150
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 151
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setAlpha(I)V

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->start()V

    return-void
.end method

.method private measureHeight(I)I
    .locals 3

    .line 449
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 450
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    return p1

    .line 457
    :cond_0
    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 460
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private measureWidth(I)I
    .locals 3

    .line 423
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 424
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    return p1

    .line 432
    :cond_0
    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    iget v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    add-int/2addr v1, v2

    iget v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    add-int/2addr v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 435
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 474
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 476
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->removeAllListeners()V

    .line 479
    :cond_0
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 481
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->removeAllListeners()V

    .line 484
    :cond_1
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->stop()V

    return-void
.end method

.method public error()V
    .locals 1

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->success:Z

    .line 212
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->done()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 468
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "detached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->cleanup()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 294
    iget v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->WIDTH_SCALE:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 296
    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    sub-float v5, v3, v2

    .line 298
    iget v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    iget v7, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v5, v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v5, v6

    const/high16 v8, 0x41200000    # 10.0f

    mul-float v8, v8, v2

    const/high16 v9, 0x41100000    # 9.0f

    sub-float/2addr v8, v9

    .line 300
    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 301
    iget-object v9, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float v8, v8, v10

    float-to-int v8, v8

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 302
    iget-object v8, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerRect:Landroid/graphics/RectF;

    iget-object v9, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    const/4 v10, 0x4

    invoke-direct {v0, v10}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v11

    add-int/2addr v9, v11

    int-to-float v9, v9

    sub-float/2addr v9, v7

    iget-object v11, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v10}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    .line 303
    invoke-direct {v0, v10}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    sub-float/2addr v12, v7

    iget-object v13, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v10}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v10

    sub-int/2addr v13, v10

    int-to-float v10, v13

    .line 302
    invoke-virtual {v8, v9, v11, v12, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 305
    iget v8, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    int-to-double v10, v8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v16

    mul-double v10, v10, v14

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v14

    double-to-int v8, v10

    .line 306
    iget v10, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    .line 307
    iget v11, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    sub-int v18, v10, v11

    const/high16 v19, 0x3f800000    # 1.0f

    div-int/lit8 v3, v18, 0x2

    mul-int/lit8 v11, v11, 0x2

    move/from16 v20, v7

    const/high16 v18, 0x40000000    # 2.0f

    int-to-double v6, v11

    .line 308
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    sub-double v11, v11, v16

    mul-double v6, v6, v11

    div-double/2addr v6, v14

    double-to-int v6, v6

    .line 309
    iget v7, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    mul-float v11, v20, v18

    int-to-float v12, v10

    add-float/2addr v11, v12

    .line 311
    iget v12, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    add-int/2addr v12, v7

    int-to-float v12, v12

    mul-float v12, v12, v2

    add-float/2addr v11, v12

    sub-float/2addr v11, v5

    .line 313
    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 314
    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    div-int/lit8 v12, v10, 0x2

    int-to-float v13, v12

    add-float v14, v20, v13

    invoke-virtual {v5, v14, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 315
    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    iget v15, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    const/16 v16, 0x2

    iget v9, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    add-int/2addr v15, v9

    int-to-float v9, v15

    mul-float v9, v9, v2

    invoke-virtual {v5, v9, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 316
    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    int-to-float v9, v8

    sub-int v15, v12, v8

    int-to-float v15, v15

    const/16 v23, 0x0

    move/from16 v26, v13

    move/from16 v27, v13

    move-object/from16 v21, v5

    move/from16 v22, v9

    move/from16 v24, v13

    move/from16 v25, v15

    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 318
    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    neg-int v9, v3

    int-to-float v9, v9

    invoke-virtual {v5, v9, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 319
    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    neg-int v9, v6

    int-to-float v9, v9

    neg-int v13, v7

    div-int/lit8 v13, v13, 0x2

    add-int v15, v13, v6

    int-to-float v15, v15

    int-to-float v13, v13

    const/16 v26, 0x0

    move/from16 v30, v13

    move/from16 v31, v13

    move-object/from16 v25, v5

    move/from16 v27, v9

    move/from16 v29, v13

    move/from16 v28, v15

    invoke-virtual/range {v25 .. v31}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    move/from16 v26, v27

    move/from16 v5, v28

    move/from16 v31, v29

    .line 320
    iget-object v9, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    div-int/lit8 v7, v7, 0x2

    sub-int v13, v7, v6

    int-to-float v13, v13

    int-to-float v7, v7

    const/16 v27, 0x0

    move/from16 v30, v31

    move-object/from16 v25, v9

    move/from16 v29, v13

    move/from16 v28, v31

    move/from16 v31, v7

    invoke-virtual/range {v25 .. v31}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    move/from16 v35, v29

    move/from16 v36, v31

    move/from16 v31, v28

    .line 321
    iget-object v7, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    int-to-float v6, v6

    const/16 v33, 0x0

    move/from16 v37, v36

    move/from16 v38, v36

    move/from16 v34, v6

    move-object/from16 v32, v7

    invoke-virtual/range {v32 .. v38}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 322
    iget-object v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    move/from16 v30, v36

    move/from16 v29, v5

    move-object/from16 v25, v6

    move/from16 v26, v34

    move/from16 v28, v36

    invoke-virtual/range {v25 .. v31}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 323
    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    int-to-float v3, v3

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 325
    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    sub-int v5, v8, v12

    int-to-float v5, v5

    neg-int v6, v10

    div-int/lit8 v6, v6, 0x2

    int-to-float v7, v6

    move/from16 v23, v22

    const/16 v22, 0x0

    move/from16 v27, v24

    move-object/from16 v21, v3

    move/from16 v26, v7

    move/from16 v25, v24

    move/from16 v24, v5

    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    move/from16 v3, v23

    move/from16 v24, v25

    move/from16 v25, v26

    .line 326
    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    iget v7, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    neg-int v7, v7

    iget v9, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    sub-int/2addr v7, v9

    int-to-float v7, v7

    mul-float v7, v7, v2

    invoke-virtual {v5, v7, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 327
    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    neg-int v7, v8

    int-to-float v9, v7

    add-int/2addr v6, v8

    int-to-float v6, v6

    const/16 v27, 0x0

    move/from16 v30, v25

    move/from16 v31, v25

    move/from16 v29, v6

    move/from16 v26, v9

    move/from16 v28, v25

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v31}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    move/from16 v23, v26

    move/from16 v25, v28

    .line 328
    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    add-int v6, v7, v12

    int-to-float v6, v6

    move/from16 v27, v25

    move-object/from16 v21, v5

    move/from16 v26, v24

    move/from16 v24, v6

    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    move/from16 v28, v23

    move/from16 v5, v26

    .line 330
    iget-object v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v9, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    iget-object v13, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    const v15, 0x3ff33333    # 1.9f

    div-float/2addr v13, v15

    iget-object v15, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v9, v13, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 332
    iget-object v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    iget-object v9, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 334
    iget v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->borderOffset:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v10, v6

    .line 336
    iget-object v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 337
    iget-object v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    iget v9, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->borderOffset:I

    int-to-float v9, v9

    invoke-virtual {v6, v14, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 338
    iget-object v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    iget v9, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    iget v13, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    add-int/2addr v9, v13

    int-to-float v9, v9

    mul-float v9, v9, v2

    invoke-virtual {v6, v9, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 339
    iget-object v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    div-int/lit8 v9, v10, 0x2

    int-to-float v13, v9

    sub-int v14, v9, v8

    int-to-float v14, v14

    const/16 v23, 0x0

    move/from16 v26, v13

    move/from16 v27, v13

    move/from16 v22, v3

    move-object/from16 v21, v6

    move/from16 v24, v13

    move/from16 v25, v14

    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    move/from16 v31, v24

    .line 341
    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    sub-int v6, v8, v9

    int-to-float v6, v6

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v13, v10

    move/from16 v23, v22

    const/16 v22, 0x0

    move/from16 v27, v31

    move-object/from16 v21, v3

    move/from16 v24, v6

    move/from16 v26, v13

    move/from16 v25, v31

    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    move/from16 v24, v25

    move/from16 v30, v26

    .line 342
    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    iget v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    neg-int v6, v6

    iget v13, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    sub-int/2addr v6, v13

    int-to-float v6, v6

    mul-float v2, v2, v6

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 343
    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    add-int/2addr v10, v8

    int-to-float v3, v10

    move/from16 v23, v28

    const/16 v28, 0x0

    move/from16 v31, v30

    move/from16 v32, v30

    move-object/from16 v26, v2

    move/from16 v27, v23

    move/from16 v29, v30

    move/from16 v30, v3

    invoke-virtual/range {v26 .. v32}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    move/from16 v30, v29

    .line 344
    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    add-int/2addr v7, v9

    int-to-float v3, v7

    const/16 v27, 0x0

    move/from16 v32, v30

    move-object/from16 v26, v2

    move/from16 v29, v3

    move/from16 v28, v23

    move/from16 v31, v24

    invoke-virtual/range {v26 .. v32}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 346
    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 347
    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 349
    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v2, v2, v3

    .line 351
    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->easeinterpol:Landroid/view/animation/AccelerateDecelerateInterpolator;

    const/high16 v6, 0x40400000    # 3.0f

    rem-float/2addr v2, v6

    div-float/2addr v2, v6

    invoke-virtual {v3, v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    .line 357
    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 358
    iget v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->WIDTH_SCALE:F

    sub-float v3, v19, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 361
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 363
    iget v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    int-to-float v2, v2

    sub-float/2addr v11, v2

    div-float v11, v11, v18

    invoke-virtual {v1, v11, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 364
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 366
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 368
    iget v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->WIDTH_SCALE:F

    const-wide/16 v6, 0x0

    cmpl-float v3, v2, v19

    if-lez v3, :cond_4

    .line 369
    iget-boolean v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->success:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->completeicon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->failedicon:Landroid/graphics/drawable/Drawable;

    :goto_0
    sub-float v2, v2, v19

    .line 371
    iget-object v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x43000000    # 128.0f

    mul-float v5, v5, v2

    const/high16 v8, 0x42fe0000    # 127.0f

    add-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v4, v4, v2

    const/high16 v5, 0x3e800000    # 0.25f

    add-float/2addr v4, v5

    sub-float v5, v19, v4

    .line 372
    iget v8, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    int-to-float v9, v8

    mul-float v5, v5, v9

    div-float v5, v5, v18

    float-to-int v5, v5

    sub-float v2, v19, v2

    int-to-float v8, v8

    mul-float v8, v8, v2

    const/high16 v9, 0x41000000    # 8.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    .line 374
    iget-object v10, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    add-int/2addr v11, v5

    iget v12, v10, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    add-int/2addr v12, v5

    add-int/2addr v12, v8

    iget v13, v10, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    sub-int/2addr v13, v5

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    sub-int/2addr v10, v5

    add-int/2addr v10, v8

    invoke-virtual {v3, v11, v12, v13, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    iget v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    add-float v8, v20, v8

    int-to-float v10, v5

    mul-float v10, v10, v2

    div-float/2addr v10, v9

    div-int/lit8 v9, v5, 0x2

    int-to-float v9, v9

    add-float/2addr v10, v9

    int-to-float v5, v5

    mul-float v4, v4, v5

    div-float v4, v4, v18

    .line 376
    iget-boolean v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->success:Z

    if-eqz v5, :cond_3

    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->successPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->errorPaint:Landroid/graphics/Paint;

    .line 375
    :goto_1
    invoke-virtual {v1, v8, v10, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 377
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/high16 v4, 0x42b40000    # 90.0f

    mul-float v2, v2, v4

    .line 378
    iget v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    add-float v5, v20, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v5, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 379
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 382
    iput-wide v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->prevUpdate:J

    return-void

    .line 386
    :cond_4
    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float v2, v2, v18

    sub-float v13, v5, v2

    float-to-int v2, v13

    .line 388
    iget-boolean v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->outOfBounds:Z

    if-eqz v3, :cond_9

    .line 390
    iget-wide v8, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->prevUpdate:J

    cmp-long v3, v8, v6

    if-nez v3, :cond_5

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->prevUpdate:J

    goto :goto_2

    .line 393
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v8, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->prevUpdate:J

    sub-long/2addr v3, v8

    long-to-float v3, v3

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v3, v4

    iget v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MARQUE_STEP:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    .line 395
    iget v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    int-to-float v3, v3

    sub-float v3, v4, v3

    iget-object v8, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v3, v3, v8

    if-lez v3, :cond_6

    .line 396
    iput-wide v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->prevUpdate:J

    .line 399
    :cond_6
    :goto_2
    iget v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    add-int/2addr v3, v12

    iget v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    const/4 v7, 0x0

    invoke-virtual {v1, v12, v7, v3, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 400
    iget-boolean v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->mLtr:Z

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_7

    goto :goto_3

    .line 403
    :cond_7
    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    sub-float v13, v5, v4

    iget v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v13, v4

    int-to-float v2, v2

    iget-object v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v13, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    .line 401
    :cond_8
    :goto_3
    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v12, v5

    int-to-float v5, v12

    add-float/2addr v5, v4

    int-to-float v2, v2

    iget-object v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    .line 406
    :cond_9
    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    iget-object v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    const/16 v16, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v12, v5

    int-to-float v5, v12

    int-to-float v6, v2

    iget-object v7, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    move-object v2, v3

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 412
    invoke-direct {p0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->measureWidth(I)I

    move-result p1

    .line 413
    invoke-direct {p0, p2}, Lnet/steamcrafted/loadtoast/LoadToastView;->measureHeight(I)I

    move-result p2

    .line 412
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 168
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 178
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBorderWidthDp(I)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->setBorderWidthPx(I)V

    return-void
.end method

.method public setBorderWidthPx(I)V
    .locals 1

    .line 182
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->borderOffset:I

    .line 183
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->borderPaint:Landroid/graphics/Paint;

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setBorderWidthRes(I)V
    .locals 1

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->setBorderWidthPx(I)V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    .line 173
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->loaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setColorSchemeColors([I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->calculateBounds()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextDirection(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mLtr:Z

    return-void
.end method

.method public show()V
    .locals 1

    .line 195
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->stop()V

    .line 196
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->start()V

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->WIDTH_SCALE:F

    .line 199
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 201
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->removeAllListeners()V

    :cond_0
    return-void
.end method

.method public success()V
    .locals 1

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->success:Z

    .line 207
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->done()V

    return-void
.end method
