.class public Lcom/stepstone/stepper/internal/widget/DottedProgressBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private mCurrent:I

.field private mDotCount:I

.field private mSelectedColor:I

.field private mUnselectedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->DEFAULT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    sget p2, Lcom/stepstone/stepper/R$color;->ms_selectedColor:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->mSelectedColor:I

    .line 69
    sget p2, Lcom/stepstone/stepper/R$color;->ms_unselectedColor:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->mUnselectedColor:I

    return-void
.end method

.method private colorChildAtPosition(IZ)V
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 124
    iget p2, p0, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->mSelectedColor:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->mUnselectedColor:I

    :goto_0
    invoke-static {p1, p2}, Lcom/stepstone/stepper/internal/util/TintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private update(Z)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 101
    :goto_0
    iget v2, p0, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->mDotCount:I

    if-ge v1, v2, :cond_3

    .line 102
    iget v2, p0, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->mCurrent:I

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x12c

    if-ne v1, v2, :cond_1

    .line 103
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v7, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 105
    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_0

    move-wide v3, v5

    .line 106
    :cond_0
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->DEFAULT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 107
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v2, 0x1

    .line 109
    invoke-direct {p0, v1, v2}, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->colorChildAtPosition(IZ)V

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v7, 0x3f000000    # 0.5f

    .line 112
    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_2

    move-wide v3, v5

    .line 114
    :cond_2
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->DEFAULT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 115
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 117
    invoke-direct {p0, v1, v0}, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->colorChildAtPosition(IZ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public setCurrent(IZ)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->mCurrent:I

    .line 97
    invoke-direct {p0, p2}, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->update(Z)V

    return-void
.end method

.method public setDotCount(I)V
    .locals 4

    .line 81
    iput p1, p0, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->mDotCount:I

    .line 82
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/stepstone/stepper/R$layout;->ms_dot:I

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 85
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->setCurrent(IZ)V

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->mSelectedColor:I

    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->mUnselectedColor:I

    return-void
.end method
