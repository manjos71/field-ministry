.class Lcom/stepstone/stepper/StepperLayout$OnNextClickListener;
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
    name = "OnNextClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stepstone/stepper/StepperLayout;


# direct methods
.method private constructor <init>(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/stepstone/stepper/StepperLayout$OnNextClickListener;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stepstone/stepper/StepperLayout;Lcom/stepstone/stepper/StepperLayout$1;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lcom/stepstone/stepper/StepperLayout$OnNextClickListener;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 185
    iget-object p1, p0, Lcom/stepstone/stepper/StepperLayout$OnNextClickListener;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {p1}, Lcom/stepstone/stepper/StepperLayout;->access$700(Lcom/stepstone/stepper/StepperLayout;)V

    return-void
.end method
