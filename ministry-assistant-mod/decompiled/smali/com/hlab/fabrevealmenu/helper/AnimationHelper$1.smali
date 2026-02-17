.class Lcom/hlab/fabrevealmenu/helper/AnimationHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->startCircularRevealAnim(Landroid/view/View;IIFFJLandroid/view/animation/Interpolator;Lcom/hlab/fabrevealmenu/listeners/AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

.field final synthetic val$listener:Lcom/hlab/fabrevealmenu/listeners/AnimationListener;


# direct methods
.method constructor <init>(Lcom/hlab/fabrevealmenu/helper/AnimationHelper;Lcom/hlab/fabrevealmenu/listeners/AnimationListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper$1;->this$0:Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

    iput-object p2, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper$1;->val$listener:Lcom/hlab/fabrevealmenu/listeners/AnimationListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper$1;->val$listener:Lcom/hlab/fabrevealmenu/listeners/AnimationListener;

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/hlab/fabrevealmenu/listeners/AnimationListener;->onEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper$1;->val$listener:Lcom/hlab/fabrevealmenu/listeners/AnimationListener;

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/hlab/fabrevealmenu/listeners/AnimationListener;->onStart()V

    :cond_0
    return-void
.end method
