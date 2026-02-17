.class public Lcom/fourmob/datetimepicker/date/SimpleMonthView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;
    }
.end annotation


# static fields
.field protected static DAY_SELECTED_CIRCLE_SIZE:I = 0x0

.field protected static DAY_SEPARATOR_WIDTH:I = 0x1

.field protected static DEFAULT_HEIGHT:I = 0x20

.field protected static MINI_DAY_NUMBER_TEXT_SIZE:I = 0x0

.field protected static MIN_HEIGHT:I = 0xa

.field protected static MONTH_DAY_LABEL_TEXT_SIZE:I

.field protected static MONTH_HEADER_SIZE:I

.field protected static MONTH_LABEL_TEXT_SIZE:I


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private mDateFormatSymbols:Ljava/text/DateFormatSymbols;

.field private final mDayLabelCalendar:Ljava/util/Calendar;

.field private mDayOfWeekStart:I

.field private mDayOfWeekTypeface:Ljava/lang/String;

.field protected mDayTextColor:I

.field protected mFirstJulianDay:I

.field protected mFirstMonth:I

.field private final mFormatter:Ljava/util/Formatter;

.field protected mHasToday:Z

.field protected mLastMonth:I

.field protected mMonth:I

.field protected mMonthDayLabelPaint:Landroid/graphics/Paint;

.field protected mMonthNumPaint:Landroid/graphics/Paint;

.field protected mMonthTitleBGColor:I

.field protected mMonthTitleBGPaint:Landroid/graphics/Paint;

.field protected mMonthTitleColor:I

.field protected mMonthTitlePaint:Landroid/graphics/Paint;

.field private mMonthTitleTypeface:Ljava/lang/String;

.field protected mNumCells:I

.field protected mNumDays:I

.field private mNumRows:I

.field private mOnDayClickListener:Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;

.field protected mPadding:I

.field protected mRowHeight:I

.field protected mSelectedCirclePaint:Landroid/graphics/Paint;

.field protected mSelectedDay:I

.field protected mSelectedLeft:I

.field protected mSelectedRight:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field protected mToday:I

.field protected mTodayNumberColor:I

.field protected mWeekStart:I

.field protected mWidth:I

.field protected mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 94
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    const/4 v1, -0x1

    .line 67
    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mFirstJulianDay:I

    .line 68
    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mFirstMonth:I

    .line 69
    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mLastMonth:I

    .line 70
    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mHasToday:Z

    .line 71
    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedDay:I

    .line 72
    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mToday:I

    const/4 v2, 0x1

    .line 73
    iput v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWeekStart:I

    const/4 v3, 0x7

    .line 74
    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    .line 75
    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumCells:I

    .line 76
    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedLeft:I

    .line 77
    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedRight:I

    .line 78
    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayOfWeekStart:I

    .line 80
    sget v0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->DEFAULT_HEIGHT:I

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    const/4 v0, 0x6

    .line 87
    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumRows:I

    .line 89
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDateFormatSymbols:Ljava/text/DateFormatSymbols;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 99
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 101
    sget v4, Lcom/fourmob/datetimepicker/R$attr;->colorPrimary:I

    invoke-virtual {p1, v4, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 102
    iget p1, v3, Landroid/util/TypedValue;->data:I

    .line 104
    sget v2, Lcom/fourmob/datetimepicker/R$string;->day_of_week_label_typeface:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayOfWeekTypeface:Ljava/lang/String;

    .line 105
    sget v2, Lcom/fourmob/datetimepicker/R$string;->sans_serif:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleTypeface:Ljava/lang/String;

    .line 106
    sget v2, Lcom/fourmob/datetimepicker/R$color;->date_picker_text_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayTextColor:I

    .line 107
    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mTodayNumberColor:I

    .line 108
    sget p1, Lcom/fourmob/datetimepicker/R$color;->white:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleColor:I

    .line 109
    sget p1, Lcom/fourmob/datetimepicker/R$color;->circle_background:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleBGColor:I

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 112
    new-instance v2, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mFormatter:Ljava/util/Formatter;

    .line 114
    sget p1, Lcom/fourmob/datetimepicker/R$dimen;->day_number_size:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    .line 115
    sget p1, Lcom/fourmob/datetimepicker/R$dimen;->month_label_size:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_LABEL_TEXT_SIZE:I

    .line 116
    sget p1, Lcom/fourmob/datetimepicker/R$dimen;->month_day_label_text_size:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    .line 117
    sget p1, Lcom/fourmob/datetimepicker/R$dimen;->month_list_item_header_height:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sput p1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_HEADER_SIZE:I

    .line 118
    sget p1, Lcom/fourmob/datetimepicker/R$dimen;->day_number_select_circle_radius:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    .line 120
    sget p1, Lcom/fourmob/datetimepicker/R$dimen;->date_picker_view_animator_height:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sget v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_HEADER_SIZE:I

    sub-int/2addr p1, v1

    div-int/2addr p1, v0

    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    .line 122
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->initView()V

    return-void
.end method

.method private calculateNumRows()I
    .locals 4

    .line 126
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 127
    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumCells:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    div-int/2addr v2, v3

    add-int/2addr v0, v1

    .line 128
    rem-int/2addr v0, v3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v2, v0

    return v2
.end method

.method private drawMonthDayLabels(Landroid/graphics/Canvas;)V
    .locals 7

    .line 133
    sget v0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_HEADER_SIZE:I

    sget v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 134
    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWidth:I

    iget v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    const/4 v2, 0x0

    .line 136
    :goto_0
    iget v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    if-ge v2, v3, :cond_0

    .line 137
    iget v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWeekStart:I

    add-int/2addr v4, v2

    rem-int/2addr v4, v3

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v1

    .line 138
    iget v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    add-int/2addr v3, v5

    .line 139
    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 140
    iget-object v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDateFormatSymbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    .line 141
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    int-to-float v3, v3

    int-to-float v5, v0

    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    .line 140
    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawMonthTitle(Landroid/graphics/Canvas;)V
    .locals 4

    .line 146
    iget v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWidth:I

    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 147
    sget v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_HEADER_SIZE:I

    sget v2, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_LABEL_TEXT_SIZE:I

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    .line 148
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->getMonthAndYearString()Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private findDayOffset()I
    .locals 3

    .line 152
    iget v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWeekStart:I

    if-ge v0, v1, :cond_0

    iget v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    add-int/2addr v0, v2

    :cond_0
    sub-int/2addr v0, v1

    return v0
.end method

.method private getMonthAndYearString()Ljava/lang/String;
    .locals 7

    .line 158
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 159
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v6, 0x34

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onDayClick(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mOnDayClickListener:Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;->onDayClick(Lcom/fourmob/datetimepicker/date/SimpleMonthView;Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    :cond_0
    return-void
.end method

.method private sameDay(ILandroid/text/format/Time;)Z
    .locals 2

    .line 170
    iget v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mYear:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonth:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_0

    iget p2, p2, Landroid/text/format/Time;->monthDay:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected drawMonthNums(Landroid/graphics/Canvas;)V
    .locals 10

    .line 174
    iget v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    sget v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->DAY_SEPARATOR_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_HEADER_SIZE:I

    add-int/2addr v0, v1

    .line 175
    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWidth:I

    iget v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    .line 176
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->findDayOffset()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 179
    :goto_0
    iget v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumCells:I

    if-gt v4, v5, :cond_3

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    mul-int v5, v5, v1

    .line 180
    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    add-int/2addr v5, v6

    .line 181
    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedDay:I

    if-ne v6, v4, :cond_0

    int-to-float v6, v5

    .line 182
    sget v7, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    div-int/lit8 v7, v7, 0x3

    sub-int v7, v0, v7

    int-to-float v7, v7

    sget v8, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 184
    :cond_0
    iget-boolean v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mHasToday:Z

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mToday:I

    if-ne v6, v4, :cond_1

    .line 185
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mTodayNumberColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 187
    :cond_1
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayTextColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const-string v6, "%d"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    int-to-float v5, v5

    int-to-float v7, v0

    iget-object v9, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v5, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    .line 193
    iget v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    if-ne v2, v5, :cond_2

    .line 195
    iget v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getDayFromLocation(FF)Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;
    .locals 4

    .line 202
    iget v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    int-to-float v1, v0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_1

    .line 203
    iget v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWidth:I

    sub-int v3, v2, v0

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    sget v3, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_HEADER_SIZE:I

    int-to-float v3, v3

    sub-float/2addr p2, v3

    float-to-int p2, p2

    iget v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    div-int/2addr p2, v3

    sub-float/2addr p1, v1

    .line 208
    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->findDayOffset()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    mul-int p2, p2, v0

    add-int/2addr p1, p2

    .line 210
    new-instance p2, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    iget v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mYear:I

    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonth:I

    invoke-direct {p2, v0, v1, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;-><init>(III)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected initView()V
    .locals 6

    .line 214
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 215
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 216
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 217
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget v2, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_LABEL_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 218
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleTypeface:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 219
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 221
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 223
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    .line 224
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 225
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 226
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleBGColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 228
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    .line 231
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 232
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 233
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mTodayNumberColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 235
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 238
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    .line 239
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget v4, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 241
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayTextColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayOfWeekTypeface:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 243
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 244
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 245
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 247
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    .line 248
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 249
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 250
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 252
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->drawMonthTitle(Landroid/graphics/Canvas;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->drawMonthDayLabels(Landroid/graphics/Canvas;)V

    .line 258
    invoke-virtual {p0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->drawMonthNums(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 262
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    iget v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumRows:I

    mul-int p2, p2, v0

    sget v0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_HEADER_SIZE:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWidth:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->getDayFromLocation(FF)Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->onDayClick(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    :cond_0
    return v1
.end method

.method public reuse()V
    .locals 1

    const/4 v0, 0x6

    .line 280
    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumRows:I

    .line 281
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setMonthParams(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 285
    const-string v0, "month"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "year"

    if-nez v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "You must specify month and year for this view"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 290
    const-string v1, "height"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 291
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    .line 292
    sget v3, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MIN_HEIGHT:I

    if-ge v1, v3, :cond_2

    .line 293
    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    .line 296
    :cond_2
    const-string v1, "selected_day"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 297
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedDay:I

    .line 300
    :cond_3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonth:I

    .line 301
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mYear:I

    .line 303
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    const/4 v1, 0x0

    .line 305
    iput-boolean v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mHasToday:Z

    const/4 v2, -0x1

    .line 306
    iput v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mToday:I

    .line 308
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    iget v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonth:I

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 309
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mYear:I

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 310
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 311
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayOfWeekStart:I

    .line 313
    const-string v2, "week_start"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 314
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWeekStart:I

    goto :goto_1

    .line 316
    :cond_4
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWeekStart:I

    .line 319
    :goto_1
    iget p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonth:I

    iget v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mYear:I

    invoke-static {p1, v2}, Lcom/fourmob/datetimepicker/Utils;->getDaysInMonth(II)I

    move-result p1

    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumCells:I

    .line 320
    :cond_5
    :goto_2
    iget p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumCells:I

    if-ge v1, p1, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 322
    invoke-direct {p0, v1, v0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->sameDay(ILandroid/text/format/Time;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 323
    iput-boolean v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mHasToday:Z

    .line 324
    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mToday:I

    goto :goto_2

    .line 328
    :cond_6
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->calculateNumRows()I

    move-result p1

    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumRows:I

    return-void
.end method

.method public setOnDayClickListener(Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mOnDayClickListener:Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;

    return-void
.end method
