.class Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;
.super Landroid/view/animation/Animation;
.source "SourceFile"


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

    .line 313
    iput-object p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;->this$0:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    iput-object p2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    .line 316
    iget-object p2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;->this$0:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    iget-boolean v0, p2, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-static {p2, p1, v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->access$200(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;FLnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;)V

    return-void

    .line 322
    :cond_0
    iget-object p2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    .line 323
    invoke-virtual {p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result p2

    float-to-double v0, p2

    iget-object p2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    .line 322
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p2, v0

    .line 324
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v0

    .line 325
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    .line 326
    iget-object v2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v2

    const v3, 0x3f4ccccd    # 0.8f

    sub-float p2, v3, p2

    .line 332
    invoke-static {}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float p2, p2, v4

    add-float/2addr v0, p2

    .line 334
    invoke-static {}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->access$400()Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    mul-float p2, p2, v3

    add-float/2addr v1, p2

    sub-float p2, v0, v1

    .line 338
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v3

    if-ltz p2, :cond_1

    const/high16 p2, 0x3f000000    # 0.5f

    add-float v0, v1, p2

    .line 342
    :cond_1
    iget-object p2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {p2, v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 344
    iget-object p2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {p2, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float p2, p2, p1

    add-float/2addr v2, p2

    .line 347
    iget-object p2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {p2, v2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setRotation(F)V

    const/high16 p2, 0x43100000    # 144.0f

    mul-float p1, p1, p2

    .line 349
    iget-object p2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;->this$0:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    .line 350
    invoke-static {p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->access$500(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;)F

    move-result p2

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x44340000    # 720.0f

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    .line 351
    iget-object p2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;->this$0:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    invoke-virtual {p2, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setRotation(F)V

    return-void
.end method
