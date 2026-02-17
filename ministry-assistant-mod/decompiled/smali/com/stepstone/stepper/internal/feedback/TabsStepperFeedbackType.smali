.class public Lcom/stepstone/stepper/internal/feedback/TabsStepperFeedbackType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;


# instance fields
.field private mProgressMessageTextView:Landroid/widget/TextView;

.field private final mProgressMessageTranslationWhenHidden:F

.field private mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

.field private mTabsScrollingContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/stepstone/stepper/R$dimen;->ms_progress_message_translation_when_hidden:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/stepstone/stepper/internal/feedback/TabsStepperFeedbackType;->mProgressMessageTranslationWhenHidden:F

    .line 54
    sget v0, Lcom/stepstone/stepper/R$id;->ms_stepTabsProgressMessage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/stepstone/stepper/internal/feedback/TabsStepperFeedbackType;->mProgressMessageTextView:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/stepstone/stepper/R$id;->ms_stepTabsScrollView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/stepstone/stepper/internal/feedback/TabsStepperFeedbackType;->mTabsScrollingContainer:Landroid/view/View;

    .line 56
    iput-object p1, p0, Lcom/stepstone/stepper/internal/feedback/TabsStepperFeedbackType;->mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

    .line 57
    iget-object p1, p0, Lcom/stepstone/stepper/internal/feedback/TabsStepperFeedbackType;->mProgressMessageTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
