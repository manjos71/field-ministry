.class Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->showMenu()V
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

    .line 370
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 373
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$000(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$000(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$200(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$000(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroidx/cardview/widget/CardView;

    move-result-object v3

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$300(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    int-to-float v5, v0

    new-instance v7, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5$1;

    invoke-direct {v7, p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5$1;-><init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;)V

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->revealMenu(Landroid/view/View;FFZLcom/hlab/fabrevealmenu/listeners/AnimationListener;)V

    return-void
.end method
