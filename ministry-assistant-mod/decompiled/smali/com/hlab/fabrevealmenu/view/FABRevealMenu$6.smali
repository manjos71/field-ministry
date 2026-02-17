.class Lcom/hlab/fabrevealmenu/view/FABRevealMenu$6;
.super Lcom/hlab/fabrevealmenu/listeners/AnimationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->closeMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;


# direct methods
.method constructor <init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$6;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-direct {p0}, Lcom/hlab/fabrevealmenu/listeners/AnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$6;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$400(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lio/codetail/widget/RevealLinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$6;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$600(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$6;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$600(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->resetAdapter(Z)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$6;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$700(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$6;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$200(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$6;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$700(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->hideOverlay(Landroid/view/View;)V

    :cond_1
    return-void
.end method
