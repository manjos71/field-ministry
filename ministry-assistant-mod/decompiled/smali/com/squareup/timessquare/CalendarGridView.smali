.class public Lcom/squareup/timessquare/CalendarGridView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private final dividerPaint:Landroid/graphics/Paint;

.field private oldNumRows:I

.field private oldWidthMeasureSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/squareup/timessquare/CalendarGridView;->dividerPaint:Landroid/graphics/Paint;

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/squareup/timessquare/R$color;->calendar_divider:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/squareup/timessquare/CalendarRowView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/squareup/timessquare/CalendarRowView;->setIsHeaderRow(Z)V

    .line 36
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 41
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    const/4 v4, 0x0

    .line 46
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v6, v5

    const/high16 v7, 0x3f000000    # 0.5f

    add-float v9, v6, v7

    int-to-float v10, v2

    int-to-float v14, v3

    .line 47
    iget-object v13, v0, Lcom/squareup/timessquare/CalendarGridView;->dividerPaint:Landroid/graphics/Paint;

    move v11, v9

    move-object/from16 v8, p1

    move v12, v14

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    const/4 v2, 0x7

    if-ge v4, v2, :cond_0

    .line 51
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v5

    int-to-float v2, v2

    sub-float v11, v2, v7

    .line 52
    iget-object v15, v0, Lcom/squareup/timessquare/CalendarGridView;->dividerPaint:Landroid/graphics/Paint;

    move v13, v11

    move v12, v10

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v10, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    .line 61
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v2, v0

    int-to-float v3, p4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    int-to-float v4, p2

    iget-object v6, p0, Lcom/squareup/timessquare/CalendarGridView;->dividerPaint:Landroid/graphics/Paint;

    move v5, v3

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return p3
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p3, 0x0

    const/4 p5, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    .line 105
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p5

    .line 107
    invoke-virtual {v0, p2, p5, p4, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    move p5, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 70
    iget p2, p0, Lcom/squareup/timessquare/CalendarGridView;->oldWidthMeasureSize:I

    if-ne p2, p1, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 75
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    iput p1, p0, Lcom/squareup/timessquare/CalendarGridView;->oldWidthMeasureSize:I

    .line 77
    div-int/lit8 p1, p1, 0x7

    mul-int/lit8 p2, p1, 0x7

    const/high16 v0, 0x40000000    # 2.0f

    .line 81
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 82
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 83
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 84
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    if-nez v3, :cond_1

    const/high16 v6, -0x80000000

    .line 87
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p0, v5, v1, v6}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {p0, v5, v1, v0}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 91
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p2, p2, 0x2

    .line 96
    invoke-virtual {p0, p2, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setNumRows(I)V
    .locals 1

    .line 114
    iget v0, p0, Lcom/squareup/timessquare/CalendarGridView;->oldNumRows:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/squareup/timessquare/CalendarGridView;->oldWidthMeasureSize:I

    .line 119
    :cond_0
    iput p1, p0, Lcom/squareup/timessquare/CalendarGridView;->oldNumRows:I

    return-void
.end method
