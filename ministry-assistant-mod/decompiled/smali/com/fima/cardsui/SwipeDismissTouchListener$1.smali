.class Lcom/fima/cardsui/SwipeDismissTouchListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fima/cardsui/SwipeDismissTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fima/cardsui/SwipeDismissTouchListener;


# direct methods
.method constructor <init>(Lcom/fima/cardsui/SwipeDismissTouchListener;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener$1;->this$0:Lcom/fima/cardsui/SwipeDismissTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/fima/cardsui/SwipeDismissTouchListener$1;->this$0:Lcom/fima/cardsui/SwipeDismissTouchListener;

    invoke-static {p1}, Lcom/fima/cardsui/SwipeDismissTouchListener;->access$000(Lcom/fima/cardsui/SwipeDismissTouchListener;)V

    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    return-void
.end method
