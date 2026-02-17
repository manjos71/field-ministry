.class public abstract Lcom/stepstone/stepper/internal/type/AbstractStepperType;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mStepErrors:Landroid/util/SparseArray;

.field final mStepperLayout:Lcom/stepstone/stepper/StepperLayout;


# direct methods
.method public constructor <init>(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->mStepErrors:Landroid/util/SparseArray;

    .line 63
    iput-object p1, p0, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

    return-void
.end method


# virtual methods
.method public getErrorAtPosition(I)Lcom/stepstone/stepper/VerificationError;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->mStepErrors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getSelectedColor()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

    invoke-virtual {v0}, Lcom/stepstone/stepper/StepperLayout;->getSelectedColor()I

    move-result v0

    return v0
.end method

.method protected getUnselectedColor()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

    invoke-virtual {v0}, Lcom/stepstone/stepper/StepperLayout;->getUnselectedColor()I

    move-result v0

    return v0
.end method

.method public onNewAdapter(Lcom/stepstone/stepper/adapter/StepAdapter;)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->mStepErrors:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public abstract onStepSelected(IZ)V
.end method

.method public setError(ILcom/stepstone/stepper/VerificationError;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/stepstone/stepper/internal/type/AbstractStepperType;->mStepErrors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
