.class public Lcom/hlab/fabrevealmenu/helper/AnimationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final FAB_ARC_DEGREES:I

.field private final FAB_SCALE_FACTOR:F

.field private final OVERLAY_ANIM_DURATION:I

.field private anchorX:I

.field private anchorY:I

.field private centerX:I

.field private centerY:I

.field private fabAnimInterpolator:Landroid/view/animation/Interpolator;

.field private revealAnimInterpolator:Landroid/view/animation/Interpolator;

.field private viewHelper:Lcom/hlab/fabrevealmenu/helper/ViewHelper;


# direct methods
.method public constructor <init>(Lcom/hlab/fabrevealmenu/helper/ViewHelper;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x1e

    .line 22
    iput v0, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->FAB_ARC_DEGREES:I

    const v0, 0x3e4ccccd    # 0.2f

    .line 26
    iput v0, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->FAB_SCALE_FACTOR:F

    const/16 v0, 0x96

    .line 27
    iput v0, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->OVERLAY_ANIM_DURATION:I

    .line 40
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->viewHelper:Lcom/hlab/fabrevealmenu/helper/ViewHelper;

    .line 41
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->fabAnimInterpolator:Landroid/view/animation/Interpolator;

    .line 42
    new-instance p1, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    iput-object p1, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->revealAnimInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private getArcSide(Lcom/hlab/fabrevealmenu/enums/Direction;)Lio/codetail/animation/arcanimator/Side;
    .locals 1

    .line 195
    sget-object v0, Lcom/hlab/fabrevealmenu/enums/Direction;->LEFT:Lcom/hlab/fabrevealmenu/enums/Direction;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/hlab/fabrevealmenu/enums/Direction;->UP:Lcom/hlab/fabrevealmenu/enums/Direction;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    sget-object p1, Lio/codetail/animation/arcanimator/Side;->LEFT:Lio/codetail/animation/arcanimator/Side;

    return-object p1

    .line 196
    :cond_1
    :goto_0
    sget-object p1, Lio/codetail/animation/arcanimator/Side;->RIGHT:Lio/codetail/animation/arcanimator/Side;

    return-object p1
.end method

.method private startArcAnim(Landroid/view/View;FFFLio/codetail/animation/arcanimator/Side;JLandroid/view/animation/Interpolator;Lcom/hlab/fabrevealmenu/listeners/AnimationListener;)V
    .locals 0

    float-to-int p2, p2

    int-to-float p2, p2

    float-to-int p3, p3

    int-to-float p3, p3

    .line 145
    invoke-static {p1, p2, p3, p4, p5}, Lio/codetail/animation/arcanimator/ArcAnimator;->createArcAnimator(Landroid/view/View;FFFLio/codetail/animation/arcanimator/Side;)Lio/codetail/animation/arcanimator/ArcAnimator;

    move-result-object p1

    .line 147
    invoke-virtual {p1, p6, p7}, Lio/codetail/animation/arcanimator/ArcAnimator;->setDuration(J)Lio/codetail/animation/arcanimator/ArcAnimator;

    .line 148
    invoke-virtual {p1, p8}, Lio/codetail/animation/arcanimator/ArcAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 150
    new-instance p2, Lcom/hlab/fabrevealmenu/helper/AnimationHelper$3;

    invoke-direct {p2, p0, p9}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper$3;-><init>(Lcom/hlab/fabrevealmenu/helper/AnimationHelper;Lcom/hlab/fabrevealmenu/listeners/AnimationListener;)V

    invoke-virtual {p1, p2}, Lio/codetail/animation/arcanimator/ArcAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 166
    invoke-virtual {p1}, Lio/codetail/animation/arcanimator/ArcAnimator;->start()V

    return-void
.end method

.method private startCircularRevealAnim(Landroid/view/View;IIFFJLandroid/view/animation/Interpolator;Lcom/hlab/fabrevealmenu/listeners/AnimationListener;)V
    .locals 1

    int-to-float p2, p2

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p3, p3

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    sub-float/2addr p3, v0

    float-to-int p3, p3

    .line 80
    invoke-static {p1, p2, p3, p4, p5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    .line 82
    invoke-virtual {p1, p6, p7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 83
    invoke-virtual {p1, p8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    new-instance p2, Lcom/hlab/fabrevealmenu/helper/AnimationHelper$1;

    invoke-direct {p2, p0, p9}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper$1;-><init>(Lcom/hlab/fabrevealmenu/helper/AnimationHelper;Lcom/hlab/fabrevealmenu/listeners/AnimationListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 101
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public calculateCenterPoints(Landroid/view/View;Lcom/hlab/fabrevealmenu/enums/Direction;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->viewHelper:Lcom/hlab/fabrevealmenu/helper/ViewHelper;

    invoke-virtual {v0, p1, p2}, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->getSheetRevealCenterX(Landroid/view/View;Lcom/hlab/fabrevealmenu/enums/Direction;)I

    move-result v0

    iput v0, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->centerX:I

    .line 191
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->viewHelper:Lcom/hlab/fabrevealmenu/helper/ViewHelper;

    invoke-virtual {v0, p1, p2}, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->getSheetRevealCenterY(Landroid/view/View;Lcom/hlab/fabrevealmenu/enums/Direction;)I

    move-result p1

    iput p1, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->centerY:I

    return-void
.end method

.method public hideOverlay(Landroid/view/View;)V
    .locals 3

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/hlab/fabrevealmenu/helper/AnimationHelper$5;

    invoke-direct {v1, p0, p1}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper$5;-><init>(Lcom/hlab/fabrevealmenu/helper/AnimationHelper;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public moveFab(Landroid/view/View;Landroid/view/View;Lcom/hlab/fabrevealmenu/enums/Direction;ZLcom/hlab/fabrevealmenu/listeners/AnimationListener;)V
    .locals 11

    if-eqz p4, :cond_0

    const v0, -0x41b33333    # -0.2f

    goto :goto_0

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    :goto_0
    if-nez p4, :cond_1

    .line 52
    iget-object p4, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->viewHelper:Lcom/hlab/fabrevealmenu/helper/ViewHelper;

    invoke-virtual {p4, p1}, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->updateFabAnchor(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p4

    .line 53
    iget v1, p4, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->anchorX:I

    .line 54
    iget p4, p4, Landroid/graphics/Point;->y:I

    iput p4, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->anchorY:I

    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p4

    iget v1, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->centerX:I

    int-to-float v1, v1

    add-float/2addr p4, v1

    .line 56
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    iget v1, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->centerY:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    :goto_1
    move v4, p2

    move v3, p4

    goto :goto_2

    .line 58
    :cond_1
    iget p2, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->anchorX:I

    int-to-float p4, p2

    .line 59
    iget p2, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->anchorY:I

    int-to-float p2, p2

    goto :goto_1

    .line 62
    :goto_2
    invoke-direct {p0, p3}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->getArcSide(Lcom/hlab/fabrevealmenu/enums/Direction;)Lio/codetail/animation/arcanimator/Side;

    move-result-object v6

    const-wide/16 v7, 0x7d

    iget-object v9, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->fabAnimInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v5, -0x3e100000    # -30.0f

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->startArcAnim(Landroid/view/View;FFFLio/codetail/animation/arcanimator/Side;JLandroid/view/animation/Interpolator;Lcom/hlab/fabrevealmenu/listeners/AnimationListener;)V

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x7d

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public revealMenu(Landroid/view/View;FFZLcom/hlab/fabrevealmenu/listeners/AnimationListener;)V
    .locals 10

    .line 69
    iget v2, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->centerX:I

    iget v3, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->centerY:I

    const-wide/16 v6, 0x12c

    iget-object v8, p0, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->revealAnimInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->startCircularRevealAnim(Landroid/view/View;IIFFJLandroid/view/animation/Interpolator;Lcom/hlab/fabrevealmenu/listeners/AnimationListener;)V

    return-void
.end method

.method public showOverlay(Landroid/view/View;)V
    .locals 3

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/hlab/fabrevealmenu/helper/AnimationHelper$4;

    invoke-direct {v1, p0, p1}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper$4;-><init>(Lcom/hlab/fabrevealmenu/helper/AnimationHelper;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
