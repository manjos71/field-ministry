.class Lcom/stepstone/stepper/internal/widget/StepTab$InactiveNumberState;
.super Lcom/stepstone/stepper/internal/widget/StepTab$AbstractNumberState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stepstone/stepper/internal/widget/StepTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveNumberState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stepstone/stepper/internal/widget/StepTab;


# direct methods
.method constructor <init>(Lcom/stepstone/stepper/internal/widget/StepTab;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/stepstone/stepper/internal/widget/StepTab$InactiveNumberState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    invoke-direct {p0, p1}, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractNumberState;-><init>(Lcom/stepstone/stepper/internal/widget/StepTab;)V

    return-void
.end method


# virtual methods
.method protected changeToActiveNumber()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$InactiveNumberState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    iget-object v1, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepIconBackground:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/stepstone/stepper/internal/widget/StepTab;->access$600(Lcom/stepstone/stepper/internal/widget/StepTab;)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 344
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$InactiveNumberState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    iget-object v0, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepTitleTextView:Landroid/widget/TextView;

    const v1, 0x3f5eb852    # 0.87f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 345
    invoke-super {p0}, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;->changeToActiveNumber()V

    return-void
.end method

.method protected changeToDone()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$InactiveNumberState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    iget-object v1, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepIconBackground:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/stepstone/stepper/internal/widget/StepTab;->access$600(Lcom/stepstone/stepper/internal/widget/StepTab;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 351
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$InactiveNumberState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    iget-object v0, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepTitleTextView:Landroid/widget/TextView;

    const v1, 0x3f5eb852    # 0.87f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 352
    invoke-super {p0}, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractNumberState;->changeToDone()V

    return-void
.end method

.method protected changeToInactiveNumber()V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$InactiveNumberState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    iget-object v1, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepIconBackground:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/stepstone/stepper/internal/widget/StepTab;->access$300(Lcom/stepstone/stepper/internal/widget/StepTab;)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 335
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$InactiveNumberState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    iget-object v1, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepTitleTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/stepstone/stepper/internal/widget/StepTab;->access$400(Lcom/stepstone/stepper/internal/widget/StepTab;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$InactiveNumberState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    iget-object v0, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepTitleTextView:Landroid/widget/TextView;

    const v1, 0x3f0a3d71    # 0.54f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 337
    iget-object v0, p0, Lcom/stepstone/stepper/internal/widget/StepTab$InactiveNumberState;->this$0:Lcom/stepstone/stepper/internal/widget/StepTab;

    iget-object v1, v0, Lcom/stepstone/stepper/internal/widget/StepTab;->mStepSubtitleTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/stepstone/stepper/internal/widget/StepTab;->access$500(Lcom/stepstone/stepper/internal/widget/StepTab;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    invoke-super {p0}, Lcom/stepstone/stepper/internal/widget/StepTab$AbstractState;->changeToInactiveNumber()V

    return-void
.end method
