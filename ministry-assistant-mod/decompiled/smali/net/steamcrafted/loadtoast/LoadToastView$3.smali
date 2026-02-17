.class Lnet/steamcrafted/loadtoast/LoadToastView$3;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/steamcrafted/loadtoast/LoadToastView;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/steamcrafted/loadtoast/LoadToastView;


# direct methods
.method constructor <init>(Lnet/steamcrafted/loadtoast/LoadToastView;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView$3;->this$0:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    .line 229
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;->onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V

    .line 230
    iget-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView$3;->this$0:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->cleanup()V

    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    .line 235
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V

    .line 236
    iget-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView$3;->this$0:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->cleanup()V

    return-void
.end method
