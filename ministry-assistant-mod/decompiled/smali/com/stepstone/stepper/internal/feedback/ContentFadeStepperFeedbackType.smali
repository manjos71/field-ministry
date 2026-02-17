.class public Lcom/stepstone/stepper/internal/feedback/ContentFadeStepperFeedbackType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;


# instance fields
.field private final mFadeOutAlpha:F

.field private final mPager:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lcom/stepstone/stepper/R$id;->ms_stepPager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/stepstone/stepper/internal/feedback/ContentFadeStepperFeedbackType;->mPager:Landroid/view/View;

    .line 44
    invoke-virtual {p1}, Lcom/stepstone/stepper/StepperLayout;->getContentFadeAlpha()F

    move-result p1

    iput p1, p0, Lcom/stepstone/stepper/internal/feedback/ContentFadeStepperFeedbackType;->mFadeOutAlpha:F

    return-void
.end method
