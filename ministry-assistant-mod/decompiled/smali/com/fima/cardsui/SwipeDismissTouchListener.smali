.class public Lcom/fima/cardsui/SwipeDismissTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fima/cardsui/SwipeDismissTouchListener$OnDismissCallback;
    }
.end annotation


# instance fields
.field private final mAnimationTime:J

.field private final mCallback:Lcom/fima/cardsui/SwipeDismissTouchListener$OnDismissCallback;

.field private mDownX:F

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mSlop:I

.field private mSwiping:Z

.field private final mToken:Ljava/lang/Object;

.field private mTranslationX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mView:Landroid/view/View;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lcom/fima/cardsui/SwipeDismissTouchListener$OnDismissCallback;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput v0, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mViewWidth:I

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mSlop:I

    .line 122
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mMinFlingVelocity:I

    .line 123
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mAnimationTime:J

    .line 126
    iput-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mView:Landroid/view/View;

    .line 127
    iput-object p2, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    .line 128
    iput-object p3, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mCallback:Lcom/fima/cardsui/SwipeDismissTouchListener$OnDismissCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/fima/cardsui/SwipeDismissTouchListener;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/fima/cardsui/SwipeDismissTouchListener;->performDismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/fima/cardsui/SwipeDismissTouchListener;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/fima/cardsui/SwipeDismissTouchListener;)Ljava/lang/Object;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/fima/cardsui/SwipeDismissTouchListener;)Lcom/fima/cardsui/SwipeDismissTouchListener$OnDismissCallback;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mCallback:Lcom/fima/cardsui/SwipeDismissTouchListener$OnDismissCallback;

    return-object p0
.end method

.method private performDismiss()V
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    .line 264
    filled-new-array {v1, v2}, [I

    move-result-object v2

    invoke-static {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    iget-wide v3, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mAnimationTime:J

    .line 265
    invoke-virtual {v2, v3, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    .line 267
    new-instance v3, Lcom/fima/cardsui/SwipeDismissTouchListener$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/fima/cardsui/SwipeDismissTouchListener$2;-><init>(Lcom/fima/cardsui/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/Animator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 281
    new-instance v1, Lcom/fima/cardsui/SwipeDismissTouchListener$3;

    invoke-direct {v1, p0, v0}, Lcom/fima/cardsui/SwipeDismissTouchListener$3;-><init>(Lcom/fima/cardsui/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 289
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 134
    iget p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mTranslationX:F

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 136
    iget p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mViewWidth:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mViewWidth:I

    .line 140
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    if-eq p1, v1, :cond_1

    goto/16 :goto_5

    .line 216
    :cond_1
    iget-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 220
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 221
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mDownX:F

    sub-float/2addr p1, v1

    .line 222
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mSlop:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_3

    .line 223
    iput-boolean v4, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mSwiping:Z

    .line 224
    iget-object v1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 227
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 230
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/lit8 p2, p2, 0x3

    .line 229
    invoke-virtual {v1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 231
    iget-object p2, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 232
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 235
    :cond_3
    iget-boolean p2, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz p2, :cond_b

    .line 236
    iput p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mTranslationX:F

    .line 237
    iget-object p2, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-static {p2, p1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 240
    iget-object p2, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mView:Landroid/view/View;

    const/high16 v1, 0x40000000    # 2.0f

    .line 244
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float p1, p1, v1

    iget v1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    sub-float p1, v3, p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 242
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 240
    invoke-static {p2, p1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    return v4

    .line 151
    :cond_4
    iget-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_5

    goto/16 :goto_5

    .line 155
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v5, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mDownX:F

    sub-float/2addr p1, v5

    .line 156
    iget-object v5, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 157
    iget-object p2, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {p2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 158
    iget-object p2, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 159
    iget-object v5, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 162
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mViewWidth:I

    div-int/2addr v7, v1

    int-to-float v1, v7

    cmpl-float v1, v6, v1

    if-lez v1, :cond_7

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    goto :goto_1

    .line 165
    :cond_7
    iget p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mMinFlingVelocity:I

    int-to-float p1, p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_8

    iget p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_8

    cmpg-float p1, v5, p2

    if-gez p1, :cond_8

    .line 168
    iget-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    goto :goto_0

    :cond_8
    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 p2, 0x0

    if-eqz v4, :cond_a

    .line 172
    iget-object v1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-static {v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_9

    .line 173
    iget p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mViewWidth:I

    :goto_2
    int-to-float p1, p1

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mViewWidth:I

    neg-int p1, p1

    goto :goto_2

    :goto_3
    invoke-virtual {v1, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p1

    .line 174
    invoke-virtual {p1, v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v3, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {p1, v3, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/fima/cardsui/SwipeDismissTouchListener$1;

    invoke-direct {v1, p0}, Lcom/fima/cardsui/SwipeDismissTouchListener$1;-><init>(Lcom/fima/cardsui/SwipeDismissTouchListener;)V

    .line 175
    invoke-virtual {p1, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    goto :goto_4

    .line 203
    :cond_a
    iget-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-static {p1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v3, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mAnimationTime:J

    .line 204
    invoke-virtual {p1, v3, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 207
    :goto_4
    iget-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 208
    iput-object p2, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 209
    iput v0, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mTranslationX:F

    .line 210
    iput v0, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mDownX:F

    .line 211
    iput-boolean v2, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mSwiping:Z

    :cond_b
    :goto_5
    return v2

    .line 143
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mDownX:F

    .line 144
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return v2
.end method
