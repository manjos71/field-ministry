.class public Lcom/lostpixels/fieldservice/ui/LinedEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/LinedEditText;->mRect:Landroid/graphics/Rect;

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/LinedEditText;->mPaint:Landroid/graphics/Paint;

    .line 26
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const p2, -0x7fffff01

    .line 27
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 32
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/LinedEditText;->mRect:Landroid/graphics/Rect;

    .line 34
    iget-object v7, p0, Lcom/lostpixels/fieldservice/ui/LinedEditText;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v0, :cond_0

    .line 37
    invoke-virtual {p0, v8, v1}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v2

    .line 39
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v4, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    move v6, v4

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 42
    invoke-super {p0, v2}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
