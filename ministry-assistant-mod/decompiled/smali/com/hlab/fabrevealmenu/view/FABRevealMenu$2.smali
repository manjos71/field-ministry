.class Lcom/hlab/fabrevealmenu/view/FABRevealMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 274
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$2;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 277
    iget-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$2;->this$0:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-virtual {p1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->closeMenu()V

    return-void
.end method
