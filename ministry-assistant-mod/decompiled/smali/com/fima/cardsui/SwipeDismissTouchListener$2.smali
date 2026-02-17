.class Lcom/fima/cardsui/SwipeDismissTouchListener$2;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fima/cardsui/SwipeDismissTouchListener;->performDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fima/cardsui/SwipeDismissTouchListener;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lcom/fima/cardsui/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener$2;->this$0:Lcom/fima/cardsui/SwipeDismissTouchListener;

    iput-object p2, p0, Lcom/fima/cardsui/SwipeDismissTouchListener$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/fima/cardsui/SwipeDismissTouchListener$2;->val$originalHeight:I

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2

    .line 270
    iget-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener$2;->this$0:Lcom/fima/cardsui/SwipeDismissTouchListener;

    invoke-static {p1}, Lcom/fima/cardsui/SwipeDismissTouchListener;->access$300(Lcom/fima/cardsui/SwipeDismissTouchListener;)Lcom/fima/cardsui/SwipeDismissTouchListener$OnDismissCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/fima/cardsui/SwipeDismissTouchListener$2;->this$0:Lcom/fima/cardsui/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/fima/cardsui/SwipeDismissTouchListener;->access$100(Lcom/fima/cardsui/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener$2;->this$0:Lcom/fima/cardsui/SwipeDismissTouchListener;

    invoke-static {v1}, Lcom/fima/cardsui/SwipeDismissTouchListener;->access$200(Lcom/fima/cardsui/SwipeDismissTouchListener;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/fima/cardsui/SwipeDismissTouchListener$OnDismissCallback;->onDismiss(Landroid/view/View;Ljava/lang/Object;)V

    .line 272
    iget-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener$2;->this$0:Lcom/fima/cardsui/SwipeDismissTouchListener;

    invoke-static {p1}, Lcom/fima/cardsui/SwipeDismissTouchListener;->access$100(Lcom/fima/cardsui/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 273
    iget-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener$2;->this$0:Lcom/fima/cardsui/SwipeDismissTouchListener;

    invoke-static {p1}, Lcom/fima/cardsui/SwipeDismissTouchListener;->access$100(Lcom/fima/cardsui/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 276
    iget-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lcom/fima/cardsui/SwipeDismissTouchListener$2;->val$originalHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 277
    iget-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener$2;->this$0:Lcom/fima/cardsui/SwipeDismissTouchListener;

    invoke-static {p1}, Lcom/fima/cardsui/SwipeDismissTouchListener;->access$100(Lcom/fima/cardsui/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/fima/cardsui/SwipeDismissTouchListener$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
