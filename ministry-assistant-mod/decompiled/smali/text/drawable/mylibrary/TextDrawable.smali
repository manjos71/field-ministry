.class public Ltext/drawable/mylibrary/TextDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltext/drawable/mylibrary/TextDrawable$IShapeBuilder;,
        Ltext/drawable/mylibrary/TextDrawable$IBuilder;,
        Ltext/drawable/mylibrary/TextDrawable$Builder;
    }
.end annotation


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private final borderThickness:I

.field private final color:I

.field private final fontSize:I

.field private final height:I

.field private final radius:F

.field private final shape:Landroid/graphics/drawable/shapes/RectShape;

.field private final text:Ljava/lang/String;

.field private final textPaint:Landroid/graphics/Paint;

.field private final width:I


# direct methods
.method private constructor <init>(Ltext/drawable/mylibrary/TextDrawable$Builder;)V
    .locals 3

    .line 25
    invoke-static {p1}, Ltext/drawable/mylibrary/TextDrawable$Builder;->access$000(Ltext/drawable/mylibrary/TextDrawable$Builder;)Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 28
    invoke-static {p1}, Ltext/drawable/mylibrary/TextDrawable$Builder;->access$000(Ltext/drawable/mylibrary/TextDrawable$Builder;)Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    iput-object v0, p0, Ltext/drawable/mylibrary/TextDrawable;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 29
    invoke-static {p1}, Ltext/drawable/mylibrary/TextDrawable$Builder;->access$100(Ltext/drawable/mylibrary/TextDrawable$Builder;)I

    move-result v0

    iput v0, p0, Ltext/drawable/mylibrary/TextDrawable;->height:I

    .line 30
    invoke-static {p1}, Ltext/drawable/mylibrary/TextDrawable$Builder;->access$200(Ltext/drawable/mylibrary/TextDrawable$Builder;)I

    move-result v0

    iput v0, p0, Ltext/drawable/mylibrary/TextDrawable;->width:I

    .line 31
    iget v0, p1, Ltext/drawable/mylibrary/TextDrawable$Builder;->radius:F

    iput v0, p0, Ltext/drawable/mylibrary/TextDrawable;->radius:F

    .line 34
    invoke-static {p1}, Ltext/drawable/mylibrary/TextDrawable$Builder;->access$300(Ltext/drawable/mylibrary/TextDrawable$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ltext/drawable/mylibrary/TextDrawable$Builder;->access$400(Ltext/drawable/mylibrary/TextDrawable$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ltext/drawable/mylibrary/TextDrawable$Builder;->access$400(Ltext/drawable/mylibrary/TextDrawable$Builder;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ltext/drawable/mylibrary/TextDrawable;->text:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Ltext/drawable/mylibrary/TextDrawable$Builder;->access$500(Ltext/drawable/mylibrary/TextDrawable$Builder;)I

    move-result v0

    iput v0, p0, Ltext/drawable/mylibrary/TextDrawable;->color:I

    .line 38
    invoke-static {p1}, Ltext/drawable/mylibrary/TextDrawable$Builder;->access$600(Ltext/drawable/mylibrary/TextDrawable$Builder;)I

    move-result v1

    iput v1, p0, Ltext/drawable/mylibrary/TextDrawable;->fontSize:I

    .line 39
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Ltext/drawable/mylibrary/TextDrawable;->textPaint:Landroid/graphics/Paint;

    .line 40
    iget v2, p1, Ltext/drawable/mylibrary/TextDrawable$Builder;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    .line 41
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    invoke-static {p1}, Ltext/drawable/mylibrary/TextDrawable$Builder;->access$700(Ltext/drawable/mylibrary/TextDrawable$Builder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 43
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    invoke-static {p1}, Ltext/drawable/mylibrary/TextDrawable$Builder;->access$800(Ltext/drawable/mylibrary/TextDrawable$Builder;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 45
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 46
    invoke-static {p1}, Ltext/drawable/mylibrary/TextDrawable$Builder;->access$900(Ltext/drawable/mylibrary/TextDrawable$Builder;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    invoke-static {p1}, Ltext/drawable/mylibrary/TextDrawable$Builder;->access$900(Ltext/drawable/mylibrary/TextDrawable$Builder;)I

    move-result p1

    iput p1, p0, Ltext/drawable/mylibrary/TextDrawable;->borderThickness:I

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Ltext/drawable/mylibrary/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    .line 51
    invoke-direct {p0, v0}, Ltext/drawable/mylibrary/TextDrawable;->getDarkerShade(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p1, p1

    .line 53
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method synthetic constructor <init>(Ltext/drawable/mylibrary/TextDrawable$Builder;Ltext/drawable/mylibrary/TextDrawable$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Ltext/drawable/mylibrary/TextDrawable;-><init>(Ltext/drawable/mylibrary/TextDrawable$Builder;)V

    return-void
.end method

.method public static builder()Ltext/drawable/mylibrary/TextDrawable$IShapeBuilder;
    .locals 2

    .line 133
    new-instance v0, Ltext/drawable/mylibrary/TextDrawable$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltext/drawable/mylibrary/TextDrawable$Builder;-><init>(Ltext/drawable/mylibrary/TextDrawable$1;)V

    return-object v0
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 3

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 94
    iget v1, p0, Ltext/drawable/mylibrary/TextDrawable;->borderThickness:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 96
    iget-object v1, p0, Ltext/drawable/mylibrary/TextDrawable;->shape:Landroid/graphics/drawable/shapes/RectShape;

    instance-of v2, v1, Landroid/graphics/drawable/shapes/OvalShape;

    if-eqz v2, :cond_0

    .line 97
    iget-object v1, p0, Ltext/drawable/mylibrary/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    .line 99
    :cond_0
    instance-of v1, v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    if-eqz v1, :cond_1

    .line 100
    iget v1, p0, Ltext/drawable/mylibrary/TextDrawable;->radius:F

    iget-object v2, p0, Ltext/drawable/mylibrary/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Ltext/drawable/mylibrary/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getDarkerShade(I)I
    .locals 3

    .line 62
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 63
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 64
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 62
    invoke-static {v0, v2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 69
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 74
    iget v1, p0, Ltext/drawable/mylibrary/TextDrawable;->borderThickness:I

    if-lez v1, :cond_0

    .line 75
    invoke-direct {p0, p1}, Ltext/drawable/mylibrary/TextDrawable;->drawBorder(Landroid/graphics/Canvas;)V

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 79
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    iget v2, p0, Ltext/drawable/mylibrary/TextDrawable;->width:I

    if-gez v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 83
    :cond_1
    iget v3, p0, Ltext/drawable/mylibrary/TextDrawable;->height:I

    if-gez v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 84
    :cond_2
    iget v0, p0, Ltext/drawable/mylibrary/TextDrawable;->fontSize:I

    if-gez v0, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 85
    :cond_3
    iget-object v4, p0, Ltext/drawable/mylibrary/TextDrawable;->textPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    iget-object v0, p0, Ltext/drawable/mylibrary/TextDrawable;->text:Ljava/lang/String;

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Ltext/drawable/mylibrary/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Ltext/drawable/mylibrary/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Ltext/drawable/mylibrary/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 88
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 129
    iget v0, p0, Ltext/drawable/mylibrary/TextDrawable;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 124
    iget v0, p0, Ltext/drawable/mylibrary/TextDrawable;->width:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Ltext/drawable/mylibrary/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 114
    iget-object v0, p0, Ltext/drawable/mylibrary/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
