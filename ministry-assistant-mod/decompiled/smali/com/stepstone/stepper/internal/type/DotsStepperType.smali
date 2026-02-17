.class public Lcom/stepstone/stepper/internal/type/DotsStepperType;
.super Lcom/stepstone/stepper/internal/type/AbstractStepperType;
.source "SourceFile"


# instance fields
.field private final mDottedProgressBar:Lcom/stepstone/stepper/internal/widget/DottedProgressBar;


# direct methods
.method public constructor <init>(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/stepstone/stepper/internal/type/AbstractStepperType;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    .line 42
    sget v0, Lcom/stepstone/stepper/R$id;->ms_stepDottedProgressBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;

    iput-object v0, p0, Lcom/stepstone/stepper/internal/type/DotsStepperType;->mDottedProgressBar:Lcom/stepstone/stepper/internal/widget/DottedProgressBar;

    .line 44
    invoke-virtual {p0}, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->getSelectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->setSelectedColor(I)V

    .line 45
    invoke-virtual {p0}, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->getUnselectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->setUnselectedColor(I)V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 48
    invoke-virtual {v0, p1}, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->setDotCount(I)V

    const/4 p1, 0x0

    .line 49
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onNewAdapter(Lcom/stepstone/stepper/adapter/StepAdapter;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->onNewAdapter(Lcom/stepstone/stepper/adapter/StepAdapter;)V

    .line 67
    invoke-interface {p1}, Lcom/stepstone/stepper/adapter/StepAdapter;->getCount()I

    move-result p1

    .line 68
    iget-object v0, p0, Lcom/stepstone/stepper/internal/type/DotsStepperType;->mDottedProgressBar:Lcom/stepstone/stepper/internal/widget/DottedProgressBar;

    invoke-virtual {v0, p1}, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->setDotCount(I)V

    .line 69
    iget-object v0, p0, Lcom/stepstone/stepper/internal/type/DotsStepperType;->mDottedProgressBar:Lcom/stepstone/stepper/internal/widget/DottedProgressBar;

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStepSelected(IZ)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/stepstone/stepper/internal/type/DotsStepperType;->mDottedProgressBar:Lcom/stepstone/stepper/internal/widget/DottedProgressBar;

    invoke-virtual {v0, p1, p2}, Lcom/stepstone/stepper/internal/widget/DottedProgressBar;->setCurrent(IZ)V

    return-void
.end method
