.class public Lcom/stepstone/stepper/internal/widget/TabsContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;
    }
.end annotation


# instance fields
.field private mContainerLateralPadding:I

.field private mDividerWidth:I

.field private mErrorColor:I

.field private mListener:Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;

.field private mSelectedColor:I

.field private mStepViewModels:Ljava/util/List;

.field private mTabsInnerContainer:Landroid/widget/LinearLayout;

.field private mTabsScrollView:Landroid/widget/HorizontalScrollView;

.field private mUnselectedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0}, Lcom/stepstone/stepper/internal/widget/TabsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 79
    iput p2, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mDividerWidth:I

    .line 87
    sget-object p2, Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;->NULL:Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;

    iput-object p2, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mListener:Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/stepstone/stepper/R$layout;->ms_tabs_container:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 103
    sget p2, Lcom/stepstone/stepper/R$color;->ms_selectedColor:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mSelectedColor:I

    .line 104
    sget p2, Lcom/stepstone/stepper/R$color;->ms_unselectedColor:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mUnselectedColor:I

    .line 105
    sget p2, Lcom/stepstone/stepper/R$color;->ms_errorColor:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mErrorColor:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/stepstone/stepper/R$dimen;->ms_tabs_container_lateral_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mContainerLateralPadding:I

    .line 108
    sget p1, Lcom/stepstone/stepper/R$id;->ms_stepTabsInnerContainer:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mTabsInnerContainer:Landroid/widget/LinearLayout;

    .line 109
    sget p1, Lcom/stepstone/stepper/R$id;->ms_stepTabsScrollView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    iput-object p1, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mTabsScrollView:Landroid/widget/HorizontalScrollView;

    return-void
.end method

.method static synthetic access$000(Lcom/stepstone/stepper/internal/widget/TabsContainer;)Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mListener:Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;

    return-object p0
.end method

.method private createStepTab(ILcom/stepstone/stepper/viewmodel/StepViewModel;)Landroid/view/View;
    .locals 4

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/stepstone/stepper/R$layout;->ms_step_tab_container:I

    iget-object v2, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mTabsInnerContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/stepstone/stepper/internal/widget/StepTab;

    add-int/lit8 v1, p1, 0x1

    .line 170
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/widget/StepTab;->setStepNumber(Ljava/lang/CharSequence;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/stepstone/stepper/internal/widget/TabsContainer;->isLastPosition(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/widget/StepTab;->toggleDividerVisibility(Z)V

    .line 172
    invoke-virtual {p2}, Lcom/stepstone/stepper/viewmodel/StepViewModel;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/widget/StepTab;->setStepTitle(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p2}, Lcom/stepstone/stepper/viewmodel/StepViewModel;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/stepstone/stepper/internal/widget/StepTab;->setStepSubtitle(Ljava/lang/CharSequence;)V

    .line 174
    iget p2, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mSelectedColor:I

    invoke-virtual {v0, p2}, Lcom/stepstone/stepper/internal/widget/StepTab;->setSelectedColor(I)V

    .line 175
    iget p2, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mUnselectedColor:I

    invoke-virtual {v0, p2}, Lcom/stepstone/stepper/internal/widget/StepTab;->setUnselectedColor(I)V

    .line 176
    iget p2, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mErrorColor:I

    invoke-virtual {v0, p2}, Lcom/stepstone/stepper/internal/widget/StepTab;->setErrorColor(I)V

    .line 177
    iget p2, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mDividerWidth:I

    invoke-virtual {v0, p2}, Lcom/stepstone/stepper/internal/widget/StepTab;->setDividerWidth(I)V

    .line 179
    new-instance p2, Lcom/stepstone/stepper/internal/widget/TabsContainer$1;

    invoke-direct {p2, p0, p1}, Lcom/stepstone/stepper/internal/widget/TabsContainer$1;-><init>(Lcom/stepstone/stepper/internal/widget/TabsContainer;I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private isLastPosition(I)Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mStepViewModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public setDividerWidth(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mDividerWidth:I

    return-void
.end method

.method public setErrorColor(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mErrorColor:I

    return-void
.end method

.method public setListener(Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mListener:Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mSelectedColor:I

    return-void
.end method

.method public setSteps(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stepstone/stepper/viewmodel/StepViewModel;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mStepViewModels:Ljava/util/List;

    .line 140
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mTabsInnerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 141
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 142
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stepstone/stepper/viewmodel/StepViewModel;

    invoke-direct {p0, v0, v1}, Lcom/stepstone/stepper/internal/widget/TabsContainer;->createStepTab(ILcom/stepstone/stepper/viewmodel/StepViewModel;)Landroid/view/View;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mTabsInnerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mUnselectedColor:I

    return-void
.end method

.method public updateSteps(ILandroid/util/SparseArray;Z)V
    .locals 7

    .line 154
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mStepViewModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 156
    iget-object v3, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mTabsInnerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/stepstone/stepper/internal/widget/StepTab;

    const/4 v4, 0x1

    if-ge v2, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ne v2, p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 160
    :goto_2
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v6, 0x0

    .line 161
    invoke-virtual {v3, v6, v5, v4, p3}, Lcom/stepstone/stepper/internal/widget/StepTab;->updateState(Lcom/stepstone/stepper/VerificationError;ZZZ)V

    if-eqz v4, :cond_2

    .line 163
    iget-object v4, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mTabsScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v5, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer;->mContainerLateralPadding:I

    sub-int/2addr v3, v5

    invoke-virtual {v4, v3, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
