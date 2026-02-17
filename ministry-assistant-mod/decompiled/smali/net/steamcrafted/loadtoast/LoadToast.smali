.class public Lnet/steamcrafted/loadtoast/LoadToast;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mInflated:Z

.field private mParentView:Landroid/view/ViewGroup;

.field private mReAttached:Z

.field private mShowCalled:Z

.field private mText:Ljava/lang/String;

.field private mToastCanceled:Z

.field private mTranslationY:I

.field private mView:Lnet/steamcrafted/loadtoast/LoadToastView;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mTranslationY:I

    .line 24
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mShowCalled:Z

    .line 25
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mToastCanceled:Z

    .line 26
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mInflated:Z

    .line 27
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mVisible:Z

    .line 28
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mReAttached:Z

    .line 31
    new-instance v0, Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-direct {v0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    .line 32
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lnet/steamcrafted/loadtoast/LoadToast;)Lnet/steamcrafted/loadtoast/LoadToastView;
    .locals 0

    .line 19
    iget-object p0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    return-object p0
.end method

.method static synthetic access$100(Lnet/steamcrafted/loadtoast/LoadToast;)Landroid/view/ViewGroup;
    .locals 0

    .line 19
    iget-object p0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lnet/steamcrafted/loadtoast/LoadToast;)I
    .locals 0

    .line 19
    iget p0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mTranslationY:I

    return p0
.end method

.method static synthetic access$302(Lnet/steamcrafted/loadtoast/LoadToast;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mInflated:Z

    return p1
.end method

.method static synthetic access$400(Lnet/steamcrafted/loadtoast/LoadToast;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mToastCanceled:Z

    return p0
.end method

.method static synthetic access$500(Lnet/steamcrafted/loadtoast/LoadToast;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mShowCalled:Z

    return p0
.end method

.method static synthetic access$600(Lnet/steamcrafted/loadtoast/LoadToast;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToast;->showInternal()V

    return-void
.end method

.method static synthetic access$700(Lnet/steamcrafted/loadtoast/LoadToast;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mReAttached:Z

    return p0
.end method

.method static synthetic access$800(Lnet/steamcrafted/loadtoast/LoadToast;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToast;->cleanup()V

    return-void
.end method

.method private attach()V
    .locals 4

    .line 121
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToast;->cleanup()V

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mReAttached:Z

    .line 125
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 127
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    new-instance v1, Lnet/steamcrafted/loadtoast/LoadToast$1;

    invoke-direct {v1, p0}, Lnet/steamcrafted/loadtoast/LoadToast$1;-><init>(Lnet/steamcrafted/loadtoast/LoadToast;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private cleanup()V
    .locals 2

    .line 36
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    .line 38
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lnet/steamcrafted/loadtoast/LoadToastView;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/steamcrafted/loadtoast/LoadToastView;

    .line 40
    invoke-virtual {v1}, Lnet/steamcrafted/loadtoast/LoadToastView;->cleanup()V

    .line 41
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mInflated:Z

    .line 46
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mToastCanceled:Z

    return-void
.end method

.method private showInternal()V
    .locals 3

    .line 107
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/LoadToastView;->show()V

    .line 108
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 109
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 110
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mTranslationY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 112
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mTranslationY:I

    add-int/lit8 v1, v1, 0x19

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 113
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setStartDelay(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mVisible:Z

    return-void
.end method

.method private slideUp()V
    .locals 1

    const/16 v0, 0x3e8

    .line 171
    invoke-direct {p0, v0}, Lnet/steamcrafted/loadtoast/LoadToast;->slideUp(I)V

    return-void
.end method

.method private slideUp(I)V
    .locals 4

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mReAttached:Z

    .line 177
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-static {v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setStartDelay(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    .line 178
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mTranslationY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 179
    invoke-virtual {p1, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x12c

    .line 180
    invoke-virtual {p1, v1, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lnet/steamcrafted/loadtoast/LoadToast$2;

    invoke-direct {v1, p0}, Lnet/steamcrafted/loadtoast/LoadToast$2;-><init>(Lnet/steamcrafted/loadtoast/LoadToast;)V

    .line 181
    invoke-virtual {p1, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->start()V

    .line 191
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mVisible:Z

    return-void
.end method


# virtual methods
.method public error()V
    .locals 1

    .line 150
    iget-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mInflated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mToastCanceled:Z

    return-void

    .line 154
    :cond_0
    iget-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mReAttached:Z

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/LoadToastView;->error()V

    .line 156
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToast;->slideUp()V

    :cond_1
    return-void
.end method

.method public setBorderColor(I)Lnet/steamcrafted/loadtoast/LoadToast;
    .locals 1

    .line 81
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->setBorderColor(I)V

    return-object p0
.end method

.method public setBorderWidthDp(I)Lnet/steamcrafted/loadtoast/LoadToast;
    .locals 1

    .line 96
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->setBorderWidthDp(I)V

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lnet/steamcrafted/loadtoast/LoadToast;
    .locals 1

    .line 55
    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mText:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->setText(Ljava/lang/String;)V

    return-object p0
.end method

.method public setTranslationY(I)Lnet/steamcrafted/loadtoast/LoadToast;
    .locals 0

    .line 50
    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mTranslationY:I

    return-object p0
.end method

.method public show()Lnet/steamcrafted/loadtoast/LoadToast;
    .locals 1

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mShowCalled:Z

    .line 102
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToast;->attach()V

    return-object p0
.end method

.method public success()V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mInflated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mToastCanceled:Z

    return-void

    .line 143
    :cond_0
    iget-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mReAttached:Z

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/LoadToastView;->success()V

    .line 145
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToast;->slideUp()V

    :cond_1
    return-void
.end method
