.class Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;


# direct methods
.method constructor <init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3$1;->this$1:Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 292
    iget-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3$1;->this$1:Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;

    iget-object p1, p1, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-virtual {p1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->showMenu()V

    return-void
.end method
