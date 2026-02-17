.class public Lcom/sleepbot/datetimepicker/time/CircleView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mBlack:I

.field private mCircleRadius:I

.field private mCircleRadiusMultiplier:F

.field private mDrawValuesReady:Z

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mWhite:I

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 50
    sget v1, Lcom/fourmob/datetimepicker/R$color;->white:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mWhite:I

    .line 51
    sget v1, Lcom/fourmob/datetimepicker/R$color;->numbers_text_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mBlack:I

    const/4 p1, 0x1

    .line 52
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mIsInitialized:Z

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Z)V
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 59
    const-string p1, "CircleView"

    const-string p2, "CircleView may only be initialized once."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 64
    iput-boolean p2, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mIs24HourMode:Z

    if-eqz p2, :cond_1

    .line 66
    sget p2, Lcom/fourmob/datetimepicker/R$string;->circle_radius_multiplier_24HourMode:I

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    goto :goto_0

    .line 69
    :cond_1
    sget p2, Lcom/fourmob/datetimepicker/R$string;->circle_radius_multiplier:I

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 69
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    .line 71
    sget p2, Lcom/fourmob/datetimepicker/R$string;->ampm_circle_radius_multiplier:I

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mAmPmCircleRadiusMultiplier:F

    :goto_0
    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mIsInitialized:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mIsInitialized:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mDrawValuesReady:Z

    if-nez v0, :cond_2

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mXCenter:I

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mYCenter:I

    .line 89
    iget v1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mXCenter:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mCircleRadius:I

    .line 91
    iget-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mIs24HourMode:Z

    if-nez v1, :cond_1

    int-to-float v0, v0

    .line 95
    iget v1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mAmPmCircleRadiusMultiplier:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 96
    iget v1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mYCenter:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mYCenter:I

    :cond_1
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mDrawValuesReady:Z

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mWhite:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget v0, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 107
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mBlack:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget v0, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mYCenter:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method
