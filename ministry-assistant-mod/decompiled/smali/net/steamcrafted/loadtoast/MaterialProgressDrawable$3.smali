.class Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

.field final synthetic val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->this$0:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    iput-object p2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4

    .line 372
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 373
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 374
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 375
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->this$0:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    iget-boolean v1, v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 378
    iput-boolean v1, v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mFinishing:Z

    const-wide/16 v2, 0x535

    .line 379
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 380
    iget-object p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {p1, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    return-void

    .line 382
    :cond_0
    invoke-static {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->access$500(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float/2addr p1, v1

    invoke-static {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->access$502(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;F)F

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 362
    iget-object p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->this$0:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->access$502(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;F)F

    return-void
.end method
