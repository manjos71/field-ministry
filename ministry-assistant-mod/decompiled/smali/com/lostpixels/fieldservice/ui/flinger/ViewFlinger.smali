.class public Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$OnScreenChangeListener;,
        Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mAllowLongPress:Z

.field private mCurrentScreen:I

.field private final mDefaultScreen:I

.field private mDeferredNotify:Z

.field private mDeferredScreenChange:I

.field private mDeferredScreenChangeFast:Z

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:I

.field private mFirstLayout:Z

.field private mHasLaidOut:Z

.field private mIgnoreChildFocusRequests:Z

.field private mIsVerbose:Z

.field private mLocked:Z

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mOnScreenChangeListener:Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$OnScreenChangeListener;

.field private mPagingTouchSlop:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mFirstLayout:Z

    const/4 p2, 0x0

    .line 66
    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mHasLaidOut:Z

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mNextScreen:I

    .line 86
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchState:I

    .line 87
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mAllowLongPress:Z

    .line 91
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mActivePointerId:I

    .line 101
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDeferredScreenChange:I

    .line 102
    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDeferredScreenChangeFast:Z

    .line 103
    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDeferredNotify:Z

    .line 107
    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mIsVerbose:Z

    .line 119
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDefaultScreen:I

    .line 120
    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mLocked:Z

    .line 122
    invoke-virtual {p0, p2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 123
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->initWorkspace()V

    .line 125
    const-string p1, "Workspace"

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mIsVerbose:Z

    return-void
.end method

.method private initWorkspace()V
    .locals 3

    .line 132
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mScroller:Landroid/widget/Scroller;

    .line 133
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDefaultScreen:I

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchSlop:I

    .line 137
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mMaximumVelocity:I

    .line 139
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchSlop:I

    mul-int/lit8 v1, v1, 0x2

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 139
    const-string v2, "getScaledPagingTouchSlop"

    invoke-static {v0, v2, v1}, Lcom/lostpixels/fieldservice/ui/flinger/ReflectionUtils;->callWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mPagingTouchSlop:I

    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 3

    .line 372
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 373
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    .line 376
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 377
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2

    .line 380
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 381
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 386
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_3
    return-void
.end method

.method public addViewToBack(Landroid/view/View;)V
    .locals 0

    .line 1002
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addViewToFront(Landroid/view/View;)V
    .locals 1

    .line 992
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    const/4 v0, 0x0

    .line 993
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public computeScroll()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 231
    :cond_0
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->handleScreenChangeCompletion(I)V

    .line 234
    iput v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mNextScreen:I

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 248
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mNextScreen:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 251
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 252
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v2

    .line 257
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mNextScreen:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    iget v4, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mNextScreen:I

    sub-int/2addr v0, v4

    .line 258
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 259
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 260
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mNextScreen:I

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    return-void

    .line 263
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 265
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getCurrentScreen()I

    move-result v0

    if-lez v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getCurrentScreen()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(I)V

    return v1

    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getCurrentScreen()I

    move-result v0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getCurrentScreen()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(I)V

    return v1

    .line 366
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .line 399
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, p1

    :goto_0
    if-ne v1, v0, :cond_0

    .line 404
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :cond_0
    if-ne v1, p0, :cond_1

    goto :goto_1

    .line 410
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 411
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 412
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getCurrentScreen()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    return v0
.end method

.method getCurrentScreenFraction()F
    .locals 2

    .line 719
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mHasLaidOut:Z

    if-nez v0, :cond_0

    .line 720
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    int-to-float v0, v0

    return v0

    .line 722
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 723
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getScreenAt(I)Landroid/view/View;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    .line 172
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getScreenCount()I
    .locals 2

    .line 161
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 163
    div-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method

.method getScrollWidth()I
    .locals 2

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method handleScreenChangeCompletion(I)V
    .locals 6

    .line 184
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    .line 185
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    .line 188
    :try_start_0
    const-string v1, "dispatchDisplayHint"

    new-array v2, v0, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 189
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v4

    .line 188
    invoke-static {p1, v1, v2, v5}, Lcom/lostpixels/fieldservice/ui/flinger/ReflectionUtils;->tryInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 192
    const-string v1, "Workspace"

    const-string v2, "Caught NullPointerException"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :goto_0
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-virtual {p0, p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->notifyScreenChangeListener(IZ)V

    return-void
.end method

.method notifyScreenChangeListener(IZ)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mOnScreenChangeListener:Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$OnScreenChangeListener;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$OnScreenChangeListener;->onScreenChanged(Landroid/view/View;I)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$OnScreenChangeListener;->onScreenChanging(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 428
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 429
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 439
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mIsVerbose:Z

    const-string v2, "Workspace"

    if-eqz v1, :cond_1

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 442
    iget v4, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchState:I

    if-ne v4, v3, :cond_3

    .line 444
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mIsVerbose:Z

    if-eqz p1, :cond_2

    .line 445
    const-string p1, "Intercepting touch events"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :cond_3
    const/4 v4, 0x0

    if-eqz v0, :cond_d

    if-eq v0, v3, :cond_c

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    goto/16 :goto_3

    .line 523
    :cond_4
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 452
    :cond_5
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mLocked:Z

    if-eqz v0, :cond_6

    goto/16 :goto_3

    .line 461
    :cond_6
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mActivePointerId:I

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 462
    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 463
    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 464
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownMotionX:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 465
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownMotionY:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 467
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mPagingTouchSlop:I

    if-le v0, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    .line 468
    :goto_0
    iget v5, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchSlop:I

    if-le v0, v5, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    if-le p1, v5, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    if-nez v0, :cond_a

    if-eqz p1, :cond_e

    :cond_a
    if-eqz v1, :cond_b

    .line 474
    iput v3, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchState:I

    .line 477
    :cond_b
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mAllowLongPress:Z

    if-eqz p1, :cond_e

    .line 478
    iput-boolean v4, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mAllowLongPress:Z

    .line 482
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 484
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_3

    .line 513
    :cond_c
    iput v4, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchState:I

    .line 514
    iput-boolean v4, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mAllowLongPress:Z

    const/4 p1, -0x1

    .line 515
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mActivePointerId:I

    .line 516
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_e

    .line 517
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 518
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_3

    .line 492
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 495
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownMotionX:F

    .line 496
    iput v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownMotionY:F

    .line 497
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownScrollX:I

    .line 498
    invoke-static {p1, v4}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mActivePointerId:I

    .line 499
    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mAllowLongPress:Z

    .line 506
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v3

    iput p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchState:I

    .line 531
    :cond_e
    :goto_3
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchState:I

    if-eqz p1, :cond_f

    goto :goto_4

    :cond_f
    const/4 v3, 0x0

    .line 532
    :goto_4
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mIsVerbose:Z

    if-eqz p1, :cond_10

    .line 533
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intercepting touch events: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 309
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    .line 311
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 312
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 313
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p4

    .line 314
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p5, p4, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    move p4, v0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 319
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mHasLaidOut:Z

    .line 320
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDeferredScreenChange:I

    if-ltz p1, :cond_2

    .line 321
    iget-boolean p3, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDeferredScreenChangeFast:Z

    iget-boolean p4, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDeferredNotify:Z

    invoke-virtual {p0, p1, p3, p4}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(IZZ)V

    const/4 p1, -0x1

    .line 322
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDeferredScreenChange:I

    .line 323
    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDeferredScreenChangeFast:Z

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 275
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v0, :cond_1

    .line 278
    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    and-int/lit8 v6, v3, 0x1

    if-ne v6, v5, :cond_0

    .line 280
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v5, v6, p2}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 282
    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 283
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eq v4, v1, :cond_2

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    invoke-static {v4, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_2

    .line 290
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 293
    :goto_2
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mFirstLayout:Z

    if-eqz p2, :cond_4

    .line 294
    invoke-virtual {p0, v2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 295
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 296
    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_3

    .line 297
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    add-int/2addr p1, p2

    .line 299
    :cond_3
    iget p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    mul-int p2, p2, p1

    invoke-virtual {p0, p2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 300
    invoke-virtual {p0, v5}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 301
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mFirstLayout:Z

    :cond_4
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 344
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    .line 349
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 820
    check-cast p1, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState;

    .line 821
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 822
    iget p1, p1, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState;->currentScreen:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 823
    invoke-virtual {p0, p1, v0, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(IZZ)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 813
    new-instance v0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 814
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    iput v1, v0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState;->currentScreen:I

    return-object v0
.end method

.method onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 541
    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 542
    iget v2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 547
    :goto_0
    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownMotionX:F

    .line 548
    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownMotionX:F

    .line 549
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    iput v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownScrollX:I

    .line 550
    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mActivePointerId:I

    .line 551
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 552
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 571
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mIsVerbose:Z

    const-string v1, "Workspace"

    if-eqz v0, :cond_0

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 576
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    if-eq v0, v3, :cond_c

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_6

    .line 706
    :cond_2
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 598
    :cond_3
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mIsVerbose:Z

    if-eqz v0, :cond_4

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTouchState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchState:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_4
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchState:I

    if-ne v0, v3, :cond_5

    .line 604
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mActivePointerId:I

    .line 605
    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 606
    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 608
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 610
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownScrollX:I

    int-to-float v1, v1

    iget v4, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownMotionX:F

    add-float/2addr v1, v4

    sub-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1, v2}, Landroid/view/View;->scrollTo(II)V

    goto/16 :goto_6

    :cond_5
    if-nez v0, :cond_16

    .line 618
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mLocked:Z

    if-eqz v0, :cond_6

    goto/16 :goto_6

    .line 627
    :cond_6
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mActivePointerId:I

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 628
    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 629
    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 630
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownMotionX:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 631
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownMotionY:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 633
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mPagingTouchSlop:I

    if-le v0, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    .line 634
    :goto_0
    iget v4, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchSlop:I

    if-le v0, v4, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    if-le p1, v4, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    if-nez v0, :cond_a

    if-eqz p1, :cond_16

    :cond_a
    if-eqz v1, :cond_b

    .line 640
    iput v3, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchState:I

    .line 643
    :cond_b
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mAllowLongPress:Z

    if-eqz p1, :cond_16

    .line 644
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mAllowLongPress:Z

    .line 648
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 650
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_6

    .line 658
    :cond_c
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchState:I

    if-ne v0, v3, :cond_13

    .line 659
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mActivePointerId:I

    .line 660
    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 661
    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 662
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 663
    iget v4, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mMaximumVelocity:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 665
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 666
    iget v4, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownMotionX:F

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v4

    if-lez p1, :cond_d

    const/4 p1, 0x1

    goto :goto_3

    :cond_d
    const/4 p1, 0x0

    .line 668
    :goto_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getCurrentScreenFraction()F

    move-result v4

    .line 669
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-eqz p1, :cond_e

    .line 671
    iget-boolean v6, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mIsVerbose:Z

    if-eqz v6, :cond_e

    .line 672
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFling, whichScreen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " scrolledPos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " mCurrentScreen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " velocityX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz p1, :cond_10

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_10

    .line 677
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    if-lez v1, :cond_10

    int-to-float p1, v5

    cmpg-float p1, v4, p1

    if-gtz p1, :cond_f

    add-int/lit8 v1, v1, -0x1

    .line 682
    :cond_f
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(I)V

    goto :goto_5

    :cond_10
    if-eqz p1, :cond_12

    const/16 p1, -0x1f4

    if-ge v0, p1, :cond_12

    .line 683
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    .line 684
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge p1, v0, :cond_12

    int-to-float p1, v5

    cmpl-float p1, v4, p1

    if-ltz p1, :cond_11

    .line 688
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    add-int/2addr p1, v3

    goto :goto_4

    :cond_11
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    .line 689
    :goto_4
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(I)V

    goto :goto_5

    .line 691
    :cond_12
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToDestination()V

    .line 697
    :cond_13
    :goto_5
    iput v2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mTouchState:I

    const/4 p1, -0x1

    .line 698
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mActivePointerId:I

    .line 699
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_16

    .line 700
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 701
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_6

    .line 586
    :cond_14
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_15

    .line 587
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 591
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownMotionX:F

    .line 592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownMotionY:F

    .line 593
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDownScrollX:I

    .line 594
    invoke-static {p1, v2}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mActivePointerId:I

    :cond_16
    :goto_6
    return v3
.end method

.method public removeViewFromBack()V
    .locals 1

    .line 1006
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewFromFront()V
    .locals 1

    .line 997
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    const/4 v0, 0x0

    .line 998
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 559
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 560
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 561
    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 562
    div-int/lit8 p1, p1, 0x2

    :cond_0
    if-ltz p1, :cond_1

    .line 564
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_1

    .line 565
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(I)V

    :cond_1
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 329
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 330
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mIgnoreChildFocusRequests:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_0

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring child focus request: request "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Workspace"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    .line 334
    :cond_0
    iget p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    return p3

    .line 335
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public scrollLeft()V
    .locals 1

    .line 891
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mLocked:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 896
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(I)V

    return-void

    .line 899
    :cond_1
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mNextScreen:I

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 900
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .line 910
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mLocked:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 914
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 915
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(I)V

    return-void

    .line 918
    :cond_1
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mNextScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 919
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mNextScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(I)V

    return-void
.end method

.method public setCurrentScreenNow(I)V
    .locals 1

    const/4 v0, 0x1

    .line 879
    invoke-virtual {p0, p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->setCurrentScreenNow(IZ)V

    return-void
.end method

.method public setCurrentScreenNow(IZ)V
    .locals 2

    .line 883
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1, v1, p2}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(IZZ)V

    return-void
.end method

.method public setIgnoreChildFocusRequests(Z)V
    .locals 0

    .line 928
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mIgnoreChildFocusRequests:Z

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 217
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 219
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnScreenChangeListener(Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$OnScreenChangeListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 841
    invoke-virtual {p0, p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->setOnScreenChangeListener(Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$OnScreenChangeListener;Z)V

    return-void
.end method

.method public setOnScreenChangeListener(Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$OnScreenChangeListener;Z)V
    .locals 1

    .line 853
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mOnScreenChangeListener:Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$OnScreenChangeListener;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 855
    iget p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object p2

    iget v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-interface {p1, p2, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$OnScreenChangeListener;->onScreenChanged(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setSeparator(I)V
    .locals 6

    .line 954
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 956
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 957
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :goto_0
    if-lez p1, :cond_0

    .line 959
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 p1, p1, -0x2

    goto :goto_0

    .line 961
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_1
    if-eqz p1, :cond_5

    if-nez v0, :cond_3

    .line 966
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 968
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    const/4 v1, 0x1

    :goto_1
    if-ge p1, v0, :cond_2

    .line 970
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 971
    iget-object v3, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 972
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 974
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 975
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 978
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    .line 981
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 982
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :goto_2
    if-lez p1, :cond_4

    .line 984
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 p1, p1, -0x2

    goto :goto_2

    .line 986
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-void
.end method

.method snapToDestination()V
    .locals 3

    .line 728
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScrollWidth()I

    move-result v0

    .line 729
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int/2addr v1, v0

    .line 731
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(I)V

    return-void
.end method

.method public snapToScreen(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 735
    invoke-virtual {p0, p1, v0, v1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->snapToScreen(IZZ)V

    return-void
.end method

.method snapToScreen(IZZ)V
    .locals 11

    .line 739
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mHasLaidOut:Z

    if-nez v0, :cond_0

    .line 740
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDeferredScreenChange:I

    .line 741
    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDeferredScreenChangeFast:Z

    .line 742
    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mDeferredNotify:Z

    return-void

    .line 746
    :cond_0
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mIsVerbose:Z

    const-string v1, "Workspace"

    if-eqz v0, :cond_1

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Snapping to screen: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 752
    iget v3, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 754
    iget v4, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mNextScreen:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    if-ne v4, p1, :cond_3

    :cond_2
    iget v4, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    if-eq v4, p1, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 758
    :goto_0
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mNextScreen:I

    .line 760
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    .line 763
    iget v5, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-virtual {p0, v5}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    .line 770
    :cond_5
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScrollWidth()I

    move-result v5

    mul-int p1, p1, v5

    .line 771
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int v8, p1, v6

    mul-int/lit16 v3, v3, 0x12c

    if-nez v3, :cond_6

    .line 775
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v3

    :cond_6
    if-eqz p2, :cond_7

    const/4 v10, 0x0

    goto :goto_1

    :cond_7
    move v10, v3

    .line 781
    :goto_1
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mNextScreen:I

    iget p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    if-eq p1, p2, :cond_9

    .line 783
    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->getScreenAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 785
    new-array p2, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p2, v0

    const/4 v1, 0x4

    .line 786
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 785
    const-string v1, "dispatchDisplayHint"

    invoke-static {p1, v1, p2, v2}, Lcom/lostpixels/fieldservice/ui/flinger/ReflectionUtils;->tryInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 788
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Screen at index was null. mCurrentScreen = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mCurrentScreen:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 801
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_a

    .line 802
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 804
    :cond_a
    iget-object v5, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mScroller:Landroid/widget/Scroller;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    if-eqz v4, :cond_b

    if-eqz p3, :cond_b

    .line 806
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->mNextScreen:I

    invoke-virtual {p0, p1, v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->notifyScreenChangeListener(IZ)V

    .line 808
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
