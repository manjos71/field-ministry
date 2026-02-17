.class Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->bindAncherView(Landroid/view/View;)V
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

    .line 286
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$300(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3$1;

    invoke-direct {v1, p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3$1;-><init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$200(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$000(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroidx/cardview/widget/CardView;

    move-result-object v1

    iget-object v2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v2}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$100(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/enums/Direction;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->calculateCenterPoints(Landroid/view/View;Lcom/hlab/fabrevealmenu/enums/Direction;)V

    .line 296
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$500(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/helper/ViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$300(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v2}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$400(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lio/codetail/widget/RevealLinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v3}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$100(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/enums/Direction;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->alignMenuWithFab(Landroid/view/View;Landroid/view/View;Lcom/hlab/fabrevealmenu/enums/Direction;)V

    return-void
.end method
