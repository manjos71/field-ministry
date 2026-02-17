.class public Lcom/sleepbot/datetimepicker/time/RadialSelectorView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepbot/datetimepicker/time/RadialSelectorView$InvalidateUpdateListener;
    }
.end annotation


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mAnimationRadiusMultiplier:F

.field private mCircleRadius:I

.field private mCircleRadiusMultiplier:F

.field private mDrawValuesReady:Z

.field private mForceDrawDot:Z

.field private mHasInnerCircle:Z

.field private mInnerNumbersRadiusMultiplier:F

.field private mInvalidateUpdateListener:Lcom/sleepbot/datetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private mLineLength:I

.field private mNumbersRadiusMultiplier:F

.field private mOuterNumbersRadiusMultiplier:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mSelectionDegrees:I

.field private mSelectionRadians:D

.field private mSelectionRadius:I

.field private mSelectionRadiusMultiplier:F

.field private mTransitionEndRadiusMultiplier:F

.field private mTransitionMidRadiusMultiplier:F

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    return-void
.end method


# virtual methods
.method public getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I
    .locals 10

    .line 180
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 184
    :cond_0
    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-float v2, v0

    sub-float v2, p2, v2

    int-to-float v0, v0

    sub-float v0, p2, v0

    mul-float v2, v2, v0

    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mXCenter:I

    int-to-float v3, v0

    sub-float v3, p1, v3

    int-to-float v0, v0

    sub-float v0, p1, v0

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 188
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mHasInnerCircle:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_2

    .line 192
    iget p3, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float p3, p3

    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    mul-float p3, p3, v0

    float-to-int p3, p3

    int-to-double v0, p3

    sub-double v0, v2, v0

    .line 193
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int p3, v0

    .line 194
    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-double v0, v0

    sub-double v0, v2, v0

    .line 195
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-gt p3, v0, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 197
    :goto_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p4, v5

    goto :goto_1

    .line 202
    :cond_2
    iget p3, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v0, p3

    iget v6, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    mul-float v0, v0, v6

    float-to-int v0, v0

    iget v7, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    sub-int/2addr v0, v7

    int-to-float v8, p3

    .line 204
    iget v9, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    add-int/2addr v8, v7

    int-to-float p3, p3

    add-float/2addr v9, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v9, v6

    mul-float p3, p3, v9

    float-to-int p3, p3

    int-to-double v6, v0

    cmpl-double v0, v2, v6

    if-ltz v0, :cond_3

    int-to-double v6, p3

    cmpg-double v0, v2, v6

    if-gtz v0, :cond_3

    .line 211
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p3, p4, v5

    goto :goto_1

    :cond_3
    int-to-double v6, v8

    cmpg-double v0, v2, v6

    if-gtz v0, :cond_4

    int-to-double v6, p3

    cmpl-double p3, v2, v6

    if-ltz p3, :cond_4

    .line 214
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p3, p4, v5

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    if-nez p3, :cond_6

    .line 224
    iget p3, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mLineLength:I

    int-to-double p3, p3

    sub-double p3, v2, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    double-to-int p3, p3

    .line 227
    iget p4, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float p4, p4

    const/high16 v0, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    sub-float/2addr v0, v6

    mul-float p4, p4, v0

    float-to-int p4, p4

    if-le p3, p4, :cond_6

    return v1

    .line 235
    :cond_6
    :goto_1
    iget p3, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-float p3, p3

    sub-float p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    float-to-double p3, p3

    div-double/2addr p3, v2

    .line 236
    invoke-static {p3, p4}, Ljava/lang/Math;->asin(D)D

    move-result-wide p3

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p3, p3, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p3, v0

    double-to-int p3, p3

    .line 240
    iget p4, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mXCenter:I

    int-to-float p4, p4

    cmpl-float p1, p1, p4

    if-lez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 241
    :goto_2
    iget p4, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-float p4, p4

    cmpg-float p2, p2, p4

    if-gez p2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    if-eqz p1, :cond_9

    if-eqz v4, :cond_9

    rsub-int/lit8 p1, p3, 0x5a

    return p1

    :cond_9
    if-eqz p1, :cond_a

    if-nez v4, :cond_a

    add-int/lit8 p3, p3, 0x5a

    return p3

    :cond_a
    if-nez p1, :cond_b

    if-nez v4, :cond_b

    rsub-int p1, p3, 0x10e

    return p1

    :cond_b
    if-nez p1, :cond_c

    if-eqz v4, :cond_c

    add-int/lit16 p3, p3, 0x10e

    :cond_c
    return p3
.end method

.method public getDisappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 7

    .line 308
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 317
    invoke-static {v0, v1}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v2

    .line 318
    iget v3, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mTransitionMidRadiusMultiplier:F

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v4, v3}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    .line 319
    iget v4, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    invoke-static {v1, v4}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v4

    const/4 v5, 0x3

    .line 320
    new-array v5, v5, [Lcom/nineoldandroids/animation/Keyframe;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v3, 0x2

    aput-object v4, v5, v3

    const-string v4, "animationRadiusMultiplier"

    invoke-static {v4, v5}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v4

    .line 323
    invoke-static {v0, v1}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v5

    .line 324
    invoke-static {v1, v0}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    .line 325
    new-array v1, v3, [Lcom/nineoldandroids/animation/Keyframe;

    aput-object v5, v1, v6

    aput-object v0, v1, v2

    const-string v0, "alpha"

    invoke-static {v0, v1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    .line 327
    new-array v1, v3, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v4, v1, v6

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    const/16 v1, 0x1f4

    int-to-long v1, v1

    .line 328
    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mInvalidateUpdateListener:Lcom/sleepbot/datetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    .line 309
    :cond_1
    :goto_0
    const-string v0, "RadialSelectorView"

    const-string v1, "RadialSelectorView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 10

    .line 335
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v0, v0, v2

    int-to-float v2, v1

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v0

    const v4, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v4

    sub-float v3, v2, v3

    .line 354
    iget v4, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v4

    .line 355
    iget v6, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    invoke-static {v0, v6}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v6

    .line 356
    iget v7, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mTransitionMidRadiusMultiplier:F

    invoke-static {v3, v7}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    .line 357
    invoke-static {v2, v2}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v7

    const/4 v8, 0x4

    .line 358
    new-array v8, v8, [Lcom/nineoldandroids/animation/Keyframe;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v4, 0x1

    aput-object v6, v8, v4

    const/4 v6, 0x2

    aput-object v3, v8, v6

    const/4 v3, 0x3

    aput-object v7, v8, v3

    const-string v7, "animationRadiusMultiplier"

    invoke-static {v7, v8}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v7

    .line 361
    invoke-static {v5, v5}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v8

    .line 362
    invoke-static {v0, v5}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    .line 363
    invoke-static {v2, v2}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v2

    .line 364
    new-array v3, v3, [Lcom/nineoldandroids/animation/Keyframe;

    aput-object v8, v3, v9

    aput-object v0, v3, v4

    aput-object v2, v3, v6

    const-string v0, "alpha"

    invoke-static {v0, v3}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    .line 366
    new-array v2, v6, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v7, v2, v9

    aput-object v0, v2, v4

    invoke-static {p0, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, v1

    .line 367
    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mInvalidateUpdateListener:Lcom/sleepbot/datetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    .line 336
    :cond_1
    :goto_0
    const-string v0, "RadialSelectorView"

    const-string v1, "RadialSelectorView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/content/Context;ZZZIZ)V
    .locals 4

    .line 88
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 89
    const-string p1, "RadialSelectorView"

    const-string p2, "This RadialSelectorView may only be initialized once."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 97
    sget v2, Lcom/fourmob/datetimepicker/R$attr;->colorPrimary:I

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 98
    iget p1, v1, Landroid/util/TypedValue;->data:I

    .line 100
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iput-boolean p2, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mIs24HourMode:Z

    if-eqz p2, :cond_1

    .line 106
    sget p1, Lcom/fourmob/datetimepicker/R$string;->circle_radius_multiplier_24HourMode:I

    .line 107
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mCircleRadiusMultiplier:F

    goto :goto_0

    .line 109
    :cond_1
    sget p1, Lcom/fourmob/datetimepicker/R$string;->circle_radius_multiplier:I

    .line 110
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mCircleRadiusMultiplier:F

    .line 111
    sget p1, Lcom/fourmob/datetimepicker/R$string;->ampm_circle_radius_multiplier:I

    .line 112
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mAmPmCircleRadiusMultiplier:F

    .line 116
    :goto_0
    iput-boolean p3, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mHasInnerCircle:Z

    if-eqz p3, :cond_2

    .line 118
    sget p1, Lcom/fourmob/datetimepicker/R$string;->numbers_radius_multiplier_inner:I

    .line 119
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    .line 120
    sget p1, Lcom/fourmob/datetimepicker/R$string;->numbers_radius_multiplier_outer:I

    .line 121
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    goto :goto_1

    .line 123
    :cond_2
    sget p1, Lcom/fourmob/datetimepicker/R$string;->numbers_radius_multiplier_normal:I

    .line 124
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    .line 126
    :goto_1
    sget p1, Lcom/fourmob/datetimepicker/R$string;->selection_radius_multiplier:I

    .line 127
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mSelectionRadiusMultiplier:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 130
    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mAnimationRadiusMultiplier:F

    const/4 p2, -0x1

    if-eqz p4, :cond_3

    const/4 p3, -0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x1

    :goto_2
    int-to-float p3, p3

    const v0, 0x3d4ccccd    # 0.05f

    mul-float p3, p3, v0

    add-float/2addr p3, p1

    .line 131
    iput p3, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mTransitionMidRadiusMultiplier:F

    if-eqz p4, :cond_4

    const/4 p2, 0x1

    :cond_4
    int-to-float p2, p2

    const p3, 0x3e99999a    # 0.3f

    mul-float p2, p2, p3

    add-float/2addr p2, p1

    .line 132
    iput p2, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    .line 133
    new-instance p1, Lcom/sleepbot/datetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView$InvalidateUpdateListener;-><init>(Lcom/sleepbot/datetimepicker/time/RadialSelectorView;Lcom/sleepbot/datetimepicker/time/RadialSelectorView$1;)V

    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mInvalidateUpdateListener:Lcom/sleepbot/datetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p5, p6, p1}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 136
    iput-boolean v3, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_5

    .line 257
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mXCenter:I

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mYCenter:I

    .line 264
    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mXCenter:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mCircleRadiusMultiplier:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mCircleRadius:I

    .line 266
    iget-boolean v2, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mIs24HourMode:Z

    if-nez v2, :cond_1

    int-to-float v2, v0

    .line 270
    iget v3, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mAmPmCircleRadiusMultiplier:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 271
    iget v3, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mYCenter:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mYCenter:I

    :cond_1
    int-to-float v0, v0

    .line 274
    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mSelectionRadiusMultiplier:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    .line 276
    iput-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    .line 280
    :cond_2
    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    mul-float v0, v0, v2

    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mAnimationRadiusMultiplier:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mLineLength:I

    .line 281
    iget v2, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mXCenter:I

    int-to-double v3, v0

    iget-wide v5, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    double-to-int v0, v3

    add-int/2addr v2, v0

    .line 282
    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mYCenter:I

    iget v3, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mLineLength:I

    int-to-double v3, v3

    iget-wide v5, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    double-to-int v3, v3

    sub-int/2addr v0, v3

    .line 285
    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0x33

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v3, v2

    int-to-float v4, v0

    .line 286
    iget v5, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 288
    iget-boolean v5, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mForceDrawDot:Z

    iget v6, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mSelectionDegrees:I

    rem-int/lit8 v6, v6, 0x1e

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v5

    const/16 v5, 0xff

    if-eqz v1, :cond_4

    .line 290
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 291
    iget v1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x7

    int-to-float v1, v1

    iget-object v6, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 295
    :cond_4
    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mLineLength:I

    .line 296
    iget v1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    sub-int/2addr v0, v1

    .line 297
    iget v1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mXCenter:I

    int-to-double v2, v0

    iget-wide v6, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v2

    double-to-int v0, v6

    add-int/2addr v0, v1

    .line 298
    iget v1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mYCenter:I

    iget-wide v6, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    double-to-int v2, v2

    sub-int/2addr v1, v2

    move v2, v0

    move v0, v1

    .line 302
    :goto_1
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 303
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 304
    iget v1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mXCenter:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-float v5, v1

    int-to-float v6, v2

    int-to-float v7, v0

    iget-object v8, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setAnimationRadiusMultiplier(F)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mAnimationRadiusMultiplier:F

    return-void
.end method

.method public setSelection(IZZ)V
    .locals 4

    .line 150
    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mSelectionDegrees:I

    int-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 151
    iput-wide v0, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    .line 152
    iput-boolean p3, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mForceDrawDot:Z

    .line 154
    iget-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mHasInnerCircle:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 156
    iget p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    return-void

    .line 158
    :cond_0
    iget p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    :cond_1
    return-void
.end method
