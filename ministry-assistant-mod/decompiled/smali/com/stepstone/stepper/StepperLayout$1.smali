.class Lcom/stepstone/stepper/StepperLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stepstone/stepper/StepperLayout;->setAdapter(Lcom/stepstone/stepper/adapter/StepAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stepstone/stepper/StepperLayout;


# direct methods
.method constructor <init>(Lcom/stepstone/stepper/StepperLayout;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/stepstone/stepper/StepperLayout$1;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout$1;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {v0}, Lcom/stepstone/stepper/StepperLayout;->access$900(Lcom/stepstone/stepper/StepperLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 337
    iget-object v0, p0, Lcom/stepstone/stepper/StepperLayout$1;->this$0:Lcom/stepstone/stepper/StepperLayout;

    invoke-static {v0}, Lcom/stepstone/stepper/StepperLayout;->access$100(Lcom/stepstone/stepper/StepperLayout;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/stepstone/stepper/StepperLayout;->access$200(Lcom/stepstone/stepper/StepperLayout;IZ)V

    return-void
.end method
