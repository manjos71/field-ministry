.class Lcom/stepstone/stepper/StepperLayout$OnCompleteClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stepstone/stepper/StepperLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCompleteClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stepstone/stepper/StepperLayout;


# direct methods
.method private constructor <init>(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/stepstone/stepper/StepperLayout$OnCompleteClickListener;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stepstone/stepper/StepperLayout;Lcom/stepstone/stepper/StepperLayout$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/stepstone/stepper/StepperLayout$OnCompleteClickListener;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 192
    iget-object p1, p0, Lcom/stepstone/stepper/StepperLayout$OnCompleteClickListener;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {p1}, Lcom/stepstone/stepper/StepperLayout;->access$800(Lcom/stepstone/stepper/StepperLayout;)V

    return-void
.end method
