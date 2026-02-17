.class public Lcom/squareup/timessquare/MonthView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/timessquare/MonthView$Listener;
    }
.end annotation


# instance fields
.field grid:Lcom/squareup/timessquare/CalendarGridView;

.field private listener:Lcom/squareup/timessquare/MonthView$Listener;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static create(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/text/DateFormat;Lcom/squareup/timessquare/MonthView$Listener;Ljava/util/Calendar;)Lcom/squareup/timessquare/MonthView;
    .locals 6

    .line 23
    sget v0, Lcom/squareup/timessquare/R$layout;->month:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/squareup/timessquare/MonthView;

    const/4 p1, 0x7

    .line 25
    invoke-virtual {p4, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 27
    invoke-virtual {p4}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 28
    iget-object v3, p0, Lcom/squareup/timessquare/MonthView;->grid:Lcom/squareup/timessquare/CalendarGridView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/squareup/timessquare/CalendarRowView;

    :goto_0
    if-ge v1, p1, :cond_0

    add-int v4, v2, v1

    .line 30
    invoke-virtual {p4, p1, v4}, Ljava/util/Calendar;->set(II)V

    .line 31
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 32
    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p4, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 35
    iput-object p3, p0, Lcom/squareup/timessquare/MonthView;->listener:Lcom/squareup/timessquare/MonthView$Listener;

    return-object p0
.end method


# virtual methods
.method public init(Lcom/squareup/timessquare/MonthDescriptor;Ljava/util/List;)V
    .locals 11

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    iget-object v0, p0, Lcom/squareup/timessquare/MonthView;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/squareup/timessquare/MonthDescriptor;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 55
    iget-object v0, p0, Lcom/squareup/timessquare/MonthView;->grid:Lcom/squareup/timessquare/CalendarGridView;

    invoke-virtual {v0, p1}, Lcom/squareup/timessquare/CalendarGridView;->setNumRows(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_6

    .line 57
    iget-object v2, p0, Lcom/squareup/timessquare/MonthView;->grid:Lcom/squareup/timessquare/CalendarGridView;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/squareup/timessquare/CalendarRowView;

    .line 58
    iget-object v4, p0, Lcom/squareup/timessquare/MonthView;->listener:Lcom/squareup/timessquare/MonthView$Listener;

    invoke-virtual {v2, v4}, Lcom/squareup/timessquare/CalendarRowView;->setListener(Lcom/squareup/timessquare/MonthView$Listener;)V

    if-ge v1, p1, :cond_4

    .line 60
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    .line 62
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 63
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 64
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/squareup/timessquare/CalendarCellView;

    .line 65
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/squareup/timessquare/CalendarCellViewDate;

    .line 66
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->getValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 69
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/squareup/timessquare/CalendarCellViewDate;->setSelectable(Z)V

    .line 70
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelected()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setSelected(Z)V

    .line 71
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/squareup/timessquare/CalendarCellViewDate;->setCurrentMonth(Z)V

    .line 72
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isToday()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/squareup/timessquare/CalendarCellViewDate;->setToday(Z)V

    .line 73
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->getRangeState()Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/squareup/timessquare/CalendarCellViewDate;->setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V

    .line 75
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 76
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/squareup/timessquare/CalendarCellView;->setSelectable(Z)V

    .line 77
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelected()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 78
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/squareup/timessquare/CalendarCellView;->setCurrentMonth(Z)V

    .line 79
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isToday()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/squareup/timessquare/CalendarCellView;->setToday(Z)V

    .line 80
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->getRangeState()Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/timessquare/CalendarCellView;->setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V

    .line 81
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v7, 0x1

    .line 83
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/squareup/timessquare/CalendarCellViewText;

    .line 84
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 85
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/squareup/timessquare/CalendarCellViewText;->setSelectable(Z)V

    .line 86
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelected()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setSelected(Z)V

    .line 87
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/squareup/timessquare/CalendarCellViewText;->setCurrentMonth(Z)V

    .line 88
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isToday()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/squareup/timessquare/CalendarCellViewText;->setToday(Z)V

    .line 89
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->getRangeState()Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/squareup/timessquare/CalendarCellViewText;->setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V

    .line 90
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->getShowCheck()Z

    move-result v8

    .line 91
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->getText()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    if-nez v8, :cond_0

    .line 92
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 94
    :cond_0
    const-string v9, ""

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v7, 0x2

    .line 96
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 97
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->getShowDot()Z

    move-result v9

    const/4 v10, 0x4

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    goto :goto_3

    :cond_1
    const/4 v9, 0x4

    :goto_3
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    const/4 v7, 0x3

    .line 99
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/squareup/timessquare/CalendarCellViewText;

    .line 100
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 101
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/squareup/timessquare/CalendarCellViewText;->setSelectable(Z)V

    .line 102
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelected()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 103
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/squareup/timessquare/CalendarCellViewText;->setCurrentMonth(Z)V

    .line 104
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isToday()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/squareup/timessquare/CalendarCellViewText;->setToday(Z)V

    .line 105
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->getRangeState()Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/timessquare/CalendarCellViewText;->setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V

    if-eqz v8, :cond_2

    const/4 v10, 0x0

    .line 106
    :cond_2
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    if-eqz v8, :cond_3

    .line 108
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    const/16 v1, 0x8

    .line 113
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    move v1, v3

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 45
    sget v0, Lcom/squareup/timessquare/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/squareup/timessquare/MonthView;->title:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/squareup/timessquare/R$id;->calendar_grid:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/squareup/timessquare/CalendarGridView;

    iput-object v0, p0, Lcom/squareup/timessquare/MonthView;->grid:Lcom/squareup/timessquare/CalendarGridView;

    return-void
.end method
