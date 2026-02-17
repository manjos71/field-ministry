.class public Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;,
        Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$EndCurveInterpolator;,
        Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$StartCurveInterpolator;
    }
.end annotation


# static fields
.field private static final EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final COLORS:[I

.field private mAnimExcutor:Landroid/view/View;

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field mFinishing:Z

.field private mHeight:D

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mShowArrowOnFirstStart:Z

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 49
    new-instance v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$EndCurveInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$EndCurveInterpolator;-><init>(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$1;)V

    sput-object v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 50
    new-instance v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$StartCurveInterpolator;

    invoke-direct {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$StartCurveInterpolator;-><init>(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$1;)V

    sput-object v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 120
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, -0x1000000

    .line 80
    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->COLORS:[I

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 91
    new-instance v1, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$1;

    invoke-direct {v1, p0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$1;-><init>(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;)V

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v2, 0x0

    .line 118
    iput-boolean v2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mShowArrowOnFirstStart:Z

    .line 121
    iput-object p2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 124
    new-instance p1, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-direct {p1, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    .line 125
    invoke-virtual {p1, v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setColors([I)V

    const/4 p1, 0x1

    .line 127
    invoke-virtual {p0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->updateSizes(I)V

    .line 128
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setupAnimators()V

    return-void
.end method

.method static synthetic access$200(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;FLnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->applyFinishTranslation(FLnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$300()Landroid/view/animation/Interpolator;
    .locals 1

    .line 43
    sget-object v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400()Landroid/view/animation/Interpolator;
    .locals 1

    .line 43
    sget-object v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$500(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;)F
    .locals 0

    .line 43
    iget p0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRotationCount:F

    return p0
.end method

.method static synthetic access$502(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;F)F
    .locals 0

    .line 43
    iput p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRotationCount:F

    return p1
.end method

.method private applyFinishTranslation(FLnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;)V
    .locals 4

    .line 301
    invoke-virtual {p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 303
    invoke-virtual {p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    .line 304
    invoke-virtual {p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v2

    invoke-virtual {p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 305
    invoke-virtual {p2, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 306
    invoke-virtual {p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v1

    .line 307
    invoke-virtual {p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    .line 308
    invoke-virtual {p2, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method private setupAnimators()V
    .locals 3

    .line 312
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    .line 313
    new-instance v1, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;

    invoke-direct {v1, p0, v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;-><init>(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;)V

    const/4 v2, -0x1

    .line 355
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 356
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 357
    sget-object v2, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 358
    new-instance v2, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;

    invoke-direct {v2, p0, v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;-><init>(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 386
    iput-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 227
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 229
    iget v2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 230
    iget-object v2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v2, p1, v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 231
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 235
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 217
    iget-wide v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mHeight:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 222
    iget-wide v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mWidth:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 240
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setAlpha(I)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 200
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .line 211
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 212
    iget-object p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1

    .line 193
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method setRotation(F)V
    .locals 0

    .line 255
    iput p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRotation:F

    .line 256
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setSizeParameters(DDDDFF)V
    .locals 1

    .line 133
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    .line 134
    iput-wide p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mWidth:D

    .line 135
    iput-wide p3, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mHeight:D

    double-to-float p1, p7

    .line 136
    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 137
    invoke-virtual {v0, p5, p6}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    const/4 p1, 0x0

    .line 138
    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 139
    invoke-virtual {v0, p9, p10}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 140
    iget-wide p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mWidth:D

    double-to-int p1, p1

    iget-wide p2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mHeight:D

    double-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setInsets(II)V

    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1

    .line 183
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 184
    iget-object p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {p1, p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    return-void
.end method

.method public start()V
    .locals 3

    .line 271
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 272
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 273
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    iget-boolean v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mShowArrowOnFirstStart:Z

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 276
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mFinishing:Z

    .line 278
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 279
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 282
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 283
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x535

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 284
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 290
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setRotation(F)V

    .line 292
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 293
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 294
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->resetOriginals()V

    return-void
.end method

.method public updateSizes(I)V
    .locals 11

    .line 150
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 151
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    if-nez p1, :cond_0

    const/high16 v2, 0x42600000    # 56.0f

    mul-float v2, v2, v1

    float-to-double v2, v2

    const/high16 v4, 0x41480000    # 12.5f

    mul-float v4, v4, v1

    float-to-double v5, v4

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v4, v4, v1

    float-to-double v7, v4

    const/high16 v4, 0x41400000    # 12.0f

    mul-float v9, v1, v4

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float v10, v1, v4

    move-wide v1, v2

    move-wide v3, v1

    move-object v0, p0

    .line 154
    invoke-virtual/range {v0 .. v10}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    return-void

    :cond_0
    const/high16 v0, 0x42200000    # 40.0f

    mul-float v0, v0, v1

    float-to-double v2, v0

    const/high16 v0, 0x410c0000    # 8.75f

    mul-float v0, v0, v1

    float-to-double v5, v0

    const/high16 v0, 0x40200000    # 2.5f

    mul-float v0, v0, v1

    float-to-double v7, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float v9, v1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float v10, v1, v0

    move-wide v1, v2

    move-wide v3, v1

    move-object v0, p0

    .line 157
    invoke-virtual/range {v0 .. v10}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    return-void
.end method
