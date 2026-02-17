.class public Lnet/simonvt/widget/Scroller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DECELERATION_RATE:F

.field private static final SPLINE:[F

.field private static sViscousFluidNormalize:F

.field private static final sViscousFluidScale:F


# instance fields
.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private final mFlywheel:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lnet/simonvt/widget/Scroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    .line 68
    new-array v0, v0, [F

    sput-object v0, Lnet/simonvt/widget/Scroller;->SPLINE:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    const/high16 v3, 0x3f800000    # 1.0f

    if-gt v1, v2, :cond_2

    int-to-float v2, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, v2, v4

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    sub-float v5, v2, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v5

    sub-float v7, v3, v5

    mul-float v6, v6, v7

    const v8, 0x3ecccccd    # 0.4f

    mul-float v7, v7, v8

    const v8, 0x3f19999a    # 0.6f

    mul-float v8, v8, v5

    add-float/2addr v7, v8

    mul-float v7, v7, v6

    mul-float v8, v5, v5

    mul-float v8, v8, v5

    add-float/2addr v7, v8

    sub-float v9, v7, v4

    .line 83
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v13, v9, v11

    if-gez v13, :cond_0

    add-float/2addr v6, v8

    .line 88
    sget-object v2, Lnet/simonvt/widget/Scroller;->SPLINE:[F

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v6, v7, v4

    if-lez v6, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v0, v5

    goto :goto_1

    .line 90
    :cond_2
    sget-object v0, Lnet/simonvt/widget/Scroller;->SPLINE:[F

    aput v3, v0, v2

    const/high16 v0, 0x41000000    # 8.0f

    .line 93
    sput v0, Lnet/simonvt/widget/Scroller;->sViscousFluidScale:F

    .line 95
    sput v3, Lnet/simonvt/widget/Scroller;->sViscousFluidNormalize:F

    .line 96
    invoke-static {v3}, Lnet/simonvt/widget/Scroller;->viscousFluid(F)F

    move-result v0

    div-float/2addr v3, v0

    sput v3, Lnet/simonvt/widget/Scroller;->sViscousFluidNormalize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    .line 115
    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lnet/simonvt/widget/Scroller;->mFinished:Z

    .line 125
    iput-object p2, p0, Lnet/simonvt/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43200000    # 160.0f

    mul-float p1, p1, p2

    iput p1, p0, Lnet/simonvt/widget/Scroller;->mPpi:F

    .line 127
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    invoke-direct {p0, p1}, Lnet/simonvt/widget/Scroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Lnet/simonvt/widget/Scroller;->mDeceleration:F

    .line 128
    iput-boolean p3, p0, Lnet/simonvt/widget/Scroller;->mFlywheel:Z

    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2

    const v0, 0x43c10b3d

    .line 143
    iget v1, p0, Lnet/simonvt/widget/Scroller;->mPpi:F

    mul-float v1, v1, v0

    mul-float v1, v1, p1

    return v1
.end method

.method static viscousFluid(F)F
    .locals 3

    .line 422
    sget v0, Lnet/simonvt/widget/Scroller;->sViscousFluidScale:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    neg-float v1, p0

    float-to-double v1, v1

    .line 424
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_0
    sub-float p0, v0, p0

    float-to-double v1, p0

    .line 427
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float p0, v1

    sub-float/2addr v0, p0

    const p0, 0x3f21d2a7

    mul-float v0, v0, p0

    const p0, 0x3ebc5ab2

    add-float/2addr p0, v0

    .line 430
    :goto_0
    sget v0, Lnet/simonvt/widget/Scroller;->sViscousFluidNormalize:F

    mul-float p0, p0, v0

    return p0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 442
    iget v0, p0, Lnet/simonvt/widget/Scroller;->mFinalX:I

    iput v0, p0, Lnet/simonvt/widget/Scroller;->mCurrX:I

    .line 443
    iget v0, p0, Lnet/simonvt/widget/Scroller;->mFinalY:I

    iput v0, p0, Lnet/simonvt/widget/Scroller;->mCurrY:I

    const/4 v0, 0x1

    .line 444
    iput-boolean v0, p0, Lnet/simonvt/widget/Scroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 7

    .line 247
    iget-boolean v0, p0, Lnet/simonvt/widget/Scroller;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 251
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/simonvt/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 253
    iget v0, p0, Lnet/simonvt/widget/Scroller;->mDuration:I

    const/4 v2, 0x1

    if-ge v1, v0, :cond_4

    .line 254
    iget v3, p0, Lnet/simonvt/widget/Scroller;->mMode:I

    if-eqz v3, :cond_2

    if-eq v3, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v3, v1, v0

    float-to-int v3, v3

    int-to-float v4, v3

    div-float/2addr v4, v0

    add-int/lit8 v5, v3, 0x1

    int-to-float v6, v5

    div-float/2addr v6, v0

    .line 271
    sget-object v0, Lnet/simonvt/widget/Scroller;->SPLINE:[F

    aget v3, v0, v3

    .line 272
    aget v0, v0, v5

    sub-float/2addr v1, v4

    sub-float/2addr v6, v4

    div-float/2addr v1, v6

    sub-float/2addr v0, v3

    mul-float v1, v1, v0

    add-float/2addr v3, v1

    .line 275
    iget v0, p0, Lnet/simonvt/widget/Scroller;->mStartX:I

    iget v1, p0, Lnet/simonvt/widget/Scroller;->mFinalX:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/simonvt/widget/Scroller;->mCurrX:I

    .line 277
    iget v1, p0, Lnet/simonvt/widget/Scroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/widget/Scroller;->mCurrX:I

    .line 278
    iget v1, p0, Lnet/simonvt/widget/Scroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/widget/Scroller;->mCurrX:I

    .line 280
    iget v0, p0, Lnet/simonvt/widget/Scroller;->mStartY:I

    iget v1, p0, Lnet/simonvt/widget/Scroller;->mFinalY:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/simonvt/widget/Scroller;->mCurrY:I

    .line 282
    iget v1, p0, Lnet/simonvt/widget/Scroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/widget/Scroller;->mCurrY:I

    .line 283
    iget v1, p0, Lnet/simonvt/widget/Scroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/widget/Scroller;->mCurrY:I

    .line 285
    iget v1, p0, Lnet/simonvt/widget/Scroller;->mCurrX:I

    iget v3, p0, Lnet/simonvt/widget/Scroller;->mFinalX:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lnet/simonvt/widget/Scroller;->mFinalY:I

    if-ne v0, v1, :cond_5

    .line 286
    iput-boolean v2, p0, Lnet/simonvt/widget/Scroller;->mFinished:Z

    goto :goto_1

    :cond_2
    int-to-float v0, v1

    .line 256
    iget v1, p0, Lnet/simonvt/widget/Scroller;->mDurationReciprocal:F

    mul-float v0, v0, v1

    .line 258
    iget-object v1, p0, Lnet/simonvt/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_3

    .line 259
    invoke-static {v0}, Lnet/simonvt/widget/Scroller;->viscousFluid(F)F

    move-result v0

    goto :goto_0

    .line 261
    :cond_3
    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    .line 263
    :goto_0
    iget v1, p0, Lnet/simonvt/widget/Scroller;->mStartX:I

    iget v3, p0, Lnet/simonvt/widget/Scroller;->mDeltaX:F

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lnet/simonvt/widget/Scroller;->mCurrX:I

    .line 264
    iget v1, p0, Lnet/simonvt/widget/Scroller;->mStartY:I

    iget v3, p0, Lnet/simonvt/widget/Scroller;->mDeltaY:F

    mul-float v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lnet/simonvt/widget/Scroller;->mCurrY:I

    goto :goto_1

    .line 293
    :cond_4
    iget v0, p0, Lnet/simonvt/widget/Scroller;->mFinalX:I

    iput v0, p0, Lnet/simonvt/widget/Scroller;->mCurrX:I

    .line 294
    iget v0, p0, Lnet/simonvt/widget/Scroller;->mFinalY:I

    iput v0, p0, Lnet/simonvt/widget/Scroller;->mCurrY:I

    .line 295
    iput-boolean v2, p0, Lnet/simonvt/widget/Scroller;->mFinished:Z

    :cond_5
    :goto_1
    return v2
.end method

.method public fling(IIIIIIII)V
    .locals 13

    .line 367
    iget-boolean v1, p0, Lnet/simonvt/widget/Scroller;->mFlywheel:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lnet/simonvt/widget/Scroller;->mFinished:Z

    if-nez v1, :cond_1

    .line 368
    invoke-virtual {p0}, Lnet/simonvt/widget/Scroller;->getCurrVelocity()F

    move-result v1

    .line 370
    iget v2, p0, Lnet/simonvt/widget/Scroller;->mFinalX:I

    iget v3, p0, Lnet/simonvt/widget/Scroller;->mStartX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 371
    iget v3, p0, Lnet/simonvt/widget/Scroller;->mFinalY:I

    iget v4, p0, Lnet/simonvt/widget/Scroller;->mStartY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    .line 372
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float/2addr v2, v4

    div-float/2addr v3, v4

    mul-float v2, v2, v1

    mul-float v3, v3, v1

    move/from16 v1, p3

    int-to-float v4, v1

    .line 379
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move/from16 v5, p4

    int-to-float v6, v5

    .line 380
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    add-float/2addr v4, v2

    float-to-int v1, v4

    add-float/2addr v6, v3

    float-to-int v2, v6

    goto :goto_2

    :cond_0
    :goto_0
    move/from16 v5, p4

    goto :goto_1

    :cond_1
    move/from16 v1, p3

    goto :goto_0

    :cond_2
    :goto_1
    move v2, v5

    :goto_2
    const/4 v3, 0x1

    .line 386
    iput v3, p0, Lnet/simonvt/widget/Scroller;->mMode:I

    const/4 v3, 0x0

    .line 387
    iput-boolean v3, p0, Lnet/simonvt/widget/Scroller;->mFinished:Z

    mul-int v3, v1, v1

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    int-to-double v3, v3

    .line 389
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 391
    iput v3, p0, Lnet/simonvt/widget/Scroller;->mVelocity:F

    const v4, 0x3ecccccd    # 0.4f

    mul-float v4, v4, v3

    const/high16 v5, 0x44480000    # 800.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 392
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    .line 393
    sget v6, Lnet/simonvt/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v7, v6

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v9

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    const-wide v11, 0x408f400000000000L    # 1000.0

    mul-double v7, v7, v11

    double-to-int v7, v7

    iput v7, p0, Lnet/simonvt/widget/Scroller;->mDuration:I

    .line 394
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lnet/simonvt/widget/Scroller;->mStartTime:J

    .line 395
    iput p1, p0, Lnet/simonvt/widget/Scroller;->mStartX:I

    .line 396
    iput p2, p0, Lnet/simonvt/widget/Scroller;->mStartY:I

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v3, v7

    if-nez v7, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    int-to-float v1, v1

    div-float/2addr v1, v3

    :goto_3
    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    int-to-float v2, v2

    div-float v8, v2, v3

    :goto_4
    float-to-double v2, v6

    float-to-double v6, v6

    sub-double/2addr v6, v9

    div-double/2addr v2, v6

    mul-double v2, v2, v4

    .line 402
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4089000000000000L    # 800.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    move/from16 v3, p5

    .line 404
    iput v3, p0, Lnet/simonvt/widget/Scroller;->mMinX:I

    move/from16 v3, p6

    .line 405
    iput v3, p0, Lnet/simonvt/widget/Scroller;->mMaxX:I

    move/from16 v3, p7

    .line 406
    iput v3, p0, Lnet/simonvt/widget/Scroller;->mMinY:I

    move/from16 v3, p8

    .line 407
    iput v3, p0, Lnet/simonvt/widget/Scroller;->mMaxY:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    .line 409
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p0, Lnet/simonvt/widget/Scroller;->mFinalX:I

    .line 411
    iget v1, p0, Lnet/simonvt/widget/Scroller;->mMaxX:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lnet/simonvt/widget/Scroller;->mFinalX:I

    .line 412
    iget v1, p0, Lnet/simonvt/widget/Scroller;->mMinX:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/simonvt/widget/Scroller;->mFinalX:I

    mul-float v2, v2, v8

    .line 414
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, p2

    iput p1, p0, Lnet/simonvt/widget/Scroller;->mFinalY:I

    .line 416
    iget v0, p0, Lnet/simonvt/widget/Scroller;->mMaxY:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lnet/simonvt/widget/Scroller;->mFinalY:I

    .line 417
    iget v0, p0, Lnet/simonvt/widget/Scroller;->mMinY:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/simonvt/widget/Scroller;->mFinalY:I

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lnet/simonvt/widget/Scroller;->mFinished:Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .line 202
    iget v0, p0, Lnet/simonvt/widget/Scroller;->mVelocity:F

    iget v1, p0, Lnet/simonvt/widget/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Lnet/simonvt/widget/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .line 192
    iget v0, p0, Lnet/simonvt/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .line 220
    iget v0, p0, Lnet/simonvt/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lnet/simonvt/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public startScroll(IIIII)V
    .locals 2

    const/4 v0, 0x0

    .line 332
    iput v0, p0, Lnet/simonvt/widget/Scroller;->mMode:I

    .line 333
    iput-boolean v0, p0, Lnet/simonvt/widget/Scroller;->mFinished:Z

    .line 334
    iput p5, p0, Lnet/simonvt/widget/Scroller;->mDuration:I

    .line 335
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/simonvt/widget/Scroller;->mStartTime:J

    .line 336
    iput p1, p0, Lnet/simonvt/widget/Scroller;->mStartX:I

    .line 337
    iput p2, p0, Lnet/simonvt/widget/Scroller;->mStartY:I

    add-int/2addr p1, p3

    .line 338
    iput p1, p0, Lnet/simonvt/widget/Scroller;->mFinalX:I

    add-int/2addr p2, p4

    .line 339
    iput p2, p0, Lnet/simonvt/widget/Scroller;->mFinalY:I

    int-to-float p1, p3

    .line 340
    iput p1, p0, Lnet/simonvt/widget/Scroller;->mDeltaX:F

    int-to-float p1, p4

    .line 341
    iput p1, p0, Lnet/simonvt/widget/Scroller;->mDeltaY:F

    .line 342
    iget p1, p0, Lnet/simonvt/widget/Scroller;->mDuration:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    iput p2, p0, Lnet/simonvt/widget/Scroller;->mDurationReciprocal:F

    return-void
.end method

.method public timePassed()I
    .locals 4

    .line 468
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/simonvt/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method
