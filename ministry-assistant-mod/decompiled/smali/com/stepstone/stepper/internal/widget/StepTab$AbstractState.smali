.class abstract Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stepstone/stepper/internal/widget/StepTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AbstractState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stepstone/stepper/internal/widget/StepTab;


# direct methods
.method constructor <init>(Lcom/stepstone/stepper/internal/widget/StepTab;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected changeToActiveNumber()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    iget-object v1, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/stepstone/stepper/internal/widget/StepTab;->access$000(Lcom/stepstone/stepper/internal/widget/StepTab;Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    new-instance v1, Lcom/stepstone/stepper/internal/widget/StepTab$ActiveNumberState;

    invoke-direct {v1, v0}, Lcom/stepstone/stepper/internal/widget/StepTab$ActiveNumberState;-><init>(Lcom/stepstone/stepper/internal/widget/StepTab;)V

    iput-object v1, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mCurrentState:Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;

    return-void
.end method

.method protected changeToDone()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    iget-object v1, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/stepstone/stepper/internal/widget/StepTab;->access$000(Lcom/stepstone/stepper/internal/widget/StepTab;Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    new-instance v1, Lcom/stepstone/stepper/internal/widget/StepTab$DoneState;

    invoke-direct {v1, v0}, Lcom/stepstone/stepper/internal/widget/StepTab$DoneState;-><init>(Lcom/stepstone/stepper/internal/widget/StepTab;)V

    iput-object v1, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mCurrentState:Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;

    return-void
.end method

.method protected changeToInactiveNumber()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    iget-object v1, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/stepstone/stepper/internal/widget/StepTab;->access$000(Lcom/stepstone/stepper/internal/widget/StepTab;Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    new-instance v1, Lcom/stepstone/stepper/internal/widget/StepTab$InactiveNumberState;

    invoke-direct {v1, v0}, Lcom/stepstone/stepper/internal/widget/StepTab$InactiveNumberState;-><init>(Lcom/stepstone/stepper/internal/widget/StepTab;)V

    iput-object v1, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mCurrentState:Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;

    return-void
.end method
