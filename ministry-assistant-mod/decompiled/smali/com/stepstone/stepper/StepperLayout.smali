.class public Lcom/stepstone/stepper/StepperLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stepstone/stepper/StepperLayout$OnCompleteClickListener;,
        Lcom/stepstone/stepper/StepperLayout$OnNextClickListener;,
        Lcom/stepstone/stepper/StepperLayout$OnBackClickListener;,
        Lcom/stepstone/stepper/StepperLayout$OnBackClickedCallback;,
        Lcom/stepstone/stepper/StepperLayout$OnCompleteClickedCallback;,
        Lcom/stepstone/stepper/StepperLayout$OnNextClickedCallback;,
        Lcom/stepstone/stepper/StepperLayout$AbstractOnButtonClickedCallback;,
        Lcom/stepstone/stepper/StepperLayout$StepperListener;
    }
.end annotation


# instance fields
.field private mBackButtonBackground:I

.field private mBackButtonColor:Landroid/content/res/ColorStateList;

.field private mBackButtonText:Ljava/lang/String;

.field private mBackNavigationButton:Landroid/widget/Button;

.field private mBottomNavigationBackground:I

.field private mCompleteButtonBackground:I

.field private mCompleteButtonColor:Landroid/content/res/ColorStateList;

.field private mCompleteButtonText:Ljava/lang/String;

.field private mCompleteNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

.field private mContentFadeAlpha:F

.field private mContentOverlayBackground:I

.field private mCurrentStepPosition:I

.field private mDottedProgressBar:Lcom/stepstone/stepper/internal/widget/DottedProgressBar;

.field private mErrorColor:I

.field private mFeedbackTypeMask:I

.field private mListener:Lcom/stepstone/stepper/StepperLayout$StepperListener;

.field private mNextButtonBackground:I

.field private mNextButtonColor:Landroid/content/res/ColorStateList;

.field private mNextButtonText:Ljava/lang/String;

.field private mNextNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

.field private mPager:Landroidx/viewpager/widget/ViewPager;

.field private mProgressBar:Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;

.field private mSelectedColor:I

.field private mShowBackButtonOnFirstStep:Z

.field private mShowBottomNavigation:Z

.field private mShowErrorMessageEnabled:Z

.field private mShowErrorStateEnabled:Z

.field private mShowErrorStateOnBackEnabled:Z

.field private mStepAdapter:Lcom/stepstone/stepper/adapter/StepAdapter;

.field private mStepNavigation:Landroid/view/ViewGroup;

.field private mStepperFeedbackType:Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;

.field private mStepperLayoutTheme:I

.field private mStepperType:Lcom/stepstone/stepper/internal/type/AbstractStepperType;

.field private mTabNavigationEnabled:Z

.field private mTabStepDividerWidth:I

.field private mTabsContainer:Lcom/stepstone/stepper/internal/widget/TabsContainer;

.field private mTypeIdentifier:I

.field private mUnselectedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 290
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 239
    iput p1, p0, Lcom/stepstone/stepper/StepperLayout;->mTabStepDividerWidth:I

    const/4 p1, 0x2

    .line 251
    iput p1, p0, Lcom/stepstone/stepper/StepperLayout;->mTypeIdentifier:I

    const/4 p1, 0x1

    .line 253
    iput p1, p0, Lcom/stepstone/stepper/StepperLayout;->mFeedbackTypeMask:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 261
    iput p1, p0, Lcom/stepstone/stepper/StepperLayout;->mContentFadeAlpha:F

    .line 282
    sget-object p1, Lcom/stepstone/stepper/StepperLayout$StepperListener;->NULL:Lcom/stepstone/stepper/StepperLayout$StepperListener;

    iput-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mListener:Lcom/stepstone/stepper/StepperLayout$StepperListener;

    .line 292
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget p1, Lcom/stepstone/stepper/R$attr;->ms_stepperStyle:I

    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/stepstone/stepper/StepperLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/stepstone/stepper/StepperLayout;)Lcom/stepstone/stepper/adapter/StepAdapter;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/stepstone/stepper/StepperLayout;->mStepAdapter:Lcom/stepstone/stepper/adapter/StepAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/stepstone/stepper/StepperLayout;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/stepstone/stepper/StepperLayout;->mCurrentStepPosition:I

    return p0
.end method

.method static synthetic access$108(Lcom/stepstone/stepper/StepperLayout;)I
    .locals 2

    .line 70
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mCurrentStepPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/stepstone/stepper/StepperLayout;->mCurrentStepPosition:I

    return v0
.end method

.method static synthetic access$110(Lcom/stepstone/stepper/StepperLayout;)I
    .locals 2

    .line 70
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mCurrentStepPosition:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/stepstone/stepper/StepperLayout;->mCurrentStepPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/stepstone/stepper/StepperLayout;IZ)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/stepstone/stepper/StepperLayout;->onUpdate(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/stepstone/stepper/StepperLayout;->invalidateCurrentPosition()V

    return-void
.end method

.method static synthetic access$400(Lcom/stepstone/stepper/StepperLayout;)Lcom/stepstone/stepper/internal/widget/RightNavigationButton;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/stepstone/stepper/StepperLayout;)Lcom/stepstone/stepper/StepperLayout$StepperListener;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/stepstone/stepper/StepperLayout;->mListener:Lcom/stepstone/stepper/StepperLayout$StepperListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/stepstone/stepper/StepperLayout;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/stepstone/stepper/StepperLayout;->mShowBackButtonOnFirstStep:Z

    return p0
.end method

.method static synthetic access$700(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/stepstone/stepper/StepperLayout;->onNext()V

    return-void
.end method

.method static synthetic access$800(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/stepstone/stepper/StepperLayout;->onComplete()V

    return-void
.end method

.method static synthetic access$900(Lcom/stepstone/stepper/StepperLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/stepstone/stepper/StepperLayout;->mPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private bindViews()V
    .locals 1

    .line 819
    sget v0, Lcom/stepstone/stepper/R$id;->ms_stepPager:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 821
    sget v0, Lcom/stepstone/stepper/R$id;->ms_stepPrevButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mBackNavigationButton:Landroid/widget/Button;

    .line 822
    sget v0, Lcom/stepstone/stepper/R$id;->ms_stepNextButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    iput-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mNextNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    .line 823
    sget v0, Lcom/stepstone/stepper/R$id;->ms_stepCompleteButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    iput-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    .line 825
    sget v0, Lcom/stepstone/stepper/R$id;->ms_bottomNavigation:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mStepNavigation:Landroid/view/ViewGroup;

    .line 827
    sget v0, Lcom/stepstone/stepper/R$id;->ms_stepDottedProgressBar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;

    iput-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mDottedProgressBar:Lcom/stepstone/stepper/internal/widget/DottedProgressBar;

    .line 829
    sget v0, Lcom/stepstone/stepper/R$id;->ms_stepProgressBar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;

    iput-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mProgressBar:Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;

    .line 831
    sget v0, Lcom/stepstone/stepper/R$id;->ms_stepTabsContainer:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/stepstone/stepper/internal/widget/TabsContainer;

    iput-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mTabsContainer:Lcom/stepstone/stepper/internal/widget/TabsContainer;

    return-void
.end method

.method private extractValuesFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 3

    if-eqz p1, :cond_12

    .line 836
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/stepstone/stepper/R$styleable;->StepperLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 839
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_backButtonColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/stepstone/stepper/StepperLayout;->mBackButtonColor:Landroid/content/res/ColorStateList;

    .line 842
    :cond_0
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_nextButtonColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/stepstone/stepper/StepperLayout;->mNextButtonColor:Landroid/content/res/ColorStateList;

    .line 845
    :cond_1
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_completeButtonColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteButtonColor:Landroid/content/res/ColorStateList;

    .line 848
    :cond_2
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_activeStepColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 849
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mSelectedColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/StepperLayout;->mSelectedColor:I

    .line 851
    :cond_3
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_inactiveStepColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 852
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mUnselectedColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/StepperLayout;->mUnselectedColor:I

    .line 854
    :cond_4
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_errorColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 855
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mErrorColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/StepperLayout;->mErrorColor:I

    .line 857
    :cond_5
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_bottomNavigationBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 858
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/StepperLayout;->mBottomNavigationBackground:I

    .line 861
    :cond_6
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_backButtonBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 862
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/StepperLayout;->mBackButtonBackground:I

    .line 864
    :cond_7
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_nextButtonBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 865
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/StepperLayout;->mNextButtonBackground:I

    .line 867
    :cond_8
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_completeButtonBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 868
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteButtonBackground:I

    .line 871
    :cond_9
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_backButtonText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 872
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/stepstone/stepper/StepperLayout;->mBackButtonText:Ljava/lang/String;

    .line 874
    :cond_a
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_nextButtonText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 875
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/stepstone/stepper/StepperLayout;->mNextButtonText:Ljava/lang/String;

    .line 877
    :cond_b
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_completeButtonText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 878
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteButtonText:Ljava/lang/String;

    .line 881
    :cond_c
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_tabStepDividerWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, -0x1

    .line 882
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/StepperLayout;->mTabStepDividerWidth:I

    .line 885
    :cond_d
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_showBackButtonOnFirstStep:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/stepstone/stepper/StepperLayout;->mShowBackButtonOnFirstStep:Z

    .line 887
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_showBottomNavigation:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/stepstone/stepper/StepperLayout;->mShowBottomNavigation:Z

    .line 889
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_showErrorState:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/stepstone/stepper/StepperLayout;->mShowErrorStateEnabled:Z

    .line 890
    sget v1, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_showErrorStateEnabled:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/stepstone/stepper/StepperLayout;->mShowErrorStateEnabled:Z

    .line 892
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_stepperType:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x2

    .line 893
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/StepperLayout;->mTypeIdentifier:I

    .line 896
    :cond_e
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_stepperFeedbackType:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 897
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/StepperLayout;->mFeedbackTypeMask:I

    .line 900
    :cond_f
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_stepperFeedback_contentFadeAlpha:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const/high16 v1, 0x3f000000    # 0.5f

    .line 901
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/StepperLayout;->mContentFadeAlpha:F

    .line 904
    :cond_10
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_stepperFeedback_contentOverlayBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 905
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/StepperLayout;->mContentOverlayBackground:I

    .line 908
    :cond_11
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_showErrorStateOnBack:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/stepstone/stepper/StepperLayout;->mShowErrorStateOnBackEnabled:Z

    .line 909
    sget v1, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_showErrorStateOnBackEnabled:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/stepstone/stepper/StepperLayout;->mShowErrorStateOnBackEnabled:Z

    .line 911
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_showErrorMessageEnabled:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/stepstone/stepper/StepperLayout;->mShowErrorMessageEnabled:Z

    .line 913
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_tabNavigationEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/stepstone/stepper/StepperLayout;->mTabNavigationEnabled:Z

    .line 915
    sget p2, Lcom/stepstone/stepper/R$styleable;->StepperLayout_ms_stepperLayoutTheme:I

    sget v0, Lcom/stepstone/stepper/R$style;->MSDefaultStepperLayoutTheme:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/StepperLayout;->mStepperLayoutTheme:I

    .line 917
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_12
    return-void
.end method

.method private findCurrentStep()Lcom/stepstone/stepper/Step;
    .locals 2

    .line 937
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mStepAdapter:Lcom/stepstone/stepper/adapter/StepAdapter;

    iget v1, p0, Lcom/stepstone/stepper/StepperLayout;->mCurrentStepPosition:I

    invoke-interface {v0, v1}, Lcom/stepstone/stepper/adapter/StepAdapter;->findStep(I)Lcom/stepstone/stepper/Step;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 738
    invoke-direct {p0}, Lcom/stepstone/stepper/StepperLayout;->initDefaultValues()V

    .line 739
    invoke-direct {p0, p1, p2}, Lcom/stepstone/stepper/StepperLayout;->extractValuesFromAttributes(Landroid/util/AttributeSet;I)V

    .line 741
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 743
    new-instance p2, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 744
    iget p1, p0, Lcom/stepstone/stepper/StepperLayout;->mStepperLayoutTheme:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/ContextThemeWrapper;->setTheme(I)V

    .line 746
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/stepstone/stepper/R$layout;->ms_stepper_layout:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 748
    invoke-virtual {p0, v0}, Lcom/stepstone/stepper/StepperLayout;->setOrientation(I)V

    .line 750
    invoke-direct {p0}, Lcom/stepstone/stepper/StepperLayout;->bindViews()V

    .line 752
    iget-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mPager:Landroidx/viewpager/widget/ViewPager;

    new-instance p2, Lcom/stepstone/stepper/StepperLayout$2;

    invoke-direct {p2, p0}, Lcom/stepstone/stepper/StepperLayout$2;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 760
    invoke-direct {p0}, Lcom/stepstone/stepper/StepperLayout;->initNavigation()V

    .line 762
    iget-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mDottedProgressBar:Lcom/stepstone/stepper/internal/widget/DottedProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 763
    iget-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mProgressBar:Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 764
    iget-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mTabsContainer:Lcom/stepstone/stepper/internal/widget/TabsContainer;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 765
    iget-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mStepNavigation:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/stepstone/stepper/StepperLayout;->mShowBottomNavigation:Z

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 767
    iget p1, p0, Lcom/stepstone/stepper/StepperLayout;->mTypeIdentifier:I

    invoke-static {p1, p0}, Lcom/stepstone/stepper/internal/type/StepperTypeFactory;->createType(ILcom/stepstone/stepper/StepperLayout;)Lcom/stepstone/stepper/internal/type/AbstractStepperType;

    move-result-object p1

    iput-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mStepperType:Lcom/stepstone/stepper/internal/type/AbstractStepperType;

    .line 768
    iget p1, p0, Lcom/stepstone/stepper/StepperLayout;->mFeedbackTypeMask:I

    invoke-static {p1, p0}, Lcom/stepstone/stepper/internal/feedback/StepperFeedbackTypeFactory;->createType(ILcom/stepstone/stepper/StepperLayout;)Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;

    move-result-object p1

    iput-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mStepperFeedbackType:Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;

    return-void
.end method

.method private initDefaultValues()V
    .locals 2

    .line 923
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/stepstone/stepper/R$color;->ms_bottomNavigationButtonTextColor:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteButtonColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mNextButtonColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mBackButtonColor:Landroid/content/res/ColorStateList;

    .line 924
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/stepstone/stepper/R$color;->ms_selectedColor:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/stepstone/stepper/StepperLayout;->mSelectedColor:I

    .line 925
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/stepstone/stepper/R$color;->ms_unselectedColor:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/stepstone/stepper/StepperLayout;->mUnselectedColor:I

    .line 926
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/stepstone/stepper/R$color;->ms_errorColor:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/stepstone/stepper/StepperLayout;->mErrorColor:I

    .line 927
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/stepstone/stepper/R$string;->ms_back:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mBackButtonText:Ljava/lang/String;

    .line 928
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/stepstone/stepper/R$string;->ms_next:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mNextButtonText:Ljava/lang/String;

    .line 929
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/stepstone/stepper/R$string;->ms_complete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteButtonText:Ljava/lang/String;

    return-void
.end method

.method private initNavigation()V
    .locals 3

    .line 772
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mBottomNavigationBackground:I

    if-eqz v0, :cond_0

    .line 773
    iget-object v1, p0, Lcom/stepstone/stepper/StepperLayout;->mStepNavigation:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mBackNavigationButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/stepstone/stepper/StepperLayout;->mBackButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mNextNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    iget-object v1, p0, Lcom/stepstone/stepper/StepperLayout;->mNextButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    iget-object v1, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mBackButtonBackground:I

    iget-object v1, p0, Lcom/stepstone/stepper/StepperLayout;->mBackNavigationButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/stepstone/stepper/StepperLayout;->setBackgroundIfPresent(ILandroid/view/View;)V

    .line 781
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mNextButtonBackground:I

    iget-object v1, p0, Lcom/stepstone/stepper/StepperLayout;->mNextNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    invoke-direct {p0, v0, v1}, Lcom/stepstone/stepper/StepperLayout;->setBackgroundIfPresent(ILandroid/view/View;)V

    .line 782
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteButtonBackground:I

    iget-object v1, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    invoke-direct {p0, v0, v1}, Lcom/stepstone/stepper/StepperLayout;->setBackgroundIfPresent(ILandroid/view/View;)V

    .line 784
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mBackNavigationButton:Landroid/widget/Button;

    new-instance v1, Lcom/stepstone/stepper/StepperLayout$OnBackClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stepstone/stepper/StepperLayout$OnBackClickListener;-><init>(Lcom/stepstone/stepper/StepperLayout;Lcom/stepstone/stepper/StepperLayout$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mNextNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    new-instance v1, Lcom/stepstone/stepper/StepperLayout$OnNextClickListener;

    invoke-direct {v1, p0, v2}, Lcom/stepstone/stepper/StepperLayout$OnNextClickListener;-><init>(Lcom/stepstone/stepper/StepperLayout;Lcom/stepstone/stepper/StepperLayout$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    new-instance v1, Lcom/stepstone/stepper/StepperLayout$OnCompleteClickListener;

    invoke-direct {v1, p0, v2}, Lcom/stepstone/stepper/StepperLayout$OnCompleteClickListener;-><init>(Lcom/stepstone/stepper/StepperLayout;Lcom/stepstone/stepper/StepperLayout$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private invalidateCurrentPosition()V
    .locals 3

    .line 962
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mStepperType:Lcom/stepstone/stepper/internal/type/AbstractStepperType;

    iget v1, p0, Lcom/stepstone/stepper/StepperLayout;->mCurrentStepPosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->onStepSelected(IZ)V

    return-void
.end method

.method private isLastPosition(I)Z
    .locals 2

    .line 933
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mStepAdapter:Lcom/stepstone/stepper/adapter/StepAdapter;

    invoke-interface {v0}, Lcom/stepstone/stepper/adapter/StepAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onComplete()V
    .locals 1

    .line 990
    invoke-direct {p0}, Lcom/stepstone/stepper/StepperLayout;->findCurrentStep()Lcom/stepstone/stepper/Step;

    move-result-object v0

    .line 991
    invoke-direct {p0, v0}, Lcom/stepstone/stepper/StepperLayout;->verifyCurrentStep(Lcom/stepstone/stepper/Step;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    invoke-direct {p0}, Lcom/stepstone/stepper/StepperLayout;->invalidateCurrentPosition()V

    return-void

    .line 996
    :cond_0
    new-instance v0, Lcom/stepstone/stepper/StepperLayout$OnCompleteClickedCallback;

    invoke-direct {v0, p0}, Lcom/stepstone/stepper/StepperLayout$OnCompleteClickedCallback;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    .line 1000
    invoke-virtual {v0}, Lcom/stepstone/stepper/StepperLayout$OnCompleteClickedCallback;->complete()V

    return-void
.end method

.method private onNext()V
    .locals 1

    .line 946
    invoke-direct {p0}, Lcom/stepstone/stepper/StepperLayout;->findCurrentStep()Lcom/stepstone/stepper/Step;

    move-result-object v0

    .line 948
    invoke-direct {p0, v0}, Lcom/stepstone/stepper/StepperLayout;->verifyCurrentStep(Lcom/stepstone/stepper/Step;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    invoke-direct {p0}, Lcom/stepstone/stepper/StepperLayout;->invalidateCurrentPosition()V

    return-void

    .line 953
    :cond_0
    new-instance v0, Lcom/stepstone/stepper/StepperLayout$OnNextClickedCallback;

    invoke-direct {v0, p0}, Lcom/stepstone/stepper/StepperLayout$OnNextClickedCallback;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    .line 957
    invoke-virtual {v0}, Lcom/stepstone/stepper/StepperLayout$OnNextClickedCallback;->goToNextStep()V

    return-void
.end method

.method private onUpdate(IZ)V
    .locals 7

    .line 1005
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 1006
    invoke-direct {p0, p1}, Lcom/stepstone/stepper/StepperLayout;->isLastPosition(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1008
    :goto_0
    iget-object v3, p0, Lcom/stepstone/stepper/StepperLayout;->mStepAdapter:Lcom/stepstone/stepper/adapter/StepAdapter;

    invoke-interface {v3, p1}, Lcom/stepstone/stepper/adapter/StepAdapter;->getViewModel(I)Lcom/stepstone/stepper/viewmodel/StepViewModel;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    .line 1010
    iget-boolean v2, p0, Lcom/stepstone/stepper/StepperLayout;->mShowBackButtonOnFirstStep:Z

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v3}, Lcom/stepstone/stepper/viewmodel/StepViewModel;->isBackButtonVisible()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/16 v2, 0x8

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 1011
    invoke-virtual {v3}, Lcom/stepstone/stepper/viewmodel/StepViewModel;->isEndButtonVisible()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/16 v5, 0x8

    :goto_3
    if-eqz v0, :cond_6

    .line 1012
    invoke-virtual {v3}, Lcom/stepstone/stepper/viewmodel/StepViewModel;->isEndButtonVisible()Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    const/16 v1, 0x8

    .line 1014
    :cond_7
    iget-object v4, p0, Lcom/stepstone/stepper/StepperLayout;->mNextNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    invoke-static {v4, v5, p2}, Lcom/stepstone/stepper/internal/util/AnimationUtil;->fadeViewVisibility(Landroid/view/View;IZ)V

    .line 1015
    iget-object v4, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    invoke-static {v4, v1, p2}, Lcom/stepstone/stepper/internal/util/AnimationUtil;->fadeViewVisibility(Landroid/view/View;IZ)V

    .line 1016
    iget-object v1, p0, Lcom/stepstone/stepper/StepperLayout;->mBackNavigationButton:Landroid/widget/Button;

    invoke-static {v1, v2, p2}, Lcom/stepstone/stepper/internal/util/AnimationUtil;->fadeViewVisibility(Landroid/view/View;IZ)V

    .line 1018
    invoke-direct {p0, v3}, Lcom/stepstone/stepper/StepperLayout;->updateBackButton(Lcom/stepstone/stepper/viewmodel/StepViewModel;)V

    .line 1020
    invoke-virtual {v3}, Lcom/stepstone/stepper/viewmodel/StepViewModel;->getEndButtonLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteButtonText:Ljava/lang/String;

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/stepstone/stepper/StepperLayout;->mNextButtonText:Ljava/lang/String;

    :goto_4
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mNextNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    :goto_5
    invoke-direct {p0, v1, v2, v0}, Lcom/stepstone/stepper/StepperLayout;->updateEndButton(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 1024
    invoke-virtual {v3}, Lcom/stepstone/stepper/viewmodel/StepViewModel;->getBackButtonStartDrawableResId()I

    move-result v0

    invoke-virtual {v3}, Lcom/stepstone/stepper/viewmodel/StepViewModel;->getNextButtonEndDrawableResId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/stepstone/stepper/StepperLayout;->setCompoundDrawablesForNavigationButtons(II)V

    .line 1026
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mStepperType:Lcom/stepstone/stepper/internal/type/AbstractStepperType;

    invoke-virtual {v0, p1, p2}, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->onStepSelected(IZ)V

    .line 1027
    iget-object p2, p0, Lcom/stepstone/stepper/StepperLayout;->mListener:Lcom/stepstone/stepper/StepperLayout$StepperListener;

    invoke-interface {p2, p1}, Lcom/stepstone/stepper/StepperLayout$StepperListener;->onStepSelected(I)V

    .line 1028
    iget-object p2, p0, Lcom/stepstone/stepper/StepperLayout;->mStepAdapter:Lcom/stepstone/stepper/adapter/StepAdapter;

    invoke-interface {p2, p1}, Lcom/stepstone/stepper/adapter/StepAdapter;->findStep(I)Lcom/stepstone/stepper/Step;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1030
    invoke-interface {p1}, Lcom/stepstone/stepper/Step;->onSelected()V

    :cond_a
    return-void
.end method

.method private setBackgroundIfPresent(ILandroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 814
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private setCompoundDrawablesForNavigationButtons(II)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 791
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eq p2, v1, :cond_1

    .line 794
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 797
    :goto_1
    iget-object v1, p0, Lcom/stepstone/stepper/StepperLayout;->mBackNavigationButton:Landroid/widget/Button;

    invoke-virtual {v1, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 802
    iget-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mNextNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    invoke-virtual {p1, v0, v0, p2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 807
    iget-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mBackNavigationButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/stepstone/stepper/StepperLayout;->mBackButtonColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, p2}, Lcom/stepstone/stepper/internal/util/TintUtil;->tintTextView(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 808
    iget-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mNextNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    iget-object p2, p0, Lcom/stepstone/stepper/StepperLayout;->mNextButtonColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, p2}, Lcom/stepstone/stepper/internal/util/TintUtil;->tintTextView(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 809
    iget-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    iget-object p2, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteButtonColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, p2}, Lcom/stepstone/stepper/internal/util/TintUtil;->tintTextView(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private updateBackButton(Lcom/stepstone/stepper/viewmodel/StepViewModel;)V
    .locals 1

    .line 1045
    invoke-virtual {p1}, Lcom/stepstone/stepper/viewmodel/StepViewModel;->getBackButtonLabel()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1047
    iget-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mBackNavigationButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mBackButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mBackNavigationButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateEndButton(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1038
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1040
    :cond_0
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateError(Lcom/stepstone/stepper/VerificationError;)V
    .locals 2

    .line 978
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mStepperType:Lcom/stepstone/stepper/internal/type/AbstractStepperType;

    iget v1, p0, Lcom/stepstone/stepper/StepperLayout;->mCurrentStepPosition:I

    invoke-virtual {v0, v1, p1}, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->setError(ILcom/stepstone/stepper/VerificationError;)V

    return-void
.end method

.method private updateErrorFlagWhenGoingBack()V
    .locals 2

    .line 941
    iget-boolean v0, p0, Lcom/stepstone/stepper/StepperLayout;->mShowErrorStateOnBackEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mStepperType:Lcom/stepstone/stepper/internal/type/AbstractStepperType;

    iget v1, p0, Lcom/stepstone/stepper/StepperLayout;->mCurrentStepPosition:I

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->getErrorAtPosition(I)Lcom/stepstone/stepper/VerificationError;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/stepstone/stepper/StepperLayout;->updateError(Lcom/stepstone/stepper/VerificationError;)V

    return-void
.end method

.method private verifyCurrentStep(Lcom/stepstone/stepper/Step;)Z
    .locals 0

    .line 966
    invoke-interface {p1}, Lcom/stepstone/stepper/Step;->verifyStep()Lcom/stepstone/stepper/VerificationError;

    const/4 p1, 0x0

    .line 973
    invoke-direct {p0, p1}, Lcom/stepstone/stepper/StepperLayout;->updateError(Lcom/stepstone/stepper/VerificationError;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getAdapter()Lcom/stepstone/stepper/adapter/StepAdapter;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mStepAdapter:Lcom/stepstone/stepper/adapter/StepAdapter;

    return-object v0
.end method

.method public getContentFadeAlpha()F
    .locals 1

    .line 724
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mContentFadeAlpha:F

    return v0
.end method

.method public getContentOverlayBackground()I
    .locals 1

    .line 733
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mContentOverlayBackground:I

    return v0
.end method

.method public getCurrentStepPosition()I
    .locals 1

    .line 443
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mCurrentStepPosition:I

    return v0
.end method

.method public getErrorColor()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mErrorColor:I

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .line 366
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mSelectedColor:I

    return v0
.end method

.method public getTabStepDividerWidth()I
    .locals 1

    .line 378
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mTabStepDividerWidth:I

    return v0
.end method

.method public getUnselectedColor()I
    .locals 1

    .line 370
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mUnselectedColor:I

    return v0
.end method

.method public isShowErrorMessageEnabled()Z
    .locals 1

    .line 575
    iget-boolean v0, p0, Lcom/stepstone/stepper/StepperLayout;->mShowErrorMessageEnabled:Z

    return v0
.end method

.method public isShowErrorStateEnabled()Z
    .locals 1

    .line 552
    iget-boolean v0, p0, Lcom/stepstone/stepper/StepperLayout;->mShowErrorStateEnabled:Z

    return v0
.end method

.method public onBackClicked()V
    .locals 1

    .line 409
    invoke-direct {p0}, Lcom/stepstone/stepper/StepperLayout;->findCurrentStep()Lcom/stepstone/stepper/Step;

    .line 411
    invoke-direct {p0}, Lcom/stepstone/stepper/StepperLayout;->updateErrorFlagWhenGoingBack()V

    .line 413
    new-instance v0, Lcom/stepstone/stepper/StepperLayout$OnBackClickedCallback;

    invoke-direct {v0, p0}, Lcom/stepstone/stepper/StepperLayout$OnBackClickedCallback;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    .line 417
    invoke-virtual {v0}, Lcom/stepstone/stepper/StepperLayout$OnBackClickedCallback;->goToPrevStep()V

    return-void
.end method

.method public onTabClicked(I)V
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcom/stepstone/stepper/StepperLayout;->mTabNavigationEnabled:Z

    if-eqz v0, :cond_1

    .line 385
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mCurrentStepPosition:I

    if-le p1, v0, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/stepstone/stepper/StepperLayout;->onNext()V

    return-void

    :cond_0
    if-ge p1, v0, :cond_1

    .line 388
    invoke-virtual {p0, p1}, Lcom/stepstone/stepper/StepperLayout;->setCurrentStepPosition(I)V

    :cond_1
    return-void
.end method

.method public setAdapter(Lcom/stepstone/stepper/adapter/StepAdapter;)V
    .locals 2

    .line 325
    iput-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mStepAdapter:Lcom/stepstone/stepper/adapter/StepAdapter;

    .line 327
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-interface {p1}, Lcom/stepstone/stepper/adapter/StepAdapter;->getPagerAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 329
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mStepperType:Lcom/stepstone/stepper/internal/type/AbstractStepperType;

    invoke-virtual {v0, p1}, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->onNewAdapter(Lcom/stepstone/stepper/adapter/StepAdapter;)V

    .line 332
    iget-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/stepstone/stepper/StepperLayout$1;

    invoke-direct {v0, p0}, Lcom/stepstone/stepper/StepperLayout$1;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setBackButtonColor(I)V
    .locals 0

    .line 648
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stepstone/stepper/StepperLayout;->setBackButtonColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackButtonColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 620
    iput-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mBackButtonColor:Landroid/content/res/ColorStateList;

    .line 621
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mBackNavigationButton:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/stepstone/stepper/internal/util/TintUtil;->tintTextView(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackButtonEnabled(Z)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mBackNavigationButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setCompleteButtonColor(I)V
    .locals 0

    .line 639
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stepstone/stepper/StepperLayout;->setCompleteButtonColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCompleteButtonColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 610
    iput-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteButtonColor:Landroid/content/res/ColorStateList;

    .line 611
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    invoke-static {v0, p1}, Lcom/stepstone/stepper/internal/util/TintUtil;->tintTextView(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCompleteButtonEnabled(Z)V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setCompleteButtonVerificationFailed(Z)V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mCompleteNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    invoke-virtual {v0, p1}, Lcom/stepstone/stepper/internal/widget/RightNavigationButton;->setVerificationFailed(Z)V

    return-void
.end method

.method public setCurrentStepPosition(I)V
    .locals 1

    .line 428
    iget v0, p0, Lcom/stepstone/stepper/StepperLayout;->mCurrentStepPosition:I

    if-ge p1, v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/stepstone/stepper/StepperLayout;->updateErrorFlagWhenGoingBack()V

    .line 432
    :cond_0
    iput p1, p0, Lcom/stepstone/stepper/StepperLayout;->mCurrentStepPosition:I

    const/4 v0, 0x1

    .line 434
    invoke-direct {p0, p1, v0}, Lcom/stepstone/stepper/StepperLayout;->onUpdate(IZ)V

    return-void
.end method

.method public setFeedbackType(I)V
    .locals 0

    .line 715
    iput p1, p0, Lcom/stepstone/stepper/StepperLayout;->mFeedbackTypeMask:I

    .line 716
    invoke-static {p1, p0}, Lcom/stepstone/stepper/internal/feedback/StepperFeedbackTypeFactory;->createType(ILcom/stepstone/stepper/StepperLayout;)Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;

    move-result-object p1

    iput-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mStepperFeedbackType:Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;

    return-void
.end method

.method public setListener(Lcom/stepstone/stepper/StepperLayout$StepperListener;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mListener:Lcom/stepstone/stepper/StepperLayout$StepperListener;

    return-void
.end method

.method public setNextButtonColor(I)V
    .locals 0

    .line 630
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stepstone/stepper/StepperLayout;->setNextButtonColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setNextButtonColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 600
    iput-object p1, p0, Lcom/stepstone/stepper/StepperLayout;->mNextButtonColor:Landroid/content/res/ColorStateList;

    .line 601
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mNextNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    invoke-static {v0, p1}, Lcom/stepstone/stepper/internal/util/TintUtil;->tintTextView(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setNextButtonEnabled(Z)V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mNextNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setNextButtonVerificationFailed(Z)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mNextNavigationButton:Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    invoke-virtual {v0, p1}, Lcom/stepstone/stepper/internal/widget/RightNavigationButton;->setVerificationFailed(Z)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public final setOrientation(I)V
    .locals 0

    const/4 p1, 0x1

    .line 303
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public setPageTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    return-void
.end method

.method public setShowBottomNavigation(Z)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout;->mStepNavigation:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setShowErrorMessageEnabled(Z)V
    .locals 0

    .line 568
    iput-boolean p1, p0, Lcom/stepstone/stepper/StepperLayout;->mShowErrorMessageEnabled:Z

    return-void
.end method

.method public setShowErrorState(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 536
    invoke-virtual {p0, p1}, Lcom/stepstone/stepper/StepperLayout;->setShowErrorStateEnabled(Z)V

    return-void
.end method

.method public setShowErrorStateEnabled(Z)V
    .locals 0

    .line 545
    iput-boolean p1, p0, Lcom/stepstone/stepper/StepperLayout;->mShowErrorStateEnabled:Z

    return-void
.end method

.method public setShowErrorStateOnBack(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 516
    iput-boolean p1, p0, Lcom/stepstone/stepper/StepperLayout;->mShowErrorStateOnBackEnabled:Z

    return-void
.end method

.method public setShowErrorStateOnBackEnabled(Z)V
    .locals 0

    .line 525
    iput-boolean p1, p0, Lcom/stepstone/stepper/StepperLayout;->mShowErrorStateOnBackEnabled:Z

    return-void
.end method

.method public setTabNavigationEnabled(Z)V
    .locals 0

    .line 591
    iput-boolean p1, p0, Lcom/stepstone/stepper/StepperLayout;->mTabNavigationEnabled:Z

    return-void
.end method
