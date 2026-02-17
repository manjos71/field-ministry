.class public Lcom/fourmob/datetimepicker/date/MonthPickerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field dateFormat:Ljava/text/SimpleDateFormat;

.field protected final mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

.field protected mLines:I

.field protected mSelectedMonth:I

.field protected mYear:I

.field months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V
    .locals 10

    .line 29
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLL"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->dateFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mLines:I

    .line 31
    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    .line 32
    invoke-interface {p2, p0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->registerOnDateChangedListener(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;)V

    .line 33
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0xc

    .line 34
    new-array v2, p2, [Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    iput-object v2, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    .line 37
    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    .line 38
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    .line 39
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mYear:I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 42
    sget v5, Lcom/fourmob/datetimepicker/R$color;->date_picker_text_normal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p2, :cond_1

    .line 45
    iget-object v7, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    new-instance v8, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    invoke-direct {v8, p1}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;-><init>(Landroid/content/Context;)V

    aput-object v8, v7, v6

    .line 46
    iget-object v7, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    aget-object v7, v7, v6

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v7, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    aget-object v7, v7, v6

    invoke-virtual {p0, v2, v6}, Lcom/fourmob/datetimepicker/date/MonthPickerView;->getMonthText(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v7, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    aget-object v7, v7, v6

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 49
    iget-object v7, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    aget-object v7, v7, v6

    sget-object v8, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    iget-object v7, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    aget-object v7, v7, v6

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v7, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    aget-object v7, v7, v6

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v7, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    aget-object v7, v7, v6

    const/4 v8, 0x0

    const v9, 0x3f733333    # 0.95f

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 53
    iget-object v7, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    aget-object v7, v7, v6

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 54
    iget-object v7, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    aget-object v7, v7, v6

    iget v8, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mYear:I

    const/16 v9, 0x7e0

    if-lt v8, v9, :cond_0

    const/high16 v8, 0x41700000    # 15.0f

    goto :goto_1

    :cond_0
    const/high16 v8, 0x41a00000    # 20.0f

    :goto_1
    invoke-virtual {v7, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 55
    iget-object v7, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    aget-object v7, v7, v6

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/MonthPickerView;->onDateChanged()V

    .line 60
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    iget p2, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    aget-object p1, p1, p2

    invoke-virtual {p1, v0}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;->drawIndicator(Z)V

    return-void
.end method


# virtual methods
.method protected getMonthText(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 65
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 66
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 108
    iget v0, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    .line 109
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    const/4 v4, 0x1

    if-ne p1, v3, :cond_0

    .line 110
    iput v2, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    goto :goto_0

    .line 111
    :cond_0
    aget-object v3, v1, v4

    if-ne p1, v3, :cond_1

    .line 112
    iput v4, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    .line 113
    aget-object v5, v1, v3

    if-ne p1, v5, :cond_2

    .line 114
    iput v3, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    .line 115
    aget-object v5, v1, v3

    if-ne p1, v5, :cond_3

    .line 116
    iput v3, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    .line 117
    aget-object v5, v1, v3

    if-ne p1, v5, :cond_4

    .line 118
    iput v3, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    .line 119
    aget-object v5, v1, v3

    if-ne p1, v5, :cond_5

    .line 120
    iput v3, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    .line 121
    aget-object v5, v1, v3

    if-ne p1, v5, :cond_6

    .line 122
    iput v3, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    goto :goto_0

    :cond_6
    const/4 v3, 0x7

    .line 123
    aget-object v5, v1, v3

    if-ne p1, v5, :cond_7

    .line 124
    iput v3, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    goto :goto_0

    :cond_7
    const/16 v3, 0x8

    .line 125
    aget-object v5, v1, v3

    if-ne p1, v5, :cond_8

    .line 126
    iput v3, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    goto :goto_0

    :cond_8
    const/16 v3, 0x9

    .line 127
    aget-object v5, v1, v3

    if-ne p1, v5, :cond_9

    .line 128
    iput v3, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    goto :goto_0

    :cond_9
    const/16 v3, 0xa

    .line 129
    aget-object v5, v1, v3

    if-ne p1, v5, :cond_a

    .line 130
    iput v3, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    goto :goto_0

    :cond_a
    const/16 v3, 0xb

    .line 131
    aget-object v5, v1, v3

    if-ne p1, v5, :cond_b

    .line 132
    iput v3, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    .line 135
    :cond_b
    :goto_0
    aget-object p1, v1, v0

    invoke-virtual {p1, v2}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;->drawIndicator(Z)V

    .line 136
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 138
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    iget v0, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v4}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;->drawIndicator(Z)V

    .line 139
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    iget v0, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 141
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    if-eqz p1, :cond_c

    .line 142
    iget v0, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mYear:I

    iget v1, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    invoke-interface {p1, v0, v1, v4}, Lcom/fourmob/datetimepicker/date/DatePickerController;->onDayOfMonthSelected(III)V

    :cond_c
    return-void
.end method

.method public onDateChanged()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getSelectedDay()Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    move-result-object v0

    iget v0, v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    iput v0, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    .line 103
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getSelectedDay()Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    move-result-object v0

    iget v0, v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    iput v0, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mYear:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 71
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p4, p2

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p3

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    sub-int/2addr p5, p2

    .line 80
    div-int/lit8 p5, p5, 0x4

    sub-int/2addr p4, v0

    .line 82
    div-int/lit8 p4, p4, 0x3

    const/4 p3, 0x0

    move v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 86
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-lez v1, :cond_0

    .line 87
    rem-int/lit8 v4, v1, 0x3

    if-nez v4, :cond_0

    add-int/2addr p2, p5

    :cond_0
    if-lez v1, :cond_1

    .line 90
    rem-int/lit8 v4, v1, 0x3

    if-nez v4, :cond_1

    move v2, v0

    .line 93
    :cond_1
    div-int/lit8 v4, p5, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v6, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mLines:I

    int-to-float v6, v6

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, p3, v4, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    add-int v4, v2, p4

    add-int v5, p2, p5

    .line 94
    invoke-virtual {v3, v2, p2, v4, v5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_2
    return-void
.end method
