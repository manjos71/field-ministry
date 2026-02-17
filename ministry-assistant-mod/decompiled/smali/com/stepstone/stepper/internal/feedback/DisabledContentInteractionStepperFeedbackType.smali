.class public Lcom/stepstone/stepper/internal/feedback/DisabledContentInteractionStepperFeedbackType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;


# instance fields
.field private final mStepPager:Lcom/stepstone/stepper/internal/widget/StepViewPager;


# direct methods
.method public constructor <init>(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Lcom/stepstone/stepper/R$id;->ms_stepPager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/stepstone/stepper/internal/widget/StepViewPager;

    iput-object p1, p0, Lcom/stepstone/stepper/internal/feedback/DisabledContentInteractionStepperFeedbackType;->mStepPager:Lcom/stepstone/stepper/internal/widget/StepViewPager;

    return-void
.end method
