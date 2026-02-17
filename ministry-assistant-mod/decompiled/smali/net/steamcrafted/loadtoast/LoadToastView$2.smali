.class Lnet/steamcrafted/loadtoast/LoadToastView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 218
    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView$2;->this$0:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView$2;->this$0:Lnet/steamcrafted/loadtoast/LoadToastView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float p1, p1, v1

    invoke-static {v0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->access$002(Lnet/steamcrafted/loadtoast/LoadToastView;F)F

    .line 223
    iget-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView$2;->this$0:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
