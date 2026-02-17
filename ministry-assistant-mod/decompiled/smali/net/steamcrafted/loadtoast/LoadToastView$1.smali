.class Lnet/steamcrafted/loadtoast/LoadToastView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/steamcrafted/loadtoast/LoadToastView;-><init>(Landroid/content/Context;)V
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

    .line 117
    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView$1;->this$0:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView$1;->this$0:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
