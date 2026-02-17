.class public Lcom/stepstone/stepper/StepperLayout$OnNextClickedCallback;
.super Lcom/stepstone/stepper/StepperLayout$AbstractOnButtonClickedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stepstone/stepper/StepperLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnNextClickedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stepstone/stepper/StepperLayout;


# direct methods
.method public constructor <init>(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/stepstone/stepper/StepperLayout$OnNextClickedCallback;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-direct {p0, p1}, Lcom/stepstone/stepper/StepperLayout$AbstractOnButtonClickedCallback;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    return-void
.end method


# virtual methods
.method public goToNextStep()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout$OnNextClickedCallback;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {v0}, Lcom/stepstone/stepper/StepperLayout;->access$000(Lcom/stepstone/stepper/StepperLayout;)Lcom/stepstone/stepper/adapter/StepAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/stepstone/stepper/adapter/StepAdapter;->getCount()I

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/stepstone/stepper/StepperLayout$OnNextClickedCallback;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {v1}, Lcom/stepstone/stepper/StepperLayout;->access$100(Lcom/stepstone/stepper/StepperLayout;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-lt v1, v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout$OnNextClickedCallback;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {v0}, Lcom/stepstone/stepper/StepperLayout;->access$108(Lcom/stepstone/stepper/StepperLayout;)I

    .line 144
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout$OnNextClickedCallback;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {v0}, Lcom/stepstone/stepper/StepperLayout;->access$100(Lcom/stepstone/stepper/StepperLayout;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/stepstone/stepper/StepperLayout;->access$200(Lcom/stepstone/stepper/StepperLayout;IZ)V

    return-void
.end method
