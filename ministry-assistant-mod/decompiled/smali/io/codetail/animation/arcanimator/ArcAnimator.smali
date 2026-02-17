.class public Lio/codetail/animation/arcanimator/ArcAnimator;
.super Landroid/animation/Animator;
.source "SourceFile"


# instance fields
.field mAnimator:Ljava/lang/ref/WeakReference;

.field mArcMetric:Lio/codetail/animation/arcanimator/ArcMetric;

.field mTarget:Ljava/lang/ref/WeakReference;

.field mValue:F


# direct methods
.method private constructor <init>(Lio/codetail/animation/arcanimator/ArcMetric;Landroid/view/View;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 35
    iput-object p1, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mArcMetric:Lio/codetail/animation/arcanimator/ArcMetric;

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    .line 38
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 39
    invoke-virtual {p1}, Lio/codetail/animation/arcanimator/ArcMetric;->getStartDegree()F

    move-result v0

    invoke-virtual {p1}, Lio/codetail/animation/arcanimator/ArcMetric;->getEndDegree()F

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mAnimator:Ljava/lang/ref/WeakReference;

    .line 41
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/ValueAnimator;

    new-instance p2, Lio/codetail/animation/arcanimator/ArcAnimator$1;

    invoke-direct {p2, p0}, Lio/codetail/animation/arcanimator/ArcAnimator$1;-><init>(Lio/codetail/animation/arcanimator/ArcAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static createArcAnimator(Landroid/view/View;FFFLio/codetail/animation/arcanimator/Side;)Lio/codetail/animation/arcanimator/ArcAnimator;
    .locals 6

    .line 23
    invoke-static {p0}, Lio/codetail/animation/arcanimator/Utils;->centerX(Landroid/view/View;)F

    move-result v0

    invoke-static {p0}, Lio/codetail/animation/arcanimator/Utils;->centerY(Landroid/view/View;)F

    move-result v1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lio/codetail/animation/arcanimator/ArcMetric;->evaluate(FFFFFLio/codetail/animation/arcanimator/Side;)Lio/codetail/animation/arcanimator/ArcMetric;

    move-result-object p1

    .line 25
    new-instance p2, Lio/codetail/animation/arcanimator/ArcAnimator;

    invoke-direct {p2, p1, p0}, Lio/codetail/animation/arcanimator/ArcAnimator;-><init>(Lio/codetail/animation/arcanimator/ArcMetric;Landroid/view/View;)V

    return-object p2
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 116
    invoke-super {p0}, Landroid/animation/Animator;->cancel()V

    .line 117
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public end()V
    .locals 1

    .line 109
    invoke-super {p0}, Landroid/animation/Animator;->end()V

    .line 110
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 85
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 86
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 66
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 67
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setDegree(F)V
    .locals 5

    .line 50
    iput p1, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mValue:F

    .line 51
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 52
    iget-object v1, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mArcMetric:Lio/codetail/animation/arcanimator/ArcMetric;

    invoke-virtual {v1}, Lio/codetail/animation/arcanimator/ArcMetric;->getAxisPoint()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mArcMetric:Lio/codetail/animation/arcanimator/ArcMetric;

    iget v2, v2, Lio/codetail/animation/arcanimator/ArcMetric;->mRadius:F

    float-to-double v3, p1

    .line 53
    invoke-static {v3, v4}, Lio/codetail/animation/arcanimator/Utils;->cos(D)F

    move-result p1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 54
    iget-object p1, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mArcMetric:Lio/codetail/animation/arcanimator/ArcMetric;

    invoke-virtual {p1}, Lio/codetail/animation/arcanimator/ArcMetric;->getAxisPoint()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mArcMetric:Lio/codetail/animation/arcanimator/ArcMetric;

    iget v2, v2, Lio/codetail/animation/arcanimator/ArcMetric;->mRadius:F

    .line 55
    invoke-static {v3, v4}, Lio/codetail/animation/arcanimator/Utils;->sin(D)F

    move-result v3

    mul-float v2, v2, v3

    sub-float/2addr p1, v2

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lio/codetail/animation/arcanimator/ArcAnimator;->setDuration(J)Lio/codetail/animation/arcanimator/ArcAnimator;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lio/codetail/animation/arcanimator/ArcAnimator;
    .locals 1

    .line 78
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_0
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    return-void
.end method

.method public setStartDelay(J)V
    .locals 1

    .line 72
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_0
    return-void
.end method

.method public setupEndValues()V
    .locals 1

    .line 129
    invoke-super {p0}, Landroid/animation/Animator;->setupEndValues()V

    .line 130
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/animation/Animator;->setupEndValues()V

    :cond_0
    return-void
.end method

.method public setupStartValues()V
    .locals 1

    .line 136
    invoke-super {p0}, Landroid/animation/Animator;->setupStartValues()V

    .line 137
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/animation/Animator;->setupStartValues()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 102
    invoke-super {p0}, Landroid/animation/Animator;->start()V

    .line 103
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lio/codetail/animation/arcanimator/ArcAnimator;->mArcMetric:Lio/codetail/animation/arcanimator/ArcMetric;

    invoke-virtual {v0}, Lio/codetail/animation/arcanimator/ArcMetric;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
