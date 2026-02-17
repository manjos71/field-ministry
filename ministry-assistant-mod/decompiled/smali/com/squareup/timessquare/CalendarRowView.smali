.class public Lcom/squareup/timessquare/CalendarRowView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private cellSize:I

.field private isHeaderRow:Z

.field private listener:Lcom/squareup/timessquare/MonthView$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 25
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 27
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarRowView;->listener:Lcom/squareup/timessquare/MonthView$Listener;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/timessquare/MonthCellDescriptor;

    invoke-interface {v0, p1}, Lcom/squareup/timessquare/MonthView$Listener;->handleClick(Lcom/squareup/timessquare/MonthCellDescriptor;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sub-int/2addr p5, p3

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    .line 55
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 56
    iget v0, p0, Lcom/squareup/timessquare/CalendarRowView;->cellSize:I

    mul-int v1, p3, v0

    add-int/lit8 p3, p3, 0x1

    mul-int v0, v0, p3

    invoke-virtual {p4, v1, p2, v0, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarRowView;->listener:Lcom/squareup/timessquare/MonthView$Listener;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/timessquare/MonthCellDescriptor;

    invoke-interface {v0, p1}, Lcom/squareup/timessquare/MonthView$Listener;->handleLongClick(Lcom/squareup/timessquare/MonthCellDescriptor;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 33
    div-int/lit8 p2, p1, 0x7

    iput p2, p0, Lcom/squareup/timessquare/CalendarRowView;->cellSize:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 34
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 35
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarRowView;->isHeaderRow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/squareup/timessquare/CalendarRowView;->cellSize:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    .line 37
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 38
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 39
    invoke-virtual {v4, p2, v0}, Landroid/view/View;->measure(II)V

    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-le v5, v3, :cond_1

    .line 42
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr v3, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    add-int/2addr v3, p2

    .line 47
    invoke-virtual {p0, p1, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIsHeaderRow(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarRowView;->isHeaderRow:Z

    return-void
.end method

.method public setListener(Lcom/squareup/timessquare/MonthView$Listener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarRowView;->listener:Lcom/squareup/timessquare/MonthView$Listener;

    return-void
.end method
