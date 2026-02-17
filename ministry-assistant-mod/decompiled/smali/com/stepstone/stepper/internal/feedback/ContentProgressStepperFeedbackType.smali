.class public Lcom/stepstone/stepper/internal/feedback/ContentProgressStepperFeedbackType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;


# instance fields
.field private final mPagerProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget v0, Lcom/stepstone/stepper/R$id;->ms_stepPagerProgressBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/stepstone/stepper/internal/feedback/ContentProgressStepperFeedbackType;->mPagerProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method
