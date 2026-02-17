.class public Lcom/stepstone/stepper/internal/feedback/StepperFeedbackTypeComposite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;


# instance fields
.field private mChildren:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stepstone/stepper/internal/feedback/StepperFeedbackTypeComposite;->mChildren:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addComponent(Lcom/stepstone/stepper/internal/feedback/StepperFeedbackType;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/stepstone/stepper/internal/feedback/StepperFeedbackTypeComposite;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
