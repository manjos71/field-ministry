.class public abstract Lcom/stepstone/stepper/internal/util/AnimationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static fadeViewVisibility(Landroid/view/View;IZ)V
    .locals 3

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p2, :cond_1

    const-wide/16 v1, 0x12c

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    .line 46
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/stepstone/stepper/internal/util/AnimationUtil$1;

    invoke-direct {v0, p1, p0}, Lcom/stepstone/stepper/internal/util/AnimationUtil$1;-><init>(ILandroid/view/View;)V

    .line 47
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
