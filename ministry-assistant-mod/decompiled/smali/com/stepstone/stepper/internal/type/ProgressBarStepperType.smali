.class public Lcom/stepstone/stepper/internal/type/ProgressBarStepperType;
.super Lcom/stepstone/stepper/internal/type/AbstractStepperType;
.source "SourceFile"


# instance fields
.field private final mProgressBar:Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;


# direct methods
.method public constructor <init>(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Lcom/stepstone/stepper/internal/type/AbstractStepperType;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    .line 40
    sget v0, Lcom/stepstone/stepper/R$id;->ms_stepProgressBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;

    iput-object v0, p0, Lcom/stepstone/stepper/internal/type/ProgressBarStepperType;->mProgressBar:Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;

    .line 41
    invoke-virtual {p0}, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->getSelectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->setProgressColor(I)V

    .line 42
    invoke-virtual {p0}, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->getUnselectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->setProgressBackgroundColor(I)V

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 44
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1, p1}, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->setProgressCompat(IZ)V

    const/4 p1, 0x3

    .line 46
    invoke-virtual {v0, p1}, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->setMax(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onNewAdapter(Lcom/stepstone/stepper/adapter/StepAdapter;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->onNewAdapter(Lcom/stepstone/stepper/adapter/StepAdapter;)V

    .line 64
    invoke-interface {p1}, Lcom/stepstone/stepper/adapter/StepAdapter;->getCount()I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/stepstone/stepper/internal/type/ProgressBarStepperType;->mProgressBar:Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;

    invoke-interface {p1}, Lcom/stepstone/stepper/adapter/StepAdapter;->getCount()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->setMax(I)V

    .line 66
    iget-object p1, p0, Lcom/stepstone/stepper/internal/type/ProgressBarStepperType;->mProgressBar:Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStepSelected(IZ)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/stepstone/stepper/internal/type/ProgressBarStepperType;->mProgressBar:Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->setProgressCompat(IZ)V

    return-void
.end method
