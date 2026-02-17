.class Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7$1;
.super Lcom/hlab/fabrevealmenu/listeners/AnimationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7;


# direct methods
.method constructor <init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7$1;->this$1:Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7;

    invoke-direct {p0}, Lcom/hlab/fabrevealmenu/listeners/AnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7$1;->this$1:Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7;

    iget-object v0, v0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->access$300(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
