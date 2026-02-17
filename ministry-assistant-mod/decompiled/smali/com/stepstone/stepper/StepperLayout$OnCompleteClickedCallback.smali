.class public Lcom/stepstone/stepper/StepperLayout$OnCompleteClickedCallback;
.super Lcom/stepstone/stepper/StepperLayout$AbstractOnButtonClickedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stepstone/stepper/StepperLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnCompleteClickedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stepstone/stepper/StepperLayout;


# direct methods
.method public constructor <init>(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/stepstone/stepper/StepperLayout$OnCompleteClickedCallback;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-direct {p0, p1}, Lcom/stepstone/stepper/StepperLayout$AbstractOnButtonClickedCallback;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout$OnCompleteClickedCallback;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {v0}, Lcom/stepstone/stepper/StepperLayout;->access$300(Lcom/stepstone/stepper/StepperLayout;)V

    .line 154
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout$OnCompleteClickedCallback;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {v0}, Lcom/stepstone/stepper/StepperLayout;->access$500(Lcom/stepstone/stepper/StepperLayout;)Lcom/stepstone/stepper/StepperLayout$StepperListener;

    move-result-object v0

    iget-object v1, p0, Lcom/stepstone/stepper/StepperLayout$OnCompleteClickedCallback;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {v1}, Lcom/stepstone/stepper/StepperLayout;->access$400(Lcom/stepstone/stepper/StepperLayout;)Lcom/stepstone/stepper/internal/widget/RightNavigationButton;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stepstone/stepper/StepperLayout$StepperListener;->onCompleted(Landroid/view/View;)V

    return-void
.end method
