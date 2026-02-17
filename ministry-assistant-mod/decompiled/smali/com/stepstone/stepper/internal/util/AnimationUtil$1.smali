.class final Lcom/stepstone/stepper/internal/util/AnimationUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stepstone/stepper/internal/util/AnimationUtil;->fadeViewVisibility(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(ILandroid/view/View;)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/stepstone/stepper/internal/util/AnimationUtil$1;->val$visibility:I

    iput-object p2, p0, Lcom/stepstone/stepper/internal/util/AnimationUtil$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 64
    iget p1, p0, Lcom/stepstone/stepper/internal/util/AnimationUtil$1;->val$visibility:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 65
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/stepstone/stepper/internal/util/AnimationUtil$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 57
    iget p1, p0, Lcom/stepstone/stepper/internal/util/AnimationUtil$1;->val$visibility:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 58
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/stepstone/stepper/internal/util/AnimationUtil$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 50
    iget p1, p0, Lcom/stepstone/stepper/internal/util/AnimationUtil$1;->val$visibility:I

    if-nez p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/stepstone/stepper/internal/util/AnimationUtil$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
