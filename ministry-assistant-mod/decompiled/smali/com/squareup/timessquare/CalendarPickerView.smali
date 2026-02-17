.class public Lcom/squareup/timessquare/CalendarPickerView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;,
        Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;,
        Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;,
        Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;,
        Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;,
        Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;,
        Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;,
        Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;,
        Lcom/squareup/timessquare/CalendarPickerView$DateSelectableFilter;
    }
.end annotation


# instance fields
.field private final adapter:Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

.field private final cellLookup:Landroid/util/SparseArray;

.field private final cells:Ljava/util/List;

.field private dateListener:Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

.field private firstDayOfWeek:I

.field private fullDateFormat:Ljava/text/DateFormat;

.field private invalidDateListener:Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;

.field private final listener:Lcom/squareup/timessquare/MonthView$Listener;

.field private locale:Ljava/util/Locale;

.field private maxCal:Ljava/util/Calendar;

.field private minCal:Ljava/util/Calendar;

.field private monthCounter:Ljava/util/Calendar;

.field private monthNameFormat:Ljava/text/DateFormat;

.field final months:Ljava/util/List;

.field private reverseOrder:Z

.field final selectedCals:Ljava/util/List;

.field final selectedCells:Ljava/util/List;

.field selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

.field today:Ljava/util/Calendar;

.field private weekdayNameFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    .line 54
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->cells:Ljava/util/List;

    .line 59
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->cellLookup:Landroid/util/SparseArray;

    .line 60
    new-instance p2, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;-><init>(Lcom/squareup/timessquare/CalendarPickerView;Lcom/squareup/timessquare/CalendarPickerView$1;)V

    iput-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->listener:Lcom/squareup/timessquare/MonthView$Listener;

    .line 73
    new-instance p2, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;

    invoke-direct {p2, p0, v0}, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;-><init>(Lcom/squareup/timessquare/CalendarPickerView;Lcom/squareup/timessquare/CalendarPickerView$1;)V

    iput-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->invalidDateListener:Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;

    const/4 p2, 0x0

    .line 75
    iput-boolean p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->reverseOrder:Z

    .line 79
    new-instance v1, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

    invoke-direct {v1, p0, v0}, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;-><init>(Lcom/squareup/timessquare/CalendarPickerView;Lcom/squareup/timessquare/CalendarPickerView$1;)V

    iput-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->adapter:Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/squareup/timessquare/R$color;->calendar_bg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 83
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 84
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    iput-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    .line 86
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->today:Ljava/util/Calendar;

    .line 87
    iget-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    .line 88
    iget-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    .line 89
    iget-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    .line 90
    new-instance p2, Ljava/text/SimpleDateFormat;

    sget v0, Lcom/squareup/timessquare/R$string;->month_name_format:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-direct {p2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthNameFormat:Ljava/text/DateFormat;

    .line 91
    new-instance p2, Ljava/text/SimpleDateFormat;

    sget v0, Lcom/squareup/timessquare/R$string;->day_name_format:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-direct {p2, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->weekdayNameFormat:Ljava/text/DateFormat;

    .line 92
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    const/4 p2, 0x2

    invoke-static {p2, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->fullDateFormat:Ljava/text/DateFormat;

    .line 93
    iput p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->firstDayOfWeek:I

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x1

    .line 97
    invoke-virtual {p1, p2, p2}, Ljava/util/Calendar;->add(II)V

    .line 99
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/squareup/timessquare/CalendarPickerView;->init(Ljava/util/Date;Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 100
    invoke-virtual {p1, p2}, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->withSelectedDate(Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/squareup/timessquare/CalendarPickerView;->invalidDateListener:Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/squareup/timessquare/CalendarPickerView;Ljava/util/Date;Lcom/squareup/timessquare/MonthCellDescriptor;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/squareup/timessquare/CalendarPickerView;->doSelectDate(Ljava/util/Date;Lcom/squareup/timessquare/MonthCellDescriptor;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/squareup/timessquare/CalendarPickerView;->dateListener:Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/squareup/timessquare/CalendarPickerView;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/squareup/timessquare/CalendarPickerView;->firstDayOfWeek:I

    return p0
.end method

.method static synthetic access$1400(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/text/DateFormat;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/squareup/timessquare/CalendarPickerView;->weekdayNameFormat:Ljava/text/DateFormat;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/MonthView$Listener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/squareup/timessquare/CalendarPickerView;->listener:Lcom/squareup/timessquare/MonthView$Listener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/List;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/squareup/timessquare/CalendarPickerView;->cells:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/text/DateFormat;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/squareup/timessquare/CalendarPickerView;->fullDateFormat:Ljava/text/DateFormat;

    return-object p0
.end method

.method static synthetic access$300(Lcom/squareup/timessquare/CalendarPickerView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->validateAndUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Locale;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$500(Ljava/util/Calendar;Lcom/squareup/timessquare/MonthDescriptor;)Z
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->sameMonth(Ljava/util/Calendar;Lcom/squareup/timessquare/MonthDescriptor;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/squareup/timessquare/CalendarPickerView;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->scrollToSelectedMonth(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Calendar;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Calendar;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/squareup/timessquare/CalendarPickerView;Ljava/util/Date;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->isDateSelectable(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method private applyMultiSelect(Ljava/util/Date;Ljava/util/Calendar;)Ljava/util/Date;
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 509
    invoke-virtual {v1}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 511
    invoke-virtual {v1, p1}, Lcom/squareup/timessquare/MonthCellDescriptor;->setSelected(Z)V

    .line 512
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 518
    invoke-static {v1, p2}, Lcom/squareup/timessquare/CalendarPickerView;->sameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 519
    iget-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-object p1
.end method

.method private static betweenDates(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 0

    .line 160
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 161
    invoke-static {p0, p1, p2}, Lcom/squareup/timessquare/CalendarPickerView;->betweenDates(Ljava/util/Date;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0
.end method

.method static betweenDates(Ljava/util/Date;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 1

    .line 165
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 166
    invoke-virtual {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 167
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private clearOldSelections()V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/timessquare/MonthCellDescriptor;

    const/4 v2, 0x0

    .line 501
    invoke-virtual {v1, v2}, Lcom/squareup/timessquare/MonthCellDescriptor;->setSelected(Z)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 504
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static containsDate(Ljava/util/List;Ljava/util/Calendar;)Z
    .locals 1

    .line 129
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 130
    invoke-static {p1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->sameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static dbg(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nmaxDate: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private doSelectDate(Ljava/util/Date;Lcom/squareup/timessquare/MonthCellDescriptor;)Z
    .locals 9

    .line 425
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 426
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 428
    invoke-static {v0}, Lcom/squareup/timessquare/CalendarPickerView;->setMidnight(Ljava/util/Calendar;)V

    .line 431
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 432
    sget-object v3, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->NONE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    invoke-virtual {v2, v3}, Lcom/squareup/timessquare/MonthCellDescriptor;->setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V

    goto :goto_0

    .line 435
    :cond_0
    sget-object v1, Lcom/squareup/timessquare/CalendarPickerView$2;->$SwitchMap$com$squareup$timessquare$CalendarPickerView$SelectionMode:[I

    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 451
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->clearOldSelections()V

    goto :goto_1

    .line 454
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown selectionMode "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 447
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->applyMultiSelect(Ljava/util/Date;Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object p1

    goto :goto_1

    .line 437
    :cond_3
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 439
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->clearOldSelections()V

    :cond_4
    :goto_1
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 459
    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/timessquare/MonthCellDescriptor;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 460
    :cond_5
    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {p2, v2}, Lcom/squareup/timessquare/MonthCellDescriptor;->setSelected(Z)V

    .line 463
    :cond_6
    iget-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    sget-object v0, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->RANGE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    if-ne p2, v0, :cond_b

    iget-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_b

    .line 467
    iget-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/squareup/timessquare/MonthCellDescriptor;

    invoke-virtual {p2}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object p2

    .line 468
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/timessquare/MonthCellDescriptor;

    invoke-virtual {v0}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 469
    invoke-virtual {v0, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v8, v0

    move-object v0, p2

    move-object p2, v8

    .line 474
    :cond_7
    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/timessquare/MonthCellDescriptor;

    sget-object v4, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->FIRST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    invoke-virtual {v3, v4}, Lcom/squareup/timessquare/MonthCellDescriptor;->setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V

    .line 475
    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/timessquare/MonthCellDescriptor;

    sget-object v4, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->LAST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    invoke-virtual {v3, v4}, Lcom/squareup/timessquare/MonthCellDescriptor;->setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V

    .line 477
    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView;->cells:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 478
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 479
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 480
    invoke-virtual {v6}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 481
    invoke-virtual {v6}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 482
    invoke-virtual {v6}, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 483
    invoke-virtual {v6, v2}, Lcom/squareup/timessquare/MonthCellDescriptor;->setSelected(Z)V

    .line 484
    sget-object v7, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->MIDDLE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    invoke-virtual {v6, v7}, Lcom/squareup/timessquare/MonthCellDescriptor;->setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V

    .line 485
    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 494
    :cond_b
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->validateAndUpdate()V

    if-eqz p1, :cond_c

    return v2

    :cond_c
    return v1
.end method

.method private getDateID(Ljava/util/Date;)I
    .locals 3

    .line 278
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 279
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 280
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method private getMonthCellWithIndexByDate(Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;
    .locals 7

    .line 531
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 532
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 533
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 535
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->cells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 536
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 537
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 538
    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 539
    invoke-static {p1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->sameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 540
    new-instance p1, Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;

    invoke-direct {p1, v5, v2}, Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;-><init>(Lcom/squareup/timessquare/MonthCellDescriptor;I)V

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private isDateSelectable(Ljava/util/Date;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private static maxDate(Ljava/util/List;)Ljava/util/Calendar;
    .locals 1

    if-eqz p0, :cond_1

    .line 146
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 150
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static minDate(Ljava/util/List;)Ljava/util/Calendar;
    .locals 1

    if-eqz p0, :cond_1

    .line 138
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 142
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static sameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x2

    .line 154
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    .line 155
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    .line 156
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static sameMonth(Ljava/util/Calendar;Lcom/squareup/timessquare/MonthDescriptor;)Z
    .locals 2

    const/4 v0, 0x2

    .line 171
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/squareup/timessquare/MonthDescriptor;->getMonth()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/squareup/timessquare/MonthDescriptor;->getYear()I

    move-result p1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private scrollToSelectedMonth(I)V
    .locals 1

    .line 312
    new-instance v0, Lcom/squareup/timessquare/CalendarPickerView$1;

    invoke-direct {v0, p0, p1}, Lcom/squareup/timessquare/CalendarPickerView$1;-><init>(Lcom/squareup/timessquare/CalendarPickerView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static setMidnight(Ljava/util/Calendar;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 123
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 124
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 125
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private validateAndUpdate()V
    .locals 1

    .line 305
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->adapter:Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->adapter:Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method getMonthCells(Lcom/squareup/timessquare/MonthDescriptor;Ljava/util/Calendar;)Ljava/util/List;
    .locals 20

    move-object/from16 v0, p0

    .line 596
    iget-object v1, v0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 597
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 598
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x5

    const/4 v4, 0x1

    .line 599
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x7

    .line 600
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 602
    iget v7, v0, Lcom/squareup/timessquare/CalendarPickerView;->firstDayOfWeek:I

    const/4 v8, 0x2

    if-ne v7, v4, :cond_0

    .line 604
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    goto :goto_0

    .line 606
    :cond_0
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 607
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v7

    sub-int/2addr v7, v6

    if-lez v7, :cond_1

    add-int/lit8 v7, v7, -0x7

    .line 611
    :cond_1
    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->add(II)V

    .line 613
    iget-object v6, v0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-static {v6}, Lcom/squareup/timessquare/CalendarPickerView;->minDate(Ljava/util/List;)Ljava/util/Calendar;

    move-result-object v6

    .line 614
    iget-object v7, v0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-static {v7}, Lcom/squareup/timessquare/CalendarPickerView;->maxDate(Ljava/util/List;)Ljava/util/Calendar;

    move-result-object v7

    .line 617
    :cond_2
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/timessquare/MonthDescriptor;->getMonth()I

    move-result v10

    add-int/2addr v10, v4

    if-lt v9, v10, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/timessquare/MonthDescriptor;->getYear()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 618
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/timessquare/MonthDescriptor;->getYear()I

    move-result v10

    if-gt v9, v10, :cond_b

    .line 620
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 621
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v5, :cond_2

    .line 623
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    .line 625
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/timessquare/MonthDescriptor;->getMonth()I

    move-result v14

    if-ne v12, v14, :cond_4

    const/4 v14, 0x1

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    :goto_2
    if-eqz v14, :cond_5

    .line 626
    iget-object v12, v0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-static {v12, v1}, Lcom/squareup/timessquare/CalendarPickerView;->containsDate(Ljava/util/List;Ljava/util/Calendar;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    :goto_3
    if-eqz v14, :cond_6

    .line 627
    iget-object v12, v0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    iget-object v15, v0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    .line 628
    invoke-static {v1, v12, v15}, Lcom/squareup/timessquare/CalendarPickerView;->betweenDates(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-direct {v0, v13}, Lcom/squareup/timessquare/CalendarPickerView;->isDateSelectable(Ljava/util/Date;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v15, 0x1

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    .line 629
    :goto_4
    iget-object v12, v0, Lcom/squareup/timessquare/CalendarPickerView;->today:Ljava/util/Calendar;

    invoke-static {v1, v12}, Lcom/squareup/timessquare/CalendarPickerView;->sameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v17

    .line 630
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 632
    sget-object v12, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->NONE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    .line 633
    iget-object v5, v0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_7

    .line 634
    invoke-static {v6, v1}, Lcom/squareup/timessquare/CalendarPickerView;->sameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 635
    sget-object v12, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->FIRST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    :cond_7
    :goto_5
    move-object/from16 v19, v12

    goto :goto_6

    .line 636
    :cond_8
    iget-object v5, v0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-static {v5}, Lcom/squareup/timessquare/CalendarPickerView;->maxDate(Ljava/util/List;)Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/squareup/timessquare/CalendarPickerView;->sameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 637
    sget-object v12, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->LAST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    goto :goto_5

    .line 638
    :cond_9
    invoke-static {v1, v6, v7}, Lcom/squareup/timessquare/CalendarPickerView;->betweenDates(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 639
    sget-object v12, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->MIDDLE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    goto :goto_5

    .line 644
    :goto_6
    new-instance v12, Lcom/squareup/timessquare/MonthCellDescriptor;

    invoke-direct/range {v12 .. v19}, Lcom/squareup/timessquare/MonthCellDescriptor;-><init>(Ljava/util/Date;ZZZZILcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v12, 0x6

    .line 649
    invoke-virtual {v1, v12, v4}, Ljava/util/Calendar;->add(II)V

    .line 650
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v5, v13, :cond_a

    .line 653
    invoke-virtual {v1, v12, v4}, Ljava/util/Calendar;->add(II)V

    :cond_a
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x7

    goto/16 :goto_1

    :cond_b
    return-object v2
.end method

.method public getSelectedDate()Ljava/util/Date;
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedDates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 349
    invoke-virtual {v2}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public getSelectionMode()Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    return-object v0
.end method

.method public getSelectionSize()I
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public init(Ljava/util/Date;Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
    .locals 1

    .line 301
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/squareup/timessquare/CalendarPickerView;->init(Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    move-result-object p1

    return-object p1
.end method

.method public init(Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
    .locals 6

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 196
    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 200
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    if-eqz p3, :cond_8

    .line 209
    iput-object p3, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    .line 210
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->today:Ljava/util/Calendar;

    .line 211
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    .line 212
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    .line 213
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    .line 214
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/squareup/timessquare/R$string;->month_name_format:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthNameFormat:Ljava/text/DateFormat;

    .line 216
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/timessquare/MonthDescriptor;

    .line 217
    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthNameFormat:Ljava/text/DateFormat;

    invoke-virtual {v1}, Lcom/squareup/timessquare/MonthDescriptor;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/timessquare/MonthDescriptor;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/squareup/timessquare/R$string;->day_name_format:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->weekdayNameFormat:Ljava/text/DateFormat;

    const/4 v0, 0x2

    .line 221
    invoke-static {v0, p3}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p3

    iput-object p3, p0, Lcom/squareup/timessquare/CalendarPickerView;->fullDateFormat:Ljava/text/DateFormat;

    .line 223
    sget-object p3, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->SINGLE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    iput-object p3, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    .line 225
    iget-object p3, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 226
    iget-object p3, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 229
    iget-object p3, p0, Lcom/squareup/timessquare/CalendarPickerView;->cells:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 230
    iget-object p3, p0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 231
    iget-object p3, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    invoke-virtual {p3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 232
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 233
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    invoke-static {p1}, Lcom/squareup/timessquare/CalendarPickerView;->setMidnight(Ljava/util/Calendar;)V

    .line 234
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    invoke-static {p1}, Lcom/squareup/timessquare/CalendarPickerView;->setMidnight(Ljava/util/Calendar;)V

    .line 238
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    const/16 p2, 0xc

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->add(II)V

    .line 241
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 242
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 243
    iget-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 244
    :goto_1
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-le v1, p1, :cond_1

    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    .line 245
    invoke-virtual {v1, p3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v1, p2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    .line 246
    invoke-virtual {v1, p3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    if-ge v1, v2, :cond_2

    .line 247
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 248
    new-instance v2, Lcom/squareup/timessquare/MonthDescriptor;

    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    .line 249
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    invoke-virtual {v4, p3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthNameFormat:Ljava/text/DateFormat;

    .line 250
    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/squareup/timessquare/MonthDescriptor;-><init>(IILjava/util/Date;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->cells:Ljava/util/List;

    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    invoke-virtual {p0, v2, v3}, Lcom/squareup/timessquare/CalendarPickerView;->getMonthCells(Lcom/squareup/timessquare/MonthDescriptor;Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-array v1, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v3, "Adding month %s"

    invoke-static {v3, v1}, Lcom/squareup/timessquare/Logr;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    invoke-virtual {v1, v0, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 256
    :cond_2
    iget-boolean p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->reverseOrder:Z

    if-eqz p1, :cond_3

    .line 257
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 258
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->cells:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 262
    :cond_3
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->cellLookup:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 264
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->cells:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 265
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 266
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 267
    invoke-virtual {v0}, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 268
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->cellLookup:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/squareup/timessquare/CalendarPickerView;->getDateID(Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_2

    .line 273
    :cond_7
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->validateAndUpdate()V

    .line 274
    new-instance p1, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    invoke-direct {p1, p0}, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;-><init>(Lcom/squareup/timessquare/CalendarPickerView;)V

    return-object p1

    .line 205
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Locale is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_9
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minDate and maxDate must be non-zero.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-static {p1, p2}, Lcom/squareup/timessquare/CalendarPickerView;->dbg(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 197
    :cond_a
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minDate must be before maxDate.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {p1, p2}, Lcom/squareup/timessquare/CalendarPickerView;->dbg(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 193
    :cond_b
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minDate and maxDate must be non-null.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {p1, p2}, Lcom/squareup/timessquare/CalendarPickerView;->dbg(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void

    .line 323
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must have at least one month to display.  Did you forget to call init()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reveseOrder()V
    .locals 1

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->reverseOrder:Z

    return-void
.end method

.method public selectDate(Ljava/util/Date;)Z
    .locals 5

    if-eqz p1, :cond_7

    .line 370
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 373
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 378
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 382
    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->getMonthCellWithIndexByDate(Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 383
    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->isDateSelectable(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 386
    :cond_2
    iget-object v1, v0, Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;->cell:Lcom/squareup/timessquare/MonthCellDescriptor;

    invoke-direct {p0, p1, v1}, Lcom/squareup/timessquare/CalendarPickerView;->doSelectDate(Ljava/util/Date;Lcom/squareup/timessquare/MonthCellDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 389
    iget v0, v0, Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;->monthIndex:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_3
    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1

    .line 379
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectedDate must be between minDate and maxDate.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    .line 380
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected date must be non-zero.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected date must be non-null.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCheckOnDate(Ljava/util/Date;Ljava/lang/String;Z)Z
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->cellLookup:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->getDateID(Ljava/util/Date;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/timessquare/MonthCellDescriptor;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    .line 413
    :cond_1
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Lcom/squareup/timessquare/MonthCellDescriptor;->setText(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1, v0}, Lcom/squareup/timessquare/MonthCellDescriptor;->showDot(Z)V

    .line 415
    invoke-virtual {p1, p3}, Lcom/squareup/timessquare/MonthCellDescriptor;->showCheck(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public setDateSelectableFilter(Lcom/squareup/timessquare/CalendarPickerView$DateSelectableFilter;)V
    .locals 0

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->firstDayOfWeek:I

    return-void
.end method

.method public setOnDateSelectedListener(Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->dateListener:Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

    return-void
.end method

.method public setOnInvalidDateSelectedListener(Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->invalidDateListener:Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;

    return-void
.end method

.method public setSelectionMode(Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    .line 339
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->adapter:Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTextOnDate(Ljava/util/Date;Ljava/lang/String;Z)Z
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->cellLookup:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->getDateID(Ljava/util/Date;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/timessquare/MonthCellDescriptor;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 400
    :cond_0
    invoke-virtual {p1, p2}, Lcom/squareup/timessquare/MonthCellDescriptor;->setText(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p1, p3}, Lcom/squareup/timessquare/MonthCellDescriptor;->showDot(Z)V

    .line 402
    invoke-virtual {p1, v0}, Lcom/squareup/timessquare/MonthCellDescriptor;->showCheck(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateText()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->adapter:Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
