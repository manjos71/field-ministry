.class public Lcom/stepstone/stepper/internal/widget/StepTab;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stepstone/stepper/internal/widget/StepTab$DoneState;,
        Lcom/stepstone/stepper/internal/widget/StepTab$ActiveNumberState;,
        Lcom/stepstone/stepper/internal/widget/StepTab$InactiveNumberState;,
        Lcom/stepstone/stepper/internal/widget/StepTab$AbstractNumberState;,
        Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;
    }
.end annotation


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mBoldTypeface:Landroid/graphics/Typeface;

.field mCurrentState:Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;

.field private mErrorColor:I

.field private mNormalTypeface:Landroid/graphics/Typeface;

.field private mSelectedColor:I

.field final mStepDivider:Landroid/view/View;

.field final mStepDoneIndicator:Landroid/widget/ImageView;

.field final mStepIconBackground:Landroid/widget/ImageView;

.field final mStepNumberTextView:Landroid/widget/TextView;

.field final mStepSubtitleTextView:Landroid/widget/TextView;

.field final mStepTitleTextView:Landroid/widget/TextView;

.field mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleColor:I

.field private mTitleColor:I

.field private mUnselectedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, p2, v0}, Lcom/stepstone/stepper/internal/widget/StepTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    new-instance p2, Lcom/stepstone/stepper/internal/widget/StepTab$InactiveNumberState;

    invoke-direct {p2, p0}, Lcom/stepstone/stepper/internal/widget/StepTab$InactiveNumberState;-><init>(Lcom/stepstone/stepper/internal/widget/StepTab;)V

    iput-object p2, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mCurrentState:Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;

    .line 114
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p2, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/stepstone/stepper/R$layout;->ms_step_tab:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 128
    sget p2, Lcom/stepstone/stepper/R$color;->ms_selectedColor:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mSelectedColor:I

    .line 129
    sget p2, Lcom/stepstone/stepper/R$color;->ms_unselectedColor:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mUnselectedColor:I

    .line 130
    sget p2, Lcom/stepstone/stepper/R$color;->ms_errorColor:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mErrorColor:I

    .line 132
    sget p1, Lcom/stepstone/stepper/R$id;->ms_stepNumber:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepNumberTextView:Landroid/widget/TextView;

    .line 133
    sget p1, Lcom/stepstone/stepper/R$id;->ms_stepDoneIndicator:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepDoneIndicator:Landroid/widget/ImageView;

    .line 134
    sget p1, Lcom/stepstone/stepper/R$id;->ms_stepIconBackground:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepIconBackground:Landroid/widget/ImageView;

    .line 135
    sget p2, Lcom/stepstone/stepper/R$id;->ms_stepDivider:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepDivider:Landroid/view/View;

    .line 136
    sget p2, Lcom/stepstone/stepper/R$id;->ms_stepTitle:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepTitleTextView:Landroid/widget/TextView;

    .line 137
    sget p3, Lcom/stepstone/stepper/R$id;->ms_stepSubtitle:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepSubtitleTextView:Landroid/widget/TextView;

    .line 139
    invoke-virtual {p2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    iput v1, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mTitleColor:I

    .line 140
    invoke-virtual {p3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p3

    iput p3, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mSubtitleColor:I

    .line 142
    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    const/4 p3, 0x0

    .line 143
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p3

    iput-object p3, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 144
    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mBoldTypeface:Landroid/graphics/Typeface;

    .line 145
    invoke-direct {p0}, Lcom/stepstone/stepper/internal/widget/StepTab;->createCircleToWarningDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 146
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/stepstone/stepper/internal/widget/StepTab;Ljava/lang/CharSequence;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/stepstone/stepper/internal/widget/StepTab;->updateSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/stepstone/stepper/internal/widget/StepTab;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mUnselectedColor:I

    return p0
.end method

.method static synthetic access$400(Lcom/stepstone/stepper/internal/widget/StepTab;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mTitleColor:I

    return p0
.end method

.method static synthetic access$500(Lcom/stepstone/stepper/internal/widget/StepTab;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mSubtitleColor:I

    return p0
.end method

.method static synthetic access$600(Lcom/stepstone/stepper/internal/widget/StepTab;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mSelectedColor:I

    return p0
.end method

.method private createCircleToWarningDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 227
    sget v0, Lcom/stepstone/stepper/R$drawable;->ms_animated_vector_circle_to_warning_24dp:I

    invoke-virtual {p0, v0}, Lcom/stepstone/stepper/internal/widget/StepTab;->createAnimatedVectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private updateSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/stepstone/stepper/internal/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mSubtitle:Ljava/lang/CharSequence;

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepSubtitleTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    invoke-static {p0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public createAnimatedVectorDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object p1

    return-object p1
.end method

.method public setDividerWidth(I)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepDivider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/stepstone/stepper/R$dimen;->ms_step_tab_divider_length:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public setErrorColor(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mErrorColor:I

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mSelectedColor:I

    return-void
.end method

.method public setStepNumber(Ljava/lang/CharSequence;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStepSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mSubtitle:Ljava/lang/CharSequence;

    .line 196
    invoke-direct {p0, p1}, Lcom/stepstone/stepper/internal/widget/StepTab;->updateSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStepTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mUnselectedColor:I

    return-void
.end method

.method public toggleDividerVisibility(Z)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateState(Lcom/stepstone/stepper/VerificationError;ZZZ)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepTitleTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    iget-object p4, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mBoldTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mNormalTypeface:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p2, :cond_1

    .line 172
    iget-object p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mCurrentState:Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;

    invoke-virtual {p1}, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;->changeToDone()V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 174
    iget-object p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mCurrentState:Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;

    invoke-virtual {p1}, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;->changeToActiveNumber()V

    return-void

    .line 176
    :cond_2
    iget-object p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab;->mCurrentState:Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;

    invoke-virtual {p1}, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;->changeToInactiveNumber()V

    return-void
.end method
