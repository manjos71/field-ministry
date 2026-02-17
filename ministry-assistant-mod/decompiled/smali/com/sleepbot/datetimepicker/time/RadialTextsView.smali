.class public Lcom/sleepbot/datetimepicker/time/RadialTextsView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepbot/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;
    }
.end annotation


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mAnimationRadiusMultiplier:F

.field private mCircleRadius:F

.field private mCircleRadiusMultiplier:F

.field mDisappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private mDrawValuesReady:Z

.field private mHasInnerCircle:Z

.field private mInnerNumbersRadiusMultiplier:F

.field private mInnerTextGridHeights:[F

.field private mInnerTextGridWidths:[F

.field private mInnerTextSize:F

.field private mInnerTextSizeMultiplier:F

.field private mInnerTexts:[Ljava/lang/String;

.field private mInvalidateUpdateListener:Lcom/sleepbot/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private mNumbersRadiusMultiplier:F

.field private final mPaint:Landroid/graphics/Paint;

.field mReappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private mTextGridHeights:[F

.field private mTextGridValuesDirty:Z

.field private mTextGridWidths:[F

.field private mTextSize:F

.field private mTextSizeMultiplier:F

.field private mTexts:[Ljava/lang/String;

.field private mTransitionEndRadiusMultiplier:F

.field private mTransitionMidRadiusMultiplier:F

.field private mTypefaceLight:Landroid/graphics/Typeface;

.field private mTypefaceRegular:Landroid/graphics/Typeface;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mIsInitialized:Z

    return-void
.end method

.method private calculateGridSizes(FFFF[F[F)V
    .locals 4

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 229
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v0, v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float v2, p1, v1

    .line 232
    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 234
    iget-object p4, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->descent()F

    move-result p4

    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr p4, v3

    div-float/2addr p4, v1

    sub-float/2addr p3, p4

    sub-float p4, p3, p1

    const/4 v1, 0x0

    .line 236
    aput p4, p5, v1

    sub-float p4, p2, p1

    .line 237
    aput p4, p6, v1

    sub-float p4, p3, v0

    const/4 v1, 0x1

    .line 238
    aput p4, p5, v1

    sub-float p4, p2, v0

    .line 239
    aput p4, p6, v1

    sub-float p4, p3, v2

    const/4 v1, 0x2

    .line 240
    aput p4, p5, v1

    sub-float p4, p2, v2

    .line 241
    aput p4, p6, v1

    const/4 p4, 0x3

    .line 242
    aput p3, p5, p4

    .line 243
    aput p2, p6, p4

    add-float p4, p3, v2

    const/4 v1, 0x4

    .line 244
    aput p4, p5, v1

    add-float/2addr v2, p2

    .line 245
    aput v2, p6, v1

    add-float p4, p3, v0

    const/4 v1, 0x5

    .line 246
    aput p4, p5, v1

    add-float/2addr v0, p2

    .line 247
    aput v0, p6, v1

    add-float/2addr p3, p1

    const/4 p4, 0x6

    .line 248
    aput p3, p5, p4

    add-float/2addr p2, p1

    .line 249
    aput p2, p6, p4

    return-void
.end method

.method private drawTexts(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V
    .locals 9

    .line 257
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 258
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 p2, 0x0

    .line 259
    aget-object p3, p4, p2

    const/4 v0, 0x3

    aget v1, p5, v0

    aget v2, p6, p2

    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 p3, 0x1

    .line 260
    aget-object v1, p4, p3

    const/4 v2, 0x4

    aget v3, p5, v2

    aget v4, p6, p3

    iget-object v5, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x2

    .line 261
    aget-object v3, p4, v1

    const/4 v4, 0x5

    aget v5, p5, v4

    aget v6, p6, v1

    iget-object v7, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 262
    aget-object v3, p4, v0

    const/4 v5, 0x6

    aget v6, p5, v5

    aget v7, p6, v0

    iget-object v8, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 263
    aget-object v3, p4, v2

    aget v6, p5, v4

    aget v7, p6, v2

    iget-object v8, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 264
    aget-object v3, p4, v4

    aget v6, p5, v2

    aget v7, p6, v4

    iget-object v8, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 265
    aget-object v3, p4, v5

    aget v6, p5, v0

    aget v5, p6, v5

    iget-object v7, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x7

    .line 266
    aget-object v3, p4, v3

    aget v5, p5, v1

    aget v4, p6, v4

    iget-object v6, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v3, 0x8

    .line 267
    aget-object v3, p4, v3

    aget v4, p5, p3

    aget v2, p6, v2

    iget-object v5, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v2, 0x9

    .line 268
    aget-object v2, p4, v2

    aget p2, p5, p2

    aget v0, p6, v0

    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 p2, 0xa

    .line 269
    aget-object p2, p4, p2

    aget v0, p5, p3

    aget v2, p6, v1

    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 p2, 0xb

    .line 270
    aget-object p2, p4, p2

    aget p4, p5, v1

    aget p3, p6, p3

    iget-object p5, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private renderAnimations()V
    .locals 15

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 282
    invoke-static {v0, v1}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v2

    .line 283
    iget v3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTransitionMidRadiusMultiplier:F

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v4, v3}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    .line 284
    iget v5, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    invoke-static {v1, v5}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v5

    const/4 v6, 0x3

    .line 285
    new-array v7, v6, [Lcom/nineoldandroids/animation/Keyframe;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v3, v7, v2

    const/4 v3, 0x2

    aput-object v5, v7, v3

    const-string v5, "animationRadiusMultiplier"

    invoke-static {v5, v7}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v7

    .line 288
    invoke-static {v0, v1}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v9

    .line 289
    invoke-static {v1, v0}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v10

    .line 290
    new-array v11, v3, [Lcom/nineoldandroids/animation/Keyframe;

    aput-object v9, v11, v8

    aput-object v10, v11, v2

    const-string v9, "alpha"

    invoke-static {v9, v11}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v10

    .line 292
    new-array v11, v3, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v7, v11, v8

    aput-object v10, v11, v2

    invoke-static {p0, v11}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v7

    const/16 v10, 0x1f4

    int-to-long v11, v10

    .line 293
    invoke-virtual {v7, v11, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mDisappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 294
    iget-object v11, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInvalidateUpdateListener:Lcom/sleepbot/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    invoke-virtual {v7, v11}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-float v7, v10

    const/high16 v10, 0x3fa00000    # 1.25f

    mul-float v10, v10, v7

    float-to-int v10, v10

    const/high16 v11, 0x3e800000    # 0.25f

    mul-float v7, v7, v11

    int-to-float v11, v10

    div-float/2addr v7, v11

    sub-float v11, v1, v7

    mul-float v11, v11, v4

    sub-float v4, v1, v11

    .line 305
    iget v11, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    invoke-static {v0, v11}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v11

    .line 306
    iget v12, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    invoke-static {v7, v12}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v12

    .line 307
    iget v13, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTransitionMidRadiusMultiplier:F

    invoke-static {v4, v13}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v4

    .line 308
    invoke-static {v1, v1}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v13

    const/4 v14, 0x4

    .line 309
    new-array v14, v14, [Lcom/nineoldandroids/animation/Keyframe;

    aput-object v11, v14, v8

    aput-object v12, v14, v2

    aput-object v4, v14, v3

    aput-object v13, v14, v6

    invoke-static {v5, v14}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v4

    .line 312
    invoke-static {v0, v0}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v5

    .line 313
    invoke-static {v7, v0}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    .line 314
    invoke-static {v1, v1}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v1

    .line 315
    new-array v6, v6, [Lcom/nineoldandroids/animation/Keyframe;

    aput-object v5, v6, v8

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    invoke-static {v9, v6}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    .line 317
    new-array v1, v3, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v4, v1, v8

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, v10

    .line 318
    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mReappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 319
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInvalidateUpdateListener:Lcom/sleepbot/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public getDisappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 2

    .line 323
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mDisappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 324
    :cond_1
    :goto_0
    const-string v0, "RadialTextsView"

    const-string v1, "RadialTextView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 2

    .line 332
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mReappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 333
    :cond_1
    :goto_0
    const-string v0, "RadialTextsView"

    const-string v1, "RadialTextView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 4

    .line 82
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 83
    const-string p1, "RadialTextsView"

    const-string p2, "This RadialTextsView may only be initialized once."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_0
    sget v0, Lcom/fourmob/datetimepicker/R$color;->numbers_text_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    sget v0, Lcom/fourmob/datetimepicker/R$string;->radial_numbers_typeface:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 91
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTypefaceLight:Landroid/graphics/Typeface;

    .line 92
    sget v0, Lcom/fourmob/datetimepicker/R$string;->sans_serif:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTypefaceRegular:Landroid/graphics/Typeface;

    .line 94
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 97
    iput-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTexts:[Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInnerTexts:[Ljava/lang/String;

    .line 99
    iput-boolean p4, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mIs24HourMode:Z

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 100
    :cond_1
    iput-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz p4, :cond_2

    .line 104
    sget p2, Lcom/fourmob/datetimepicker/R$string;->circle_radius_multiplier_24HourMode:I

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 104
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mCircleRadiusMultiplier:F

    goto :goto_0

    .line 107
    :cond_2
    sget p2, Lcom/fourmob/datetimepicker/R$string;->circle_radius_multiplier:I

    .line 108
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 107
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mCircleRadiusMultiplier:F

    .line 109
    sget p2, Lcom/fourmob/datetimepicker/R$string;->ampm_circle_radius_multiplier:I

    .line 110
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mAmPmCircleRadiusMultiplier:F

    :goto_0
    const/4 p2, 0x7

    .line 114
    new-array p3, p2, [F

    iput-object p3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextGridHeights:[F

    .line 115
    new-array p3, p2, [F

    iput-object p3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextGridWidths:[F

    .line 116
    iget-boolean p3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz p3, :cond_3

    .line 117
    sget p3, Lcom/fourmob/datetimepicker/R$string;->numbers_radius_multiplier_outer:I

    .line 118
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 117
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    iput p3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mNumbersRadiusMultiplier:F

    .line 119
    sget p3, Lcom/fourmob/datetimepicker/R$string;->text_size_multiplier_outer:I

    .line 120
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 119
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    iput p3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextSizeMultiplier:F

    .line 121
    sget p3, Lcom/fourmob/datetimepicker/R$string;->numbers_radius_multiplier_inner:I

    .line 122
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 121
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    iput p3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInnerNumbersRadiusMultiplier:F

    .line 123
    sget p3, Lcom/fourmob/datetimepicker/R$string;->text_size_multiplier_inner:I

    .line 124
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInnerTextSizeMultiplier:F

    .line 126
    new-array p1, p2, [F

    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInnerTextGridHeights:[F

    .line 127
    new-array p1, p2, [F

    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInnerTextGridWidths:[F

    goto :goto_1

    .line 129
    :cond_3
    sget p2, Lcom/fourmob/datetimepicker/R$string;->numbers_radius_multiplier_normal:I

    .line 130
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 129
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mNumbersRadiusMultiplier:F

    .line 131
    sget p2, Lcom/fourmob/datetimepicker/R$string;->text_size_multiplier_normal:I

    .line 132
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextSizeMultiplier:F

    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 135
    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    const/4 p2, -0x1

    if-eqz p5, :cond_4

    const/4 p3, -0x1

    goto :goto_2

    :cond_4
    const/4 p3, 0x1

    :goto_2
    int-to-float p3, p3

    const p4, 0x3d4ccccd    # 0.05f

    mul-float p3, p3, p4

    add-float/2addr p3, p1

    .line 136
    iput p3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTransitionMidRadiusMultiplier:F

    if-eqz p5, :cond_5

    const/4 p2, 0x1

    :cond_5
    int-to-float p2, p2

    const p3, 0x3e99999a    # 0.3f

    mul-float p2, p2, p3

    add-float/2addr p2, p1

    .line 137
    iput p2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    .line 138
    new-instance p1, Lcom/sleepbot/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sleepbot/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;-><init>(Lcom/sleepbot/datetimepicker/time/RadialTextsView;Lcom/sleepbot/datetimepicker/time/RadialTextsView$1;)V

    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInvalidateUpdateListener:Lcom/sleepbot/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    .line 140
    iput-boolean v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    .line 141
    iput-boolean v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mIsInitialized:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_6

    .line 163
    iget-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 167
    :cond_0
    iget-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    if-nez v1, :cond_3

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mXCenter:I

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mYCenter:I

    .line 170
    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mXCenter:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mCircleRadiusMultiplier:F

    mul-float v1, v1, v2

    iput v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mCircleRadius:F

    .line 171
    iget-boolean v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mIs24HourMode:Z

    if-nez v2, :cond_1

    .line 175
    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mAmPmCircleRadiusMultiplier:F

    mul-float v2, v2, v1

    .line 176
    iget v3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mYCenter:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mYCenter:I

    .line 179
    :cond_1
    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextSizeMultiplier:F

    mul-float v2, v2, v1

    iput v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextSize:F

    .line 180
    iget-boolean v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v2, :cond_2

    .line 181
    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInnerTextSizeMultiplier:F

    mul-float v1, v1, v2

    iput v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInnerTextSize:F

    .line 185
    :cond_2
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->renderAnimations()V

    const/4 v1, 0x1

    .line 187
    iput-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    .line 188
    iput-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    .line 192
    :cond_3
    iget-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    if-eqz v1, :cond_5

    .line 193
    iget v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mNumbersRadiusMultiplier:F

    mul-float v1, v1, v2

    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    mul-float v1, v1, v2

    .line 197
    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mYCenter:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextSize:F

    iget-object v5, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextGridHeights:[F

    iget-object v6, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextGridWidths:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->calculateGridSizes(FFFF[F[F)V

    .line 199
    iget-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v1, :cond_4

    .line 201
    iget v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInnerNumbersRadiusMultiplier:F

    mul-float v1, v1, v2

    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    mul-float v1, v1, v2

    .line 203
    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mYCenter:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInnerTextSize:F

    iget-object v5, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInnerTextGridHeights:[F

    iget-object v6, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInnerTextGridWidths:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->calculateGridSizes(FFFF[F[F)V

    :cond_4
    const/4 v1, 0x0

    .line 206
    iput-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    .line 210
    :cond_5
    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextSize:F

    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTypefaceLight:Landroid/graphics/Typeface;

    iget-object v4, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTexts:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextGridWidths:[F

    iget-object v6, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextGridHeights:[F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->drawTexts(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    .line 211
    iget-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v1, :cond_6

    .line 212
    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInnerTextSize:F

    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTypefaceRegular:Landroid/graphics/Typeface;

    iget-object v4, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInnerTexts:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInnerTextGridWidths:[F

    iget-object v6, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mInnerTextGridHeights:[F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->drawTexts(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    :cond_6
    :goto_0
    return-void
.end method

.method public setAnimationRadiusMultiplier(F)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    return-void
.end method
