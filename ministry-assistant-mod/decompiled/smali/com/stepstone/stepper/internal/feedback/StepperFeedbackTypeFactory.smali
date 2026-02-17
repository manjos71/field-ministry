.class public abstract Lcom/stepstone/stepper/internal/feedback/StepperFeedbackTypeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createType(ILcom/stepstone/stepper/StepperLayout;)Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;
    .locals 2

    .line 45
    new-instance v0, Lcom/stepstone/stepper/internal/feedback/StepperFeedbackTypeComposite;

    invoke-direct {v0}, Lcom/stepstone/stepper/internal/feedback/StepperFeedbackTypeComposite;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 53
    new-instance v1, Lcom/stepstone/stepper/internal/feedback/TabsStepperFeedbackType;

    invoke-direct {v1, p1}, Lcom/stepstone/stepper/internal/feedback/TabsStepperFeedbackType;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/feedback/StepperFeedbackTypeComposite;->addComponent(Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;)V

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 57
    new-instance v1, Lcom/stepstone/stepper/internal/feedback/ContentProgressStepperFeedbackType;

    invoke-direct {v1, p1}, Lcom/stepstone/stepper/internal/feedback/ContentProgressStepperFeedbackType;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/feedback/StepperFeedbackTypeComposite;->addComponent(Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;)V

    :cond_2
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3

    .line 61
    new-instance v1, Lcom/stepstone/stepper/internal/feedback/ContentFadeStepperFeedbackType;

    invoke-direct {v1, p1}, Lcom/stepstone/stepper/internal/feedback/ContentFadeStepperFeedbackType;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/feedback/StepperFeedbackTypeComposite;->addComponent(Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;)V

    :cond_3
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_4

    .line 65
    new-instance v1, Lcom/stepstone/stepper/internal/feedback/ContentOverlayStepperFeedbackType;

    invoke-direct {v1, p1}, Lcom/stepstone/stepper/internal/feedback/ContentOverlayStepperFeedbackType;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/feedback/StepperFeedbackTypeComposite;->addComponent(Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;)V

    :cond_4
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_5

    .line 69
    new-instance v1, Lcom/stepstone/stepper/internal/feedback/DisabledBottomNavigationStepperFeedbackType;

    invoke-direct {v1, p1}, Lcom/stepstone/stepper/internal/feedback/DisabledBottomNavigationStepperFeedbackType;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    invoke-virtual {v0, v1}, Lcom/stepstone/stepper/internal/feedback/StepperFeedbackTypeComposite;->addComponent(Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;)V

    :cond_5
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_6

    .line 73
    new-instance p0, Lcom/stepstone/stepper/internal/feedback/DisabledContentInteractionStepperFeedbackType;

    invoke-direct {p0, p1}, Lcom/stepstone/stepper/internal/feedback/DisabledContentInteractionStepperFeedbackType;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    invoke-virtual {v0, p0}, Lcom/stepstone/stepper/internal/feedback/StepperFeedbackTypeComposite;->addComponent(Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;)V

    :cond_6
    :goto_0
    return-object v0
.end method
