.class public Lcom/fourmob/datetimepicker/date/MagazinePickerView;
.super Lcom/fourmob/datetimepicker/date/MonthPickerView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/fourmob/datetimepicker/date/MonthPickerView;-><init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V

    return-void
.end method


# virtual methods
.method protected getMonthText(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 9

    .line 41
    iget v0, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mYear:I

    const/16 v1, 0x7e2

    const/4 v2, 0x2

    const-string v3, "%s\nwp %s"

    const-string v4, "%s\ng %s"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v0, v1, :cond_2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/fourmob/datetimepicker/R$string;->issueNumber:I

    div-int/lit8 v7, p2, 0x4

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v7, v8, v5

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    rem-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_1

    if-ne v1, v6, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fourmob/datetimepicker/date/MonthPickerView;->getMonthText(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v5

    aput-object v0, p2, v6

    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 44
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/fourmob/datetimepicker/date/MonthPickerView;->getMonthText(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v5

    aput-object v0, p2, v6

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v1, 0x7e0

    if-lt v0, v1, :cond_4

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/fourmob/datetimepicker/R$string;->issueNumber:I

    div-int/lit8 v7, p2, 0x2

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v7, v8, v5

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_3

    .line 50
    invoke-super {p0, p1, p2}, Lcom/fourmob/datetimepicker/date/MonthPickerView;->getMonthText(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v5

    aput-object v0, p2, v6

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/fourmob/datetimepicker/date/MonthPickerView;->getMonthText(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v5

    aput-object v0, p2, v6

    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/fourmob/datetimepicker/date/MonthPickerView;->getMonthText(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onDateChanged()V
    .locals 6

    .line 19
    iget v0, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mYear:I

    .line 20
    invoke-super {p0}, Lcom/fourmob/datetimepicker/date/MonthPickerView;->onDateChanged()V

    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 23
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 24
    iget v2, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mSelectedMonth:I

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 25
    iget v2, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mYear:I

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 27
    iget v2, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mYear:I

    if-eq v2, v0, :cond_3

    const/16 v0, 0x7e0

    if-lt v2, v0, :cond_0

    const/4 v3, 0x2

    .line 28
    :cond_0
    iput v3, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mLines:I

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_2

    .line 30
    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    aget-object v3, v3, v2

    invoke-virtual {p0, v1, v2}, Lcom/fourmob/datetimepicker/date/MagazinePickerView;->getMonthText(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    aget-object v3, v3, v2

    iget v5, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->mYear:I

    if-lt v5, v0, :cond_1

    const/high16 v5, 0x41700000    # 15.0f

    goto :goto_1

    :cond_1
    const/high16 v5, 0x41a00000    # 20.0f

    :goto_1
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 32
    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/MonthPickerView;->months:[Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method
