.class public Lcom/stepstone/stepper/internal/type/TabsStepperType;
.super Lcom/stepstone/stepper/internal/type/AbstractStepperType;
.source "SourceFile"


# instance fields
.field private final mTabsContainer:Lcom/stepstone/stepper/internal/widget/TabsContainer;


# direct methods
.method public constructor <init>(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 4

    .line 46
    invoke-direct {p0, p1}, Lcom/stepstone/stepper/internal/type/AbstractStepperType;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    .line 47
    sget v0, Lcom/stepstone/stepper/R$id;->ms_stepTabsContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/stepstone/stepper/internal/widget/TabsContainer;

    iput-object v0, p0, Lcom/stepstone/stepper/internal/type/TabsStepperType;->mTabsContainer:Lcom/stepstone/stepper/internal/widget/TabsContainer;

    .line 48
    invoke-virtual {p1}, Lcom/stepstone/stepper/StepperLayout;->getSelectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/widget/TabsContainer;->setSelectedColor(I)V

    .line 49
    invoke-virtual {p1}, Lcom/stepstone/stepper/StepperLayout;->getUnselectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/widget/TabsContainer;->setUnselectedColor(I)V

    .line 50
    invoke-virtual {p1}, Lcom/stepstone/stepper/StepperLayout;->getErrorColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/widget/TabsContainer;->setErrorColor(I)V

    .line 51
    invoke-virtual {p1}, Lcom/stepstone/stepper/StepperLayout;->getTabStepDividerWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/widget/TabsContainer;->setDividerWidth(I)V

    .line 52
    invoke-virtual {v0, p1}, Lcom/stepstone/stepper/internal/widget/TabsContainer;->setListener(Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;)V

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    new-instance p1, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Step 1"

    .line 57
    invoke-virtual {p1, v2}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->create()Lcom/stepstone/stepper/viewmodel/StepViewModel;

    move-result-object p1

    new-instance v2, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    invoke-direct {v2, v1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Step 2"

    .line 58
    invoke-virtual {v2, v1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    move-result-object v1

    const-string v2, "Optional"

    invoke-virtual {v1, v2}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->create()Lcom/stepstone/stepper/viewmodel/StepViewModel;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/stepstone/stepper/viewmodel/StepViewModel;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    .line 56
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stepstone/stepper/internal/widget/TabsContainer;->setSteps(Ljava/util/List;)V

    .line 60
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v3, p1, v3}, Lcom/stepstone/stepper/internal/widget/TabsContainer;->updateSteps(ILandroid/util/SparseArray;Z)V

    .line 61
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onNewAdapter(Lcom/stepstone/stepper/adapter/StepAdapter;)V
    .locals 5

    .line 82
    invoke-super {p0, p1}, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->onNewAdapter(Lcom/stepstone/stepper/adapter/StepAdapter;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {p1}, Lcom/stepstone/stepper/adapter/StepAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 86
    invoke-interface {p1, v3}, Lcom/stepstone/stepper/adapter/StepAdapter;->getViewModel(I)Lcom/stepstone/stepper/viewmodel/StepViewModel;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/stepstone/stepper/internal/type/TabsStepperType;->mTabsContainer:Lcom/stepstone/stepper/internal/widget/TabsContainer;

    invoke-virtual {p1, v0}, Lcom/stepstone/stepper/internal/widget/TabsContainer;->setSteps(Ljava/util/List;)V

    .line 89
    iget-object p1, p0, Lcom/stepstone/stepper/internal/type/TabsStepperType;->mTabsContainer:Lcom/stepstone/stepper/internal/widget/TabsContainer;

    const/4 v0, 0x1

    if-le v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStepSelected(IZ)V
    .locals 2

    .line 70
    iget-object p2, p0, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

    invoke-virtual {p2}, Lcom/stepstone/stepper/StepperLayout;->isShowErrorStateEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 71
    iget-object p2, p0, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->mStepErrors:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 74
    :cond_0
    iget-object p2, p0, Lcom/stepstone/stepper/internal/type/TabsStepperType;->mTabsContainer:Lcom/stepstone/stepper/internal/widget/TabsContainer;

    iget-object v0, p0, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->mStepErrors:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

    invoke-virtual {v1}, Lcom/stepstone/stepper/StepperLayout;->isShowErrorMessageEnabled()Z

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/stepstone/stepper/internal/widget/TabsContainer;->updateSteps(ILandroid/util/SparseArray;Z)V

    return-void
.end method
