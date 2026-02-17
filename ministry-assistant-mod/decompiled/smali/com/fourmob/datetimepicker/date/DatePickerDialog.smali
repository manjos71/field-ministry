.class public Lcom/fourmob/datetimepicker/date/DatePickerDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fourmob/datetimepicker/date/DatePickerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;,
        Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static DAY_FORMAT:Ljava/text/SimpleDateFormat;

.field private static YEAR_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

.field private final mCalendar:Ljava/util/Calendar;

.field private mCallBack:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

.field private mCloseOnSingleTapDay:Z

.field private mCurrentView:I

.field private mDateFormatSymbols:Ljava/text/DateFormatSymbols;

.field private mDayOfWeekView:Landroid/widget/TextView;

.field private mDayPickerDescription:Ljava/lang/String;

.field private mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

.field private mDelayAnimation:Z

.field private mIsMonthPicker:Z

.field private mListeners:Ljava/util/HashSet;

.field private mMagazinePickerView:Lcom/fourmob/datetimepicker/date/MagazinePickerView;

.field private mMaxYear:I

.field private mMinYear:I

.field private mMonthAndDayView:Landroid/widget/LinearLayout;

.field private mMonthPickerView:Lcom/fourmob/datetimepicker/date/MonthPickerView;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private mSelectedDayTextView:Landroid/widget/TextView;

.field private mSelectedMonthTextView:Landroid/widget/TextView;

.field private mWeekStart:I

.field private mYearPickerDescription:Ljava/lang/String;

.field private mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

.field private mYearView:Landroid/widget/TextView;

.field private mbMagazinePicker:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDateFormatSymbols:Ljava/text/DateFormatSymbols;

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 60
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    const/4 v1, -0x1

    .line 66
    iput v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    .line 68
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    const/16 v0, 0x7f5

    .line 69
    iput v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMaxYear:I

    const/16 v0, 0x76e

    .line 70
    iput v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMinYear:I

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mIsMonthPicker:Z

    .line 78
    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mbMagazinePicker:Z

    return-void
.end method

.method static synthetic access$000(Lcom/fourmob/datetimepicker/date/DatePickerDialog;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->onDoneButtonClick()V

    return-void
.end method

.method private adjustDayInMonthIfNeeded(II)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 96
    invoke-static {p1, p2}, Lcom/fourmob/datetimepicker/Utils;->getDaysInMonth(II)I

    move-result p1

    if-le v0, p1, :cond_0

    .line 98
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p2, v1, p1}, Ljava/util/Calendar;->set(II)V

    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZZ)Lcom/fourmob/datetimepicker/date/DatePickerDialog;
    .locals 1

    .line 107
    new-instance v0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    invoke-direct {v0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;-><init>()V

    if-nez p4, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    .line 108
    :goto_1
    iput-boolean p4, v0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mIsMonthPicker:Z

    .line 109
    iput-boolean p5, v0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mbMagazinePicker:Z

    .line 110
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->initialize(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;III)V

    return-object v0
.end method

.method private onDoneButtonClick()V
    .locals 5

    .line 355
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->tryVibrate()V

    .line 356
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCallBack:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 357
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/fourmob/datetimepicker/date/DatePickerDialog;III)V

    .line 359
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private setAutocloseIfNeeded()V
    .locals 2

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 248
    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setCloseOnSingleTapDay(Z)V

    :cond_0
    return-void
.end method

.method private setCurrentView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, v0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setCurrentView(IZ)V

    return-void
.end method

.method private setCurrentView(IZ)V
    .locals 10

    .line 124
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 125
    const-string v2, ": "

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_4

    if-eq p1, v5, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v7, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    const v8, 0x3f59999a    # 0.85f

    const v9, 0x3f8ccccd    # 1.1f

    invoke-static {v7, v8, v9}, Lcom/fourmob/datetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v7

    .line 147
    iget-boolean v8, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    if-eqz v8, :cond_1

    .line 148
    invoke-virtual {v7, v3, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->setStartDelay(J)V

    .line 149
    iput-boolean v6, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    .line 151
    :cond_1
    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {v3}, Lcom/fourmob/datetimepicker/date/YearPickerView;->onDateChanged()V

    .line 152
    iget v3, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-ne v3, p1, :cond_2

    if-eqz p2, :cond_3

    .line 153
    :cond_2
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v6}, Landroid/view/View;->setSelected(Z)V

    .line 154
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 155
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {p2, v5}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 156
    iput p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    .line 158
    :cond_3
    invoke-virtual {v7}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 159
    sget-object p1, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 160
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectYear:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    .line 127
    :cond_4
    iget-object v7, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    const v8, 0x3f666666    # 0.9f

    const v9, 0x3f866666    # 1.05f

    invoke-static {v7, v8, v9}, Lcom/fourmob/datetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v7

    .line 128
    iget-boolean v8, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    if-eqz v8, :cond_5

    .line 129
    invoke-virtual {v7, v3, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->setStartDelay(J)V

    .line 130
    iput-boolean v6, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    .line 132
    :cond_5
    iget-boolean v3, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mIsMonthPicker:Z

    if-nez v3, :cond_6

    .line 133
    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v3}, Lcom/fourmob/datetimepicker/date/DayPickerView;->onDateChanged()V

    .line 134
    :cond_6
    iget v3, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-ne v3, p1, :cond_7

    if-eqz p2, :cond_8

    .line 135
    :cond_7
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 136
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 137
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {p2, v6}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 138
    iput p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    .line 140
    :cond_8
    invoke-virtual {v7}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 p2, 0x10

    invoke-static {p1, v0, v1, p2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectDay:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDisplay(Z)V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 176
    iget-boolean v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mIsMonthPicker:Z

    if-nez v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    iget v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 178
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDateFormatSymbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectedMonthTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDateFormatSymbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectedDayTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 186
    sget-object v1, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    sget-object v1, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 191
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v2, v0, v1}, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    const/16 v2, 0x18

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 194
    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_3

    const/16 p1, 0x14

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    .line 199
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    invoke-static {v0, p1}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private updatePickers()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 205
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;

    invoke-interface {v1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;->onDateChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getFirstDayOfWeek()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    return v0
.end method

.method public getMaxYear()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMaxYear:I

    return v0
.end method

.method public getMinYear()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMinYear:I

    return v0
.end method

.method public getSelectedDay()Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;
    .locals 2

    .line 223
    new-instance v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public initialize(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;III)V
    .locals 1

    const/16 v0, 0x7f5

    if-gt p2, v0, :cond_1

    const/16 v0, 0x76e

    if-lt p2, v0, :cond_0

    .line 231
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCallBack:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    .line 232
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 233
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 234
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    return-void

    .line 230
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "year end must > 1902"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "year end must < 2037"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->tryVibrate()V

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/fourmob/datetimepicker/R$id;->date_picker_year:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    .line 241
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    return-void

    .line 242
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/fourmob/datetimepicker/R$id;->date_picker_month_and_day:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 243
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 253
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 255
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setAutocloseIfNeeded()V

    .line 256
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    if-eqz p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const-string v1, "year"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 260
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const-string v1, "month"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 261
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const-string v1, "day"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 267
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 269
    iget-boolean p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mIsMonthPicker:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 270
    sget p2, Lcom/fourmob/datetimepicker/R$layout;->month_picker_dialog:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 272
    :cond_0
    sget p2, Lcom/fourmob/datetimepicker/R$layout;->date_picker_dialog:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 274
    :goto_0
    sget p2, Lcom/fourmob/datetimepicker/R$id;->date_picker_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    .line 275
    sget p2, Lcom/fourmob/datetimepicker/R$id;->date_picker_month_and_day:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    .line 276
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    sget p2, Lcom/fourmob/datetimepicker/R$id;->date_picker_month:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectedMonthTextView:Landroid/widget/TextView;

    .line 278
    sget p2, Lcom/fourmob/datetimepicker/R$id;->date_picker_day:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectedDayTextView:Landroid/widget/TextView;

    .line 279
    sget p2, Lcom/fourmob/datetimepicker/R$id;->date_picker_year:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    .line 280
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, -0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 286
    const-string v2, "week_start"

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    .line 287
    const-string v2, "year_start"

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMinYear:I

    .line 288
    const-string v2, "year_end"

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMaxYear:I

    .line 289
    const-string v2, "current_view"

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 290
    const-string v3, "list_position"

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 291
    const-string v4, "list_position_offset"

    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 292
    const-string v5, "is_month_picker"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mIsMonthPicker:Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 295
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 296
    new-instance v5, Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-direct {v5, p3, p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;-><init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V

    iput-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    .line 297
    new-instance v5, Lcom/fourmob/datetimepicker/date/MonthPickerView;

    invoke-direct {v5, p3, p0}, Lcom/fourmob/datetimepicker/date/MonthPickerView;-><init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V

    iput-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMonthPickerView:Lcom/fourmob/datetimepicker/date/MonthPickerView;

    .line 298
    new-instance v5, Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-direct {v5, p3, p0}, Lcom/fourmob/datetimepicker/date/YearPickerView;-><init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V

    iput-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    .line 299
    new-instance v5, Lcom/fourmob/datetimepicker/date/MagazinePickerView;

    invoke-direct {v5, p3, p0}, Lcom/fourmob/datetimepicker/date/MagazinePickerView;-><init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V

    iput-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMagazinePickerView:Lcom/fourmob/datetimepicker/date/MagazinePickerView;

    .line 301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 302
    sget v5, Lcom/fourmob/datetimepicker/R$string;->day_picker_description:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerDescription:Ljava/lang/String;

    .line 303
    sget v5, Lcom/fourmob/datetimepicker/R$string;->select_day:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectDay:Ljava/lang/String;

    .line 304
    sget v5, Lcom/fourmob/datetimepicker/R$string;->year_picker_description:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerDescription:Ljava/lang/String;

    .line 305
    sget v5, Lcom/fourmob/datetimepicker/R$string;->select_year:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectYear:Ljava/lang/String;

    .line 307
    sget p3, Lcom/fourmob/datetimepicker/R$id;->animator:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    iput-object p3, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    .line 308
    iget-boolean v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mbMagazinePicker:Z

    if-eqz v5, :cond_2

    .line 309
    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMagazinePickerView:Lcom/fourmob/datetimepicker/date/MagazinePickerView;

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 310
    :cond_2
    iget-boolean v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mIsMonthPicker:Z

    if-eqz v5, :cond_3

    .line 311
    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMonthPickerView:Lcom/fourmob/datetimepicker/date/MonthPickerView;

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 313
    :cond_3
    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 314
    :goto_2
    iget-object p3, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 315
    iget-object p3, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p3, v5, v6}, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    .line 317
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p3, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v7, 0x12c

    .line 318
    invoke-virtual {p3, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 319
    iget-object v9, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v9, p3}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 321
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p3, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 322
    invoke-virtual {p3, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 323
    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v5, p3}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 325
    sget p3, Lcom/fourmob/datetimepicker/R$id;->done_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 326
    sget v5, Lcom/fourmob/datetimepicker/R$id;->cancel_button:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 327
    new-instance v6, Lcom/fourmob/datetimepicker/date/DatePickerDialog$1;

    invoke-direct {v6, p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog$1;-><init>(Lcom/fourmob/datetimepicker/date/DatePickerDialog;)V

    invoke-virtual {p3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    new-instance p3, Lcom/fourmob/datetimepicker/date/DatePickerDialog$2;

    invoke-direct {p3, p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog$2;-><init>(Lcom/fourmob/datetimepicker/date/DatePickerDialog;)V

    invoke-virtual {v5, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    invoke-direct {p0, v1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->updateDisplay(Z)V

    .line 340
    invoke-direct {p0, v2, v0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setCurrentView(IZ)V

    if-eq v3, p2, :cond_5

    if-nez v2, :cond_4

    .line 343
    iget-boolean p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mIsMonthPicker:Z

    if-nez p2, :cond_4

    .line 344
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {p2, v3}, Lcom/fourmob/datetimepicker/date/DayPickerView;->postSetSelection(I)V

    :cond_4
    if-ne v2, v0, :cond_5

    .line 347
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {p2, v3, v4}, Lcom/fourmob/datetimepicker/date/YearPickerView;->postSetSelectionFromTop(II)V

    .line 350
    :cond_5
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setAutocloseIfNeeded()V

    return-object p1
.end method

.method public onDayOfMonthSelected(III)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 364
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 365
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 366
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->updatePickers()V

    .line 367
    invoke-direct {p0, v1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->updateDisplay(Z)V

    .line 369
    iget-boolean p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCloseOnSingleTapDay:Z

    if-eqz p1, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->onDoneButtonClick()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 375
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 376
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v2, "year"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 377
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v2, "month"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 378
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v2, "day"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 379
    const-string v0, "week_start"

    iget v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 380
    const-string v0, "year_start"

    iget v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMinYear:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 381
    const-string v0, "year_end"

    iget v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMaxYear:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 382
    const-string v0, "current_view"

    iget v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 383
    const-string v0, "is_month_picker"

    iget-boolean v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mIsMonthPicker:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 386
    iget v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mIsMonthPicker:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getMostVisiblePosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 388
    :goto_0
    iget v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-ne v2, v1, :cond_1

    .line 389
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {v1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->getFirstPositionOffset()I

    move-result v1

    const-string v2, "list_position_offset"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 392
    :cond_1
    const-string v1, "list_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onYearSelected(I)V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->adjustDayInMonthIfNeeded(II)V

    .line 398
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 399
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->updatePickers()V

    const/4 p1, 0x0

    .line 400
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    .line 401
    invoke-direct {p0, v1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->updateDisplay(Z)V

    return-void
.end method

.method public registerOnDateChangedListener(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCloseOnSingleTapDay(Z)V
    .locals 0

    .line 447
    iput-boolean p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCloseOnSingleTapDay:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x7

    if-gt p1, v0, :cond_1

    .line 413
    iput p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    .line 414
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mIsMonthPicker:Z

    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->onChange()V

    :cond_0
    return-void

    .line 410
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value must be between Calendar.SUNDAY and Calendar.SATURDAY"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setYearRange(II)V
    .locals 1

    if-lt p2, p1, :cond_3

    const/16 v0, 0x7f5

    if-gt p2, v0, :cond_2

    const/16 v0, 0x76e

    if-lt p1, v0, :cond_1

    .line 430
    iput p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMinYear:I

    .line 431
    iput p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMaxYear:I

    .line 432
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mIsMonthPicker:Z

    if-nez p2, :cond_0

    .line 433
    invoke-virtual {p1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->onChange()V

    :cond_0
    return-void

    .line 429
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "min year end must > 1902"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 427
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "max year end must < 2037"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 425
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Year end must be larger than year start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tryVibrate()V
    .locals 0

    return-void
.end method
