.class Lcom/fima/cardsui/objects/CardStack$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fima/cardsui/SwipeDismissTouchListener$OnDismissCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fima/cardsui/objects/CardStack;->getView(Landroid/content/Context;Landroid/view/View;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fima/cardsui/objects/CardStack;


# direct methods
.method constructor <init>(Lcom/fima/cardsui/objects/CardStack;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/fima/cardsui/objects/CardStack$1;->this$0:Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    .line 154
    check-cast p2, Lcom/fima/cardsui/objects/Card;

    .line 156
    invoke-virtual {p2}, Lcom/fima/cardsui/objects/Card;->OnSwipeCard()V

    .line 157
    iget-object p1, p0, Lcom/fima/cardsui/objects/CardStack$1;->this$0:Lcom/fima/cardsui/objects/CardStack;

    invoke-static {p1}, Lcom/fima/cardsui/objects/CardStack;->access$000(Lcom/fima/cardsui/objects/CardStack;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    iget-object p1, p0, Lcom/fima/cardsui/objects/CardStack$1;->this$0:Lcom/fima/cardsui/objects/CardStack;

    invoke-static {p1}, Lcom/fima/cardsui/objects/CardStack;->access$200(Lcom/fima/cardsui/objects/CardStack;)Lcom/fima/cardsui/StackAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/fima/cardsui/objects/CardStack$1;->this$0:Lcom/fima/cardsui/objects/CardStack;

    invoke-static {p2}, Lcom/fima/cardsui/objects/CardStack;->access$100(Lcom/fima/cardsui/objects/CardStack;)Lcom/fima/cardsui/objects/CardStack;

    move-result-object p2

    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack$1;->this$0:Lcom/fima/cardsui/objects/CardStack;

    invoke-virtual {v0}, Lcom/fima/cardsui/objects/CardStack;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/fima/cardsui/StackAdapter;->setItems(Lcom/fima/cardsui/objects/CardStack;I)V

    .line 162
    iget-object p1, p0, Lcom/fima/cardsui/objects/CardStack$1;->this$0:Lcom/fima/cardsui/objects/CardStack;

    invoke-static {p1}, Lcom/fima/cardsui/objects/CardStack;->access$200(Lcom/fima/cardsui/objects/CardStack;)Lcom/fima/cardsui/StackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
