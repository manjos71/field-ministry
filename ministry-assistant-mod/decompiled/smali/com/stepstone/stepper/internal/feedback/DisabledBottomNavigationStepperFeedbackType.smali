.class public Lcom/stepstone/stepper/internal/feedback/DisabledBottomNavigationStepperFeedbackType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;


# instance fields
.field private mStepperLayout:Lcom/stepstone/stepper/StepperLayout;


# direct methods
.method public constructor <init>(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/stepstone/stepper/internal/feedback/DisabledBottomNavigationStepperFeedbackType;->mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

    return-void
.end method
