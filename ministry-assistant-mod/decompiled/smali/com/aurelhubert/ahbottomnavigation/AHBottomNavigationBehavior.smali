.class public Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;
.super Lcom/aurelhubert/ahbottomnavigation/VerticalScrollingBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/aurelhubert/ahbottomnavigation/VerticalScrollingBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private behaviorTranslationEnabled:Z

.field private fabBottomMarginInitialized:Z

.field private fabDefaultBottomMargin:F

.field private fabTargetOffset:F

.field private hidden:Z

.field private mSnackbarHeight:I

.field private mTabLayoutId:I

.field private navigationBarHeight:I

.field private snackBarY:F

.field private snackbarLayout:Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

.field private targetOffset:F

.field private translationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/VerticalScrollingBehavior;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->hidden:Z

    const/4 v1, -0x1

    .line 38
    iput v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->mSnackbarHeight:I

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->navigationBarHeight:I

    .line 39
    iput-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->fabBottomMarginInitialized:Z

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->targetOffset:F

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->fabTargetOffset:F

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->fabDefaultBottomMargin:F

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->snackBarY:F

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->behaviorTranslationEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/aurelhubert/ahbottomnavigation/VerticalScrollingBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->hidden:Z

    const/4 v1, -0x1

    .line 38
    iput v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->mSnackbarHeight:I

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->navigationBarHeight:I

    .line 39
    iput-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->fabBottomMarginInitialized:Z

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->targetOffset:F

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->fabTargetOffset:F

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->fabDefaultBottomMargin:F

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->snackBarY:F

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->behaviorTranslationEnabled:Z

    .line 59
    sget-object v0, Lcom/aurelhubert/ahbottomnavigation/R$styleable;->AHBottomNavigationBehavior_Params:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lcom/aurelhubert/ahbottomnavigation/R$styleable;->AHBottomNavigationBehavior_Params_tabLayoutId:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->mTabLayoutId:I

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/VerticalScrollingBehavior;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->hidden:Z

    const/4 v1, -0x1

    .line 38
    iput v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->mSnackbarHeight:I

    .line 39
    iput-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->fabBottomMarginInitialized:Z

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->targetOffset:F

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->fabTargetOffset:F

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->fabDefaultBottomMargin:F

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->snackBarY:F

    .line 53
    iput-boolean p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->behaviorTranslationEnabled:Z

    .line 54
    iput p2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->navigationBarHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;)Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnNavigationPositionListener;
    .locals 0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method private animateOffset(Landroid/view/View;IZZ)V
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->behaviorTranslationEnabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->ensureOrCancelAnimator(Landroid/view/View;Z)V

    .line 158
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->translationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private ensureOrCancelAnimator(Landroid/view/View;Z)V
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->translationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x12c

    if-nez v0, :cond_1

    .line 169
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->translationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz p2, :cond_0

    move-wide v1, v3

    .line 170
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 171
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->translationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    new-instance p2, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior$1;

    invoke-direct {p2, p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior$1;-><init>(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;)V

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 179
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->translationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    sget-object p2, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    return-void

    :cond_1
    if-eqz p2, :cond_2

    move-wide v1, v3

    .line 181
    :cond_2
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 182
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->translationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    return-void
.end method

.method private findTabLayout(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout;
    .locals 2

    .line 74
    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->mTabLayoutId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 75
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    return-object v1
.end method

.method private handleDirection(Landroid/view/View;I)V
    .locals 3

    .line 131
    iget-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->behaviorTranslationEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    .line 134
    iget-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->hidden:Z

    if-eqz v0, :cond_1

    .line 135
    iput-boolean v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->hidden:Z

    .line 136
    invoke-direct {p0, p1, v2, v2, v1}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->animateOffset(Landroid/view/View;IZZ)V

    return-void

    :cond_1
    if-ne p2, v1, :cond_2

    .line 137
    iget-boolean p2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->hidden:Z

    if-nez p2, :cond_2

    .line 138
    iput-boolean v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->hidden:Z

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->animateOffset(Landroid/view/View;IZZ)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public hideView(Landroid/view/View;IZ)V
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->hidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->hidden:Z

    .line 267
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->animateOffset(Landroid/view/View;IZZ)V

    :cond_0
    return-void
.end method

.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    if-eqz p3, :cond_0

    .line 90
    instance-of v0, p3, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, p2, p3}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->updateSnackbar(Landroid/view/View;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    .line 94
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 80
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public onDirectionNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    return-void
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    .line 67
    iget p3, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->mTabLayoutId:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 68
    invoke-direct {p0, p2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->findTabLayout(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout;

    :cond_0
    return p1
.end method

.method protected onNestedDirectionFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0

    .line 112
    invoke-super/range {p0 .. p7}, Lcom/aurelhubert/ahbottomnavigation/VerticalScrollingBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    move-object p1, p0

    if-gez p5, :cond_0

    const/4 p3, -0x1

    .line 114
    invoke-direct {p0, p2, p3}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->handleDirection(Landroid/view/View;I)V

    return-void

    :cond_0
    if-lez p5, :cond_1

    const/4 p3, 0x1

    .line 116
    invoke-direct {p0, p2, p3}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->handleDirection(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public onNestedVerticalOverScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)V
    .locals 0

    return-void
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p5, v0, :cond_1

    .line 122
    invoke-super/range {p0 .. p5}, Lcom/aurelhubert/ahbottomnavigation/VerticalScrollingBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setBehaviorTranslationEnabled(ZI)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->behaviorTranslationEnabled:Z

    .line 242
    iput p2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->navigationBarHeight:I

    return-void
.end method

.method public setOnNavigationPositionListener(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnNavigationPositionListener;)V
    .locals 0

    return-void
.end method

.method public updateSnackbar(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 287
    instance-of v0, p2, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_1

    .line 289
    move-object v0, p2

    check-cast v0, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    iput-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->snackbarLayout:Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    .line 291
    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->mSnackbarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 292
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->mSnackbarHeight:I

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    .line 300
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 302
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 303
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method
