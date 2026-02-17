.class public Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# static fields
.field private static final PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final PROGRESS_PROPERTY:Landroid/util/Property;


# instance fields
.field private mProgressBackgroundColor:I

.field private mProgressColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 126
    new-instance v0, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "progress"

    invoke-direct {v0, v1, v2}, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->PROGRESS_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    sget p2, Lcom/stepstone/stepper/R$color;->ms_selectedColor:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->mProgressColor:I

    .line 76
    sget p2, Lcom/stepstone/stepper/R$color;->ms_unselectedColor:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->mProgressBackgroundColor:I

    .line 77
    sget p2, Lcom/stepstone/stepper/R$drawable;->ms_colorable_progress_bar:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-direct {p0}, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->updateProgressDrawable()V

    return-void
.end method

.method private updateProgressDrawable()V
    .locals 3

    .line 119
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v1, 0x1020000

    .line 120
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x102000d

    .line 121
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    iget v2, p0, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->mProgressBackgroundColor:I

    invoke-static {v1, v2}, Lcom/stepstone/stepper/internal/util/TintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 123
    iget v1, p0, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->mProgressColor:I

    invoke-static {v0, v1}, Lcom/stepstone/stepper/internal/util/TintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public declared-synchronized setMax(I)V
    .locals 0

    monitor-enter p0

    mul-int/lit8 p1, p1, 0x64

    .line 93
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->mProgressBackgroundColor:I

    .line 103
    invoke-direct {p0}, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->updateProgressDrawable()V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->mProgressColor:I

    .line 98
    invoke-direct {p0}, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->updateProgressDrawable()V

    return-void
.end method

.method public setProgressCompat(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 108
    sget-object p2, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->PROGRESS_PROPERTY:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    mul-int/lit8 p1, p1, 0x64

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 110
    sget-object p2, Lcom/stepstone/stepper/internal/widget/ColorableProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 111
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_0
    mul-int/lit8 p1, p1, 0x64

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
