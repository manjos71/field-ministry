.class Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5$1;
.super Lcom/hlab/fabrevealmenu/listeners/AnimationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;


# direct methods
.method constructor <init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5$1;->this$1:Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;

    invoke-direct {p0}, Lcom/hlab/fabrevealmenu/listeners/AnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5$1;->this$1:Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;

    iget-object v0, v0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$400(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lio/codetail/widget/RevealLinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5$1;->this$1:Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;

    iget-object v0, v0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$600(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5$1;->this$1:Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;

    iget-object v0, v0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$600(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->resetAdapter(Z)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5$1;->this$1:Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;

    iget-object v0, v0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$700(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5$1;->this$1:Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;

    iget-object v0, v0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$200(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5$1;->this$1:Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;

    iget-object v1, v1, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$700(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->showOverlay(Landroid/view/View;)V

    :cond_1
    return-void
.end method
