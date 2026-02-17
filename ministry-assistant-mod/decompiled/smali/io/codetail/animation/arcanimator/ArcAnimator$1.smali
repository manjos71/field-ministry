.class Lio/codetail/animation/arcanimator/ArcAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/codetail/animation/arcanimator/ArcAnimator;-><init>(Lio/codetail/animation/arcanimator/ArcMetric;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/codetail/animation/arcanimator/ArcAnimator;


# direct methods
.method constructor <init>(Lio/codetail/animation/arcanimator/ArcAnimator;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lio/codetail/animation/arcanimator/ArcAnimator$1;->this$0:Lio/codetail/animation/arcanimator/ArcAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator$1;->this$0:Lio/codetail/animation/arcanimator/ArcAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lio/codetail/animation/arcanimator/ArcAnimator;->setDegree(F)V

    return-void
.end method
