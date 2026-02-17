.class Lcom/hlab/fabrevealmenu/view/FABRevealMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->setUpView(Landroid/view/View;Z)V
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

    .line 266
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$1;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$1;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$200(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$1;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$000(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroidx/cardview/widget/CardView;

    move-result-object v1

    iget-object v2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$1;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v2}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$100(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/enums/Direction;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->calculateCenterPoints(Landroid/view/View;Lcom/hlab/fabrevealmenu/enums/Direction;)V

    return-void
.end method
