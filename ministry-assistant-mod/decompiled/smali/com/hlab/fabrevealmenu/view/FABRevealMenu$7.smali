.class Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 422
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 425
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$200(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$300(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$400(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lio/codetail/widget/RevealLinearLayout;

    move-result-object v3

    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$100(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/enums/Direction;

    move-result-object v4

    new-instance v6, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7$1;

    invoke-direct {v6, p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7$1;-><init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7;)V

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->moveFab(Landroid/view/View;Landroid/view/View;Lcom/hlab/fabrevealmenu/enums/Direction;ZLcom/hlab/fabrevealmenu/listeners/AnimationListener;)V

    return-void
.end method
