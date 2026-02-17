.class Lcom/hlab/fabrevealmenu/helper/AnimationHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->showOverlay(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

.field final synthetic val$mOverlayLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/hlab/fabrevealmenu/helper/AnimationHelper;Landroid/view/View;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper$4;->this$0:Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

    iput-object p2, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper$4;->val$mOverlayLayout:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 174
    iget-object p1, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper$4;->val$mOverlayLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
