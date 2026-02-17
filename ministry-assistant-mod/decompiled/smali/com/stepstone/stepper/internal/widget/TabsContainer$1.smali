.class Lcom/stepstone/stepper/internal/widget/TabsContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stepstone/stepper/internal/widget/TabsContainer;->createStepTab(ILcom/stepstone/stepper/viewmodel/StepViewModel;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stepstone/stepper/internal/widget/TabsContainer;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/stepstone/stepper/internal/widget/TabsContainer;I)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer$1;->this$0:Lcom/stepstone/stepper/internal/widget/TabsContainer;

    iput p2, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 182
    iget-object p1, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer$1;->this$0:Lcom/stepstone/stepper/internal/widget/TabsContainer;

    invoke-static {p1}, Lcom/stepstone/stepper/internal/widget/TabsContainer;->access$000(Lcom/stepstone/stepper/internal/widget/TabsContainer;)Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;

    move-result-object p1

    iget v0, p0, Lcom/stepstone/stepper/internal/widget/TabsContainer$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;->onTabClicked(I)V

    return-void
.end method
