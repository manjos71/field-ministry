.class Lcom/fima/cardsui/objects/CardStack$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fima/cardsui/objects/CardStack;->getAnimationListener(Lcom/fima/cardsui/objects/CardStack;Landroid/widget/RelativeLayout;ILandroid/view/View;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fima/cardsui/objects/CardStack;

.field final synthetic val$cardStack:Lcom/fima/cardsui/objects/CardStack;

.field final synthetic val$clickedCard:Landroid/view/View;

.field final synthetic val$frameLayout:Landroid/widget/RelativeLayout;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/fima/cardsui/objects/CardStack;ILandroid/widget/RelativeLayout;Landroid/view/View;Lcom/fima/cardsui/objects/CardStack;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/fima/cardsui/objects/CardStack$3;->this$0:Lcom/fima/cardsui/objects/CardStack;

    iput p2, p0, Lcom/fima/cardsui/objects/CardStack$3;->val$index:I

    iput-object p3, p0, Lcom/fima/cardsui/objects/CardStack$3;->val$frameLayout:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/fima/cardsui/objects/CardStack$3;->val$clickedCard:Landroid/view/View;

    iput-object p5, p0, Lcom/fima/cardsui/objects/CardStack$3;->val$cardStack:Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleFirstCard(Landroid/view/View;)V
    .locals 5

    .line 388
    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack$3;->this$0:Lcom/fima/cardsui/objects/CardStack;

    .line 389
    invoke-static {v0}, Lcom/fima/cardsui/objects/CardStack;->access$400(Lcom/fima/cardsui/objects/CardStack;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 390
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 398
    iget-object v1, p0, Lcom/fima/cardsui/objects/CardStack$3;->this$0:Lcom/fima/cardsui/objects/CardStack;

    invoke-static {v1}, Lcom/fima/cardsui/objects/CardStack;->access$500(Lcom/fima/cardsui/objects/CardStack;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/fima/cardsui/Utils;->convertDpToPixelInt(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/fima/cardsui/objects/CardStack$3;->this$0:Lcom/fima/cardsui/objects/CardStack;

    .line 399
    invoke-static {v2}, Lcom/fima/cardsui/objects/CardStack;->access$500(Lcom/fima/cardsui/objects/CardStack;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/fima/cardsui/Utils;->convertDpToPixelInt(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    .line 400
    iget-object v2, p0, Lcom/fima/cardsui/objects/CardStack$3;->this$0:Lcom/fima/cardsui/objects/CardStack;

    invoke-static {v2}, Lcom/fima/cardsui/objects/CardStack;->access$500(Lcom/fima/cardsui/objects/CardStack;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/fima/cardsui/Utils;->convertDpToPixelInt(Landroid/content/Context;F)I

    move-result v2

    .line 401
    iget-object v3, p0, Lcom/fima/cardsui/objects/CardStack$3;->this$0:Lcom/fima/cardsui/objects/CardStack;

    invoke-static {v3}, Lcom/fima/cardsui/objects/CardStack;->access$500(Lcom/fima/cardsui/objects/CardStack;)Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v3, v4}, Lcom/fima/cardsui/Utils;->convertDpToPixelInt(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    .line 403
    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 404
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack$3;->this$0:Lcom/fima/cardsui/objects/CardStack;

    .line 406
    invoke-static {v0}, Lcom/fima/cardsui/objects/CardStack;->access$500(Lcom/fima/cardsui/objects/CardStack;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/fima/cardsui/Utils;->convertDpToPixelInt(Landroid/content/Context;F)I

    move-result v0

    .line 405
    invoke-virtual {p1, v3, v0, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2

    .line 419
    iget-object p1, p0, Lcom/fima/cardsui/objects/CardStack$3;->val$cardStack:Lcom/fima/cardsui/objects/CardStack;

    iget v0, p0, Lcom/fima/cardsui/objects/CardStack$3;->val$index:I

    invoke-virtual {p1, v0}, Lcom/fima/cardsui/objects/CardStack;->remove(I)Lcom/fima/cardsui/objects/Card;

    move-result-object p1

    .line 420
    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack$3;->val$cardStack:Lcom/fima/cardsui/objects/CardStack;

    invoke-virtual {v0, p1}, Lcom/fima/cardsui/objects/CardStack;->add(Lcom/fima/cardsui/objects/Card;)V

    .line 422
    iget-object p1, p0, Lcom/fima/cardsui/objects/CardStack$3;->this$0:Lcom/fima/cardsui/objects/CardStack;

    invoke-static {p1}, Lcom/fima/cardsui/objects/CardStack;->access$200(Lcom/fima/cardsui/objects/CardStack;)Lcom/fima/cardsui/StackAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack$3;->val$cardStack:Lcom/fima/cardsui/objects/CardStack;

    invoke-virtual {v0}, Lcom/fima/cardsui/objects/CardStack;->getPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fima/cardsui/StackAdapter;->setItems(Lcom/fima/cardsui/objects/CardStack;I)V

    .line 425
    iget-object p1, p0, Lcom/fima/cardsui/objects/CardStack$3;->this$0:Lcom/fima/cardsui/objects/CardStack;

    invoke-static {p1}, Lcom/fima/cardsui/objects/CardStack;->access$200(Lcom/fima/cardsui/objects/CardStack;)Lcom/fima/cardsui/StackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 426
    const-string p1, "CardsUI"

    const-string v0, "Notify Adapter"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1

    .line 348
    iget p1, p0, Lcom/fima/cardsui/objects/CardStack$3;->val$index:I

    if-nez p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/fima/cardsui/objects/CardStack$3;->val$frameLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 351
    invoke-direct {p0, p1}, Lcom/fima/cardsui/objects/CardStack$3;->handleFirstCard(Landroid/view/View;)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object p1, p0, Lcom/fima/cardsui/objects/CardStack$3;->val$clickedCard:Landroid/view/View;

    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack$3;->this$0:Lcom/fima/cardsui/objects/CardStack;

    .line 380
    invoke-static {v0}, Lcom/fima/cardsui/objects/CardStack;->access$400(Lcom/fima/cardsui/objects/CardStack;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 382
    :goto_0
    iget-object p1, p0, Lcom/fima/cardsui/objects/CardStack$3;->val$frameLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack$3;->val$clickedCard:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 383
    iget-object p1, p0, Lcom/fima/cardsui/objects/CardStack$3;->val$frameLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack$3;->val$clickedCard:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
