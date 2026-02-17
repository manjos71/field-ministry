.class public Lcom/stepstone/stepper/StepperLayout$OnBackClickedCallback;
.super Lcom/stepstone/stepper/StepperLayout$AbstractOnButtonClickedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stepstone/stepper/StepperLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnBackClickedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stepstone/stepper/StepperLayout;


# direct methods
.method public constructor <init>(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/stepstone/stepper/StepperLayout$OnBackClickedCallback;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-direct {p0, p1}, Lcom/stepstone/stepper/StepperLayout$AbstractOnButtonClickedCallback;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    return-void
.end method


# virtual methods
.method public goToPrevStep()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout$OnBackClickedCallback;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {v0}, Lcom/stepstone/stepper/StepperLayout;->access$100(Lcom/stepstone/stepper/StepperLayout;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout$OnBackClickedCallback;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {v0}, Lcom/stepstone/stepper/StepperLayout;->access$600(Lcom/stepstone/stepper/StepperLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout$OnBackClickedCallback;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {v0}, Lcom/stepstone/stepper/StepperLayout;->access$500(Lcom/stepstone/stepper/StepperLayout;)Lcom/stepstone/stepper/StepperLayout$StepperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/stepstone/stepper/StepperLayout$StepperListener;->onReturn()V

    :cond_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout$OnBackClickedCallback;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {v0}, Lcom/stepstone/stepper/StepperLayout;->access$110(Lcom/stepstone/stepper/StepperLayout;)I

    .line 170
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout$OnBackClickedCallback;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {v0}, Lcom/stepstone/stepper/StepperLayout;->access$100(Lcom/stepstone/stepper/StepperLayout;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/stepstone/stepper/StepperLayout;->access$200(Lcom/stepstone/stepper/StepperLayout;IZ)V

    return-void
.end method
