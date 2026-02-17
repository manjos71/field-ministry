.class Lcom/stepstone/stepper/internal/widget/StepTab$ActiveNumberState;
.super Lcom/stepstone/stepper/internal/widget/StepTab$AbstractNumberState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stepstone/stepper/internal/widget/StepTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveNumberState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stepstone/stepper/internal/widget/StepTab;


# direct methods
.method constructor <init>(Lcom/stepstone/stepper/internal/widget/StepTab;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab$ActiveNumberState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    invoke-direct {p0, p1}, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractNumberState;-><init>(Lcom/stepstone/stepper/internal/widget/StepTab;)V

    return-void
.end method


# virtual methods
.method protected changeToInactiveNumber()V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$ActiveNumberState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    iget-object v1, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepIconBackground:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/stepstone/stepper/internal/widget/StepTab;->access$300(Lcom/stepstone/stepper/internal/widget/StepTab;)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 362
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$ActiveNumberState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    iget-object v0, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepTitleTextView:Landroid/widget/TextView;

    const v1, 0x3f0a3d71    # 0.54f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 363
    invoke-super {p0}, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;->changeToInactiveNumber()V

    return-void
.end method
