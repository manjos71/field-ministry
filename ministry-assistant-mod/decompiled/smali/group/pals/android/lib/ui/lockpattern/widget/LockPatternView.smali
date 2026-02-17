.class public abstract Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;,
        Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;,
        Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;,
        Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$SavedState;
    }
.end annotation


# instance fields
.field private mAnimatingPeriodStart:J

.field private final mArrowMatrix:Landroid/graphics/Matrix;

.field private final mAspect:I

.field private final mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

.field private final mBitmapArrowRedUp:Landroid/graphics/Bitmap;

.field private final mBitmapBtnDefault:Landroid/graphics/Bitmap;

.field private final mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private final mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private final mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private final mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private final mDiameterFactor:F

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private final mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mOnPatternListener:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;

.field private final mPadding:I

.field private final mPaddingBottom:I

.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private final mPaddingTop:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPattern:Ljava/util/ArrayList;

.field private mPatternDisplayMode:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

.field private final mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private final mStrokeAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 358
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 76
    iput-boolean p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mDrawingProfilingStarted:Z

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v1, 0x2

    .line 100
    new-array v2, v1, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    aput v4, v2, p2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDrawLookup:[[Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 106
    iput v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressX:F

    .line 107
    iput v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressY:F

    .line 111
    sget-object v2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    iput-object v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    .line 112
    iput-boolean v3, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInputEnabled:Z

    .line 113
    iput-boolean p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInStealthMode:Z

    .line 114
    iput-boolean v3, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mEnableHapticFeedback:Z

    .line 115
    iput-boolean p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    const v2, 0x3dcccccd    # 0.1f

    .line 117
    iput v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mDiameterFactor:F

    const/16 v2, 0x80

    .line 118
    iput v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mStrokeAlpha:I

    const v5, 0x3f19999a    # 0.6f

    .line 119
    iput v5, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mHitFactor:F

    .line 133
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 134
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 140
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 141
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 143
    iput p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPadding:I

    .line 144
    iput p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPaddingLeft:I

    .line 145
    iput p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPaddingRight:I

    .line 146
    iput p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPaddingTop:I

    .line 147
    iput p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPaddingBottom:I

    .line 360
    iput-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mContext:Landroid/content/Context;

    .line 374
    iput p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mAspect:I

    .line 377
    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 379
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 380
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 383
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lgroup/pals/android/lib/ui/lockpattern/R$attr;->alp_color_pattern_path:I

    invoke-static {v5, v6}, Lgroup/pals/android/lib/ui/lockpattern/util/UI;->resolveAttribute(Landroid/content/Context;I)I

    move-result v5

    .line 382
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 381
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 386
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 387
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 388
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 391
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lgroup/pals/android/lib/ui/lockpattern/R$attr;->alp_drawable_btn_code_lock_default_holo:I

    invoke-static {p1, v0}, Lgroup/pals/android/lib/ui/lockpattern/util/UI;->resolveAttribute(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 393
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lgroup/pals/android/lib/ui/lockpattern/R$attr;->alp_drawable_btn_code_lock_touched_holo:I

    invoke-static {v0, v2}, Lgroup/pals/android/lib/ui/lockpattern/util/UI;->resolveAttribute(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lgroup/pals/android/lib/ui/lockpattern/R$attr;->alp_drawable_indicator_code_lock_point_area_default_holo:I

    .line 396
    invoke-static {v2, v5}, Lgroup/pals/android/lib/ui/lockpattern/util/UI;->resolveAttribute(Landroid/content/Context;I)I

    move-result v2

    .line 395
    invoke-direct {p0, v2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 400
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lgroup/pals/android/lib/ui/lockpattern/R$attr;->aosp_drawable_indicator_code_lock_point_area_normal:I

    invoke-static {v5, v6}, Lgroup/pals/android/lib/ui/lockpattern/util/UI;->resolveAttribute(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {p0, v5}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 402
    sget v6, Lgroup/pals/android/lib/ui/lockpattern/R$drawable;->aosp_indicator_code_lock_point_area_red_holo:I

    invoke-direct {p0, v6}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 404
    sget v7, Lgroup/pals/android/lib/ui/lockpattern/R$drawable;->aosp_indicator_code_lock_drag_direction_green_up:I

    invoke-direct {p0, v7}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 405
    sget v7, Lgroup/pals/android/lib/ui/lockpattern/R$drawable;->aosp_indicator_code_lock_drag_direction_red_up:I

    invoke-direct {p0, v7}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    const/4 v7, 0x5

    .line 408
    new-array v8, v7, [Landroid/graphics/Bitmap;

    aput-object p1, v8, p2

    aput-object v0, v8, v3

    aput-object v2, v8, v1

    aput-object v5, v8, v4

    const/4 p1, 0x4

    aput-object v6, v8, p1

    :goto_0
    if-ge p2, v7, :cond_0

    .line 411
    aget-object p1, v8, p2

    .line 412
    iget v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapWidth:I

    .line 413
    iget v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapHeight:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addCellToPattern(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;)V
    .locals 3

    .line 725
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 726
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-direct {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->notifyCellAdded()V

    return-void
.end method

.method private checkForNewHit(FF)Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;
    .locals 2

    .line 733
    invoke-direct {p0, p2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getRowHit(F)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 737
    :cond_0
    invoke-direct {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getColumnHit(F)I

    move-result p1

    if-gez p1, :cond_1

    return-object v0

    .line 742
    :cond_1
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v1, v1, p2

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_2

    return-object v0

    .line 745
    :cond_2
    invoke-static {p2, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->of(II)Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    move-result-object p1

    return-object p1
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 587
    iget-object v4, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v4, v4, v1

    aput-boolean v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;
    .locals 8

    .line 683
    invoke-direct {p0, p1, p2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->checkForNewHit(FF)Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    .line 688
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 689
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 690
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    .line 691
    iget v0, p1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    iget v1, p2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    sub-int/2addr v0, v1

    .line 692
    iget v3, p1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    iget v4, p2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    sub-int/2addr v3, v4

    .line 697
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 698
    iget v1, p2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    if-lez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    add-int/2addr v1, v5

    .line 701
    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 702
    iget p2, p2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    if-lez v3, :cond_2

    const/4 v6, 0x1

    :cond_2
    add-int v4, p2, v6

    .line 705
    :cond_3
    invoke-static {v1, v4}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->of(II)Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_5

    .line 708
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget v1, p2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    aget-object v0, v0, v1

    iget v1, p2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_5

    .line 710
    invoke-direct {p0, p2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->addCellToPattern(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;)V

    .line 712
    :cond_5
    invoke-direct {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->addCellToPattern(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;)V

    .line 713
    iget-boolean p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mEnableHapticFeedback:Z

    if-eqz p2, :cond_6

    const/4 p2, 0x3

    .line 714
    invoke-virtual {p0, v2, p2}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_6
    return-object p1

    :cond_7
    return-object p2
.end method

.method private drawArrow(Landroid/graphics/Canvas;FFLgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;)V
    .locals 8

    .line 1180
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Wrong:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1182
    :goto_0
    iget v1, p5, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    .line 1183
    iget v2, p4, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    .line 1184
    iget p5, p5, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    .line 1185
    iget p4, p4, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    .line 1188
    iget v3, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareWidth:F

    float-to-int v3, v3

    iget v4, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 1189
    iget v5, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareHeight:F

    float-to-int v5, v5

    iget v6, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapHeight:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    if-eqz v0, :cond_1

    .line 1196
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    :goto_1
    sub-int/2addr v1, v2

    int-to-double v1, v1

    sub-int/2addr p5, p4

    int-to-double p4, p5

    .line 1202
    invoke-static {v1, v2, p4, p5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p4

    double-to-float p4, p4

    float-to-double p4, p4

    .line 1204
    invoke-static {p4, p5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p4

    double-to-float p4, p4

    const/high16 p5, 0x42b40000    # 90.0f

    add-float/2addr p4, p5

    .line 1207
    iget p5, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareWidth:F

    iget v1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapWidth:I

    int-to-float v1, v1

    div-float/2addr p5, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p5, v1}, Ljava/lang/Math;->min(FF)F

    move-result p5

    .line 1208
    iget v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareHeight:F

    iget v7, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapHeight:I

    int-to-float v7, v7

    div-float/2addr v2, v7

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1209
    iget-object v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    int-to-float v3, v3

    add-float/2addr p2, v3

    int-to-float v3, v5

    add-float/2addr p3, v3

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1212
    iget-object p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    iget p3, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapWidth:I

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p2, p3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1213
    iget-object p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p5, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1214
    iget-object p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    iget p3, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapWidth:I

    neg-int p3, p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget p5, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapHeight:I

    neg-int p5, p5

    div-int/lit8 p5, p5, 0x2

    int-to-float p5, p5

    invoke-virtual {p2, p3, p5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1215
    iget-object p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    int-to-float p3, v4

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p3, p5

    int-to-float v1, v6

    div-float/2addr v1, p5

    invoke-virtual {p2, p4, p3, v1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 1219
    iget-object p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    sub-int/2addr v4, p3

    int-to-float p3, v4

    div-float/2addr p3, p5

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1223
    iget-object p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    iget-object p3, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 7

    if-eqz p4, :cond_5

    .line 1238
    iget-boolean p4, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInStealthMode:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Wrong:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    if-eq p4, v0, :cond_0

    goto :goto_1

    .line 1243
    :cond_0
    iget-boolean p4, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz p4, :cond_1

    .line 1245
    iget-object p4, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 1246
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 1247
    :cond_1
    iget-object p4, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Wrong:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    if-ne p4, v0, :cond_2

    .line 1249
    iget-object p4, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 1250
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 1251
    :cond_2
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    if-eq p4, v0, :cond_4

    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    if-ne p4, v0, :cond_3

    goto :goto_0

    .line 1257
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown display mode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1254
    :cond_4
    :goto_0
    iget-object p4, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 1255
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 1241
    :cond_5
    :goto_1
    iget-object p4, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 1242
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 1261
    :goto_2
    iget v1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapWidth:I

    .line 1262
    iget v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapHeight:I

    .line 1264
    iget v3, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareWidth:F

    .line 1265
    iget v4, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareHeight:F

    int-to-float v5, v1

    sub-float v5, v3, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v2, v2

    sub-float/2addr v4, v2

    div-float/2addr v4, v6

    float-to-int v2, v4

    int-to-float v1, v1

    div-float/2addr v3, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1271
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1272
    iget v4, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareHeight:F

    iget v6, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapHeight:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1274
    iget-object v4, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int/2addr p2, v5

    int-to-float p2, p2

    add-int/2addr p3, v2

    int-to-float p3, p3

    invoke-virtual {v4, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1275
    iget-object p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget p3, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapWidth:I

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p2, p3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1276
    iget-object p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v3, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1277
    iget-object p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget p3, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapWidth:I

    neg-int p3, p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget v1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapHeight:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1279
    iget-object p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object p3, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1280
    iget-object p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object p3, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getCenterXForColumn(I)F
    .locals 2

    int-to-float p1, p1

    .line 1036
    iget v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareWidth:F

    mul-float p1, p1, v0

    const/4 v1, 0x0

    add-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    return p1
.end method

.method private getCenterYForRow(I)F
    .locals 2

    int-to-float p1, p1

    .line 1040
    iget v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareHeight:F

    mul-float p1, p1, v0

    const/4 v1, 0x0

    add-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    return p1
.end method

.method private getColumnHit(F)I
    .locals 6

    .line 779
    iget v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareWidth:F

    const v1, 0x3f19999a    # 0.6f

    mul-float v1, v1, v0

    sub-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    add-float/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    int-to-float v4, v3

    mul-float v4, v4, v0

    add-float/2addr v4, v2

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v1

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getRowHit(F)I
    .locals 6

    .line 757
    iget v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareHeight:F

    const v1, 0x3f19999a    # 0.6f

    mul-float v1, v1, v0

    sub-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    add-float/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    int-to-float v4, v3

    mul-float v4, v4, v0

    add-float/2addr v4, v2

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v1

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 7

    .line 995
    invoke-direct {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->resetPattern()V

    .line 996
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 997
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 998
    invoke-direct {p0, v0, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->detectAndAddHit(FF)Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1000
    iput-boolean v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    .line 1001
    sget-object v2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    iput-object v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    .line 1002
    invoke-direct {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->notifyPatternStarted()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1011
    iput-boolean v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    .line 1012
    invoke-direct {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->notifyPatternCleared()V

    :goto_0
    if-eqz v1, :cond_1

    .line 1015
    iget v2, v1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    invoke-direct {p0, v2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 1016
    iget v1, v1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    invoke-direct {p0, v1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    .line 1018
    iget v3, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 1019
    iget v5, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareHeight:F

    div-float/2addr v5, v4

    sub-float v4, v2, v3

    float-to-int v4, v4

    sub-float v6, v1, v5

    float-to-int v6, v6

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 1021
    invoke-virtual {p0, v4, v6, v2, v1}, Landroid/view/View;->invalidate(IIII)V

    .line 1025
    :cond_1
    iput v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressX:F

    .line 1026
    iput p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressY:F

    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 836
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, 0x1

    if-ge v3, v4, :cond_d

    if-ge v3, v2, :cond_0

    .line 838
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    goto :goto_1

    .line 839
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    :goto_1
    if-ge v3, v2, :cond_1

    .line 840
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    goto :goto_2

    .line 841
    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 842
    :goto_2
    iget-object v6, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 843
    invoke-direct {v0, v4, v5}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->detectAndAddHit(FF)Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    move-result-object v7

    .line 844
    iget-object v8, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v7, :cond_2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 846
    iput-boolean v9, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    .line 847
    invoke-direct {v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->notifyPatternStarted()V

    .line 850
    :cond_2
    iget v9, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 851
    iget v10, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressY:F

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    .line 852
    iget v10, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareWidth:F

    const v11, 0x3c23d70a    # 0.01f

    mul-float v11, v11, v10

    cmpl-float v9, v9, v11

    if-lez v9, :cond_c

    .line 853
    iget v9, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressX:F

    .line 854
    iget v11, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressY:F

    .line 856
    iput v4, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressX:F

    .line 857
    iput v5, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressY:F

    .line 859
    iget-boolean v12, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v12, :cond_b

    if-lez v8, :cond_b

    .line 860
    iget-object v12, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const v13, 0x3dcccccd    # 0.1f

    mul-float v10, v10, v13

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v10, v10, v13

    add-int/lit8 v13, v8, -0x1

    .line 863
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    .line 865
    iget v15, v14, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    invoke-direct {v0, v15}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v15

    .line 866
    iget v14, v14, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    invoke-direct {v0, v14}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v14

    .line 873
    iget-object v1, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    cmpg-float v16, v15, v4

    if-gez v16, :cond_3

    move/from16 v16, v4

    move v4, v15

    goto :goto_3

    :cond_3
    move/from16 v16, v15

    :goto_3
    cmpg-float v17, v14, v5

    if-gez v17, :cond_4

    move/from16 v17, v5

    move v5, v14

    goto :goto_4

    :cond_4
    move/from16 v17, v14

    :goto_4
    sub-float/2addr v4, v10

    float-to-int v4, v4

    sub-float/2addr v5, v10

    float-to-int v5, v5

    move/from16 v18, v2

    add-float v2, v16, v10

    float-to-int v2, v2

    move/from16 v16, v3

    add-float v3, v17, v10

    float-to-int v3, v3

    .line 893
    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    cmpg-float v2, v15, v9

    if-gez v2, :cond_5

    move/from16 v19, v15

    move v15, v9

    move/from16 v9, v19

    :cond_5
    cmpg-float v2, v14, v11

    if-gez v2, :cond_6

    move/from16 v19, v14

    move v14, v11

    move/from16 v11, v19

    :cond_6
    sub-float/2addr v9, v10

    float-to-int v2, v9

    sub-float/2addr v11, v10

    float-to-int v3, v11

    add-float/2addr v15, v10

    float-to-int v4, v15

    add-float/2addr v14, v10

    float-to-int v5, v14

    .line 915
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    if-eqz v7, :cond_a

    .line 922
    iget v2, v7, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    invoke-direct {v0, v2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 923
    iget v3, v7, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    invoke-direct {v0, v3}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    const/4 v4, 0x2

    if-lt v8, v4, :cond_9

    sub-int/2addr v8, v6

    sub-int/2addr v13, v8

    .line 927
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    .line 929
    iget v5, v4, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    invoke-direct {v0, v5}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v5

    .line 930
    iget v4, v4, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    invoke-direct {v0, v4}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v4

    cmpg-float v6, v2, v5

    if-gez v6, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v19, v5

    move v5, v2

    move/from16 v2, v19

    :goto_5
    cmpg-float v6, v3, v4

    if-gez v6, :cond_8

    goto :goto_6

    :cond_8
    move/from16 v19, v4

    move v4, v3

    move/from16 v3, v19

    goto :goto_6

    :cond_9
    move v5, v2

    move v4, v3

    .line 952
    :goto_6
    iget v6, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 953
    iget v8, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareHeight:F

    div-float/2addr v8, v7

    sub-float/2addr v2, v6

    float-to-int v2, v2

    sub-float/2addr v3, v8

    float-to-int v3, v3

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-float/2addr v4, v8

    float-to-int v4, v4

    .line 955
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 961
    :cond_a
    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_b
    move/from16 v18, v2

    move/from16 v16, v3

    .line 963
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_7

    :cond_c
    move/from16 v18, v2

    move/from16 v16, v3

    :goto_7
    add-int/lit8 v3, v16, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 0

    .line 981
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 982
    iput-boolean p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    .line 983
    invoke-direct {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->notifyPatternDetected()V

    .line 984
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .line 537
    sget v0, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_lockscreen_access_pattern_cell_added:I

    invoke-direct {p0, v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->sendAccessEvent(I)V

    .line 538
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mOnPatternListener:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 539
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .line 558
    sget v0, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_lockscreen_access_pattern_cleared:I

    invoke-direct {p0, v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->sendAccessEvent(I)V

    .line 559
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mOnPatternListener:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 560
    invoke-interface {v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    :cond_0
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .line 551
    sget v0, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_lockscreen_access_pattern_detected:I

    invoke-direct {p0, v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->sendAccessEvent(I)V

    .line 552
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mOnPatternListener:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 553
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .line 544
    sget v0, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_lockscreen_access_pattern_start:I

    invoke-direct {p0, v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->sendAccessEvent(I)V

    .line 545
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mOnPatternListener:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 546
    invoke-interface {v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    :cond_0
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .line 575
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 576
    invoke-direct {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 577
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    .line 578
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private resolveMeasured(II)I
    .locals 2

    .line 618
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 619
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    return p2

    .line 624
    :cond_1
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private sendAccessEvent(I)V
    .locals 1

    .line 975
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mContext:Landroid/content/Context;

    .line 976
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 975
    invoke-static {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/ViewCompat_v16;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .line 568
    invoke-direct {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->resetPattern()V

    return-void
.end method

.method public getDisplayMode()Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;
    .locals 1

    .line 520
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    return-object v0
.end method

.method public getPattern()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .line 646
    iget v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .line 638
    iget v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1045
    iget-object v6, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1046
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1047
    iget-object v8, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 1049
    iget-object v2, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    sget-object v3, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    const/4 v10, 0x1

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v7, 0x1

    mul-int/lit16 v2, v2, 0x2bc

    .line 1055
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v11, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v3, v11

    long-to-int v4, v3

    rem-int/2addr v4, v2

    .line 1057
    div-int/lit16 v2, v4, 0x2bc

    .line 1059
    invoke-direct {v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->clearPatternDrawLookup()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1061
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    .line 1062
    invoke-virtual {v5}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getRow()I

    move-result v11

    aget-object v11, v8, v11

    invoke-virtual {v5}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    aput-boolean v10, v11, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    if-ge v2, v7, :cond_1

    .line 1071
    rem-int/lit16 v4, v4, 0x2bc

    int-to-float v3, v4

    const/high16 v4, 0x442f0000    # 700.0f

    div-float/2addr v3, v4

    add-int/lit8 v4, v2, -0x1

    .line 1074
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    .line 1075
    iget v5, v4, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    invoke-direct {v0, v5}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v5

    .line 1076
    iget v4, v4, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    invoke-direct {v0, v4}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v4

    .line 1078
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    .line 1079
    iget v11, v2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    .line 1080
    invoke-direct {v0, v11}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v11

    sub-float/2addr v11, v5

    mul-float v11, v11, v3

    .line 1081
    iget v2, v2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    .line 1082
    invoke-direct {v0, v2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v2

    sub-float/2addr v2, v4

    mul-float v3, v3, v2

    add-float/2addr v5, v11

    .line 1083
    iput v5, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressX:F

    add-float/2addr v4, v3

    .line 1084
    iput v4, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressY:F

    .line 1087
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1090
    :cond_2
    iget v11, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareWidth:F

    .line 1091
    iget v12, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareHeight:F

    const v2, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v11

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    .line 1094
    iget-object v3, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1096
    iget-object v13, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 1097
    invoke-virtual {v13}, Landroid/graphics/Path;->rewind()V

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x3

    const/4 v14, 0x0

    if-ge v2, v3, :cond_4

    int-to-float v4, v2

    mul-float v4, v4, v12

    add-float/2addr v4, v14

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_3

    int-to-float v15, v5

    mul-float v15, v15, v11

    add-float/2addr v15, v14

    float-to-int v15, v15

    float-to-int v3, v4

    .line 1109
    aget-object v17, v8, v2

    aget-boolean v9, v17, v5

    invoke-direct {v0, v1, v15, v3, v9}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1118
    :cond_4
    iget-boolean v2, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    sget-object v3, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Wrong:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v9, 0x1

    .line 1123
    :goto_4
    iget-object v2, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    const/4 v15, 0x1

    goto :goto_5

    :cond_7
    const/4 v15, 0x0

    .line 1124
    :goto_5
    iget-object v2, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz v9, :cond_9

    const/4 v2, 0x0

    :goto_6
    add-int/lit8 v3, v7, -0x1

    if-ge v2, v3, :cond_9

    .line 1128
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    add-int/lit8 v2, v2, 0x1

    .line 1129
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    .line 1134
    iget v3, v5, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    aget-object v3, v8, v3

    const/16 v16, 0x0

    iget v14, v5, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    aget-boolean v3, v3, v14

    if-nez v3, :cond_8

    goto :goto_7

    .line 1138
    :cond_8
    iget v3, v4, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    int-to-float v3, v3

    mul-float v3, v3, v11

    add-float v3, v3, v16

    .line 1139
    iget v14, v4, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    int-to-float v14, v14

    mul-float v14, v14, v12

    add-float v14, v14, v16

    move/from16 v19, v14

    move v14, v2

    move v2, v3

    move/from16 v3, v19

    .line 1141
    invoke-direct/range {v0 .. v5}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->drawArrow(Landroid/graphics/Canvas;FFLgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;)V

    move v2, v14

    const/4 v14, 0x0

    goto :goto_6

    :cond_9
    :goto_7
    if-eqz v9, :cond_f

    const/4 v9, 0x0

    const/16 v18, 0x0

    :goto_8
    if-ge v9, v7, :cond_c

    .line 1148
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    .line 1153
    iget v3, v2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    aget-object v3, v8, v3

    iget v4, v2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_a

    goto :goto_a

    .line 1158
    :cond_a
    invoke-direct {v0, v4}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v3

    .line 1159
    iget v2, v2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    invoke-direct {v0, v2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v2

    if-nez v9, :cond_b

    .line 1161
    invoke-virtual {v13, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_9

    .line 1163
    :cond_b
    invoke-virtual {v13, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_9
    add-int/lit8 v9, v9, 0x1

    const/16 v18, 0x1

    goto :goto_8

    .line 1168
    :cond_c
    :goto_a
    iget-boolean v2, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v2, :cond_d

    iget-object v2, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    sget-object v3, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_e

    :cond_d
    if-eqz v18, :cond_e

    if-le v7, v10, :cond_e

    .line 1170
    iget v2, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressX:F

    iget v3, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1172
    :cond_e
    iget-object v2, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1175
    :cond_f
    iget-object v1, v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 651
    invoke-virtual {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 652
    invoke-virtual {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 653
    invoke-direct {p0, p1, v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->resolveMeasured(II)I

    move-result p1

    .line 654
    invoke-direct {p0, p2, v1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->resolveMeasured(II)I

    move-result p2

    .line 656
    iget v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mAspect:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 661
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    .line 658
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    move p2, p1

    .line 669
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1294
    check-cast p1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$SavedState;

    .line 1295
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1296
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    .line 1297
    invoke-virtual {p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1296
    invoke-virtual {p0, v0, v1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->setPattern(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1298
    invoke-static {}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->values()[Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    move-result-object v0

    invoke-virtual {p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$SavedState;->getDisplayMode()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    .line 1299
    invoke-virtual {p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInputEnabled:Z

    .line 1300
    invoke-virtual {p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v0

    iput-boolean v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInStealthMode:Z

    .line 1301
    invoke-virtual {p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .line 1285
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1286
    new-instance v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$SavedState;

    iget-object v2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1287
    invoke-static {v2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    .line 1288
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$1;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    int-to-float p1, p1

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p1, p3

    .line 610
    iput p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareWidth:F

    int-to-float p1, p2

    div-float/2addr p1, p3

    .line 613
    iput p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mSquareHeight:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 795
    iget-boolean v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInputEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 799
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    return v1

    .line 817
    :cond_1
    iput-boolean v1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    .line 818
    invoke-direct {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->resetPattern()V

    .line 819
    invoke-direct {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->notifyPatternCleared()V

    return v2

    .line 807
    :cond_2
    invoke-direct {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    return v2

    .line 804
    :cond_3
    invoke-direct {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    return v2

    .line 801
    :cond_4
    invoke-direct {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public setDisplayMode(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;)V
    .locals 2

    .line 496
    iput-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    .line 497
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    .line 498
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 503
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mAnimatingPeriodStart:J

    .line 504
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    .line 505
    invoke-virtual {p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v0

    iput v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressX:F

    .line 506
    invoke-virtual {p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getRow()I

    move-result p1

    invoke-direct {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result p1

    iput p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInProgressY:F

    .line 507
    invoke-direct {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->clearPatternDrawLookup()V

    goto :goto_0

    .line 499
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 509
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0

    .line 443
    iput-boolean p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mInStealthMode:Z

    return-void
.end method

.method public setOnPatternListener(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mOnPatternListener:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method public setPattern(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 3

    .line 477
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 478
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 479
    invoke-direct {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 480
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    .line 481
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->setDisplayMode(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;)V

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    .line 454
    iput-boolean p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method
