.class public Lnet/simonvt/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/widget/TimePicker$OnTimeChangedListener;,
        Lnet/simonvt/widget/TimePicker$SavedState;
    }
.end annotation


# static fields
.field private static final NO_OP_CHANGE_LISTENER:Lnet/simonvt/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lnet/simonvt/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDivider:Landroid/widget/TextView;

.field private final mHourSpinner:Lnet/simonvt/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lnet/simonvt/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mOnTimeChangedListener:Lnet/simonvt/widget/TimePicker$OnTimeChangedListener;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lnet/simonvt/widget/TimePicker$1;

    invoke-direct {v0}, Lnet/simonvt/widget/TimePicker$1;-><init>()V

    sput-object v0, Lnet/simonvt/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lnet/simonvt/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 129
    sget v0, Lnet/simonvt/timepicker/R$attr;->timePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 100
    iput-boolean p2, p0, Lnet/simonvt/widget/TimePicker;->mIsEnabled:Z

    .line 134
    iput-object p1, p0, Lnet/simonvt/widget/TimePicker;->mContext:Landroid/content/Context;

    .line 137
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-direct {p0, p3}, Lnet/simonvt/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 144
    sget p3, Lnet/simonvt/timepicker/R$layout;->time_picker_holo:I

    .line 147
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 149
    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 152
    sget p1, Lnet/simonvt/timepicker/R$id;->hour:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/simonvt/widget/NumberPicker;

    iput-object p1, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinner:Lnet/simonvt/widget/NumberPicker;

    .line 153
    new-instance p3, Lnet/simonvt/widget/TimePicker$2;

    invoke-direct {p3, p0}, Lnet/simonvt/widget/TimePicker$2;-><init>(Lnet/simonvt/widget/TimePicker;)V

    invoke-virtual {p1, p3}, Lnet/simonvt/widget/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/widget/NumberPicker$OnValueChangeListener;)V

    .line 166
    sget p3, Lnet/simonvt/timepicker/R$id;->np_numberpicker_input:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 v0, 0x5

    .line 167
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 170
    sget p1, Lnet/simonvt/timepicker/R$id;->divider:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/simonvt/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 172
    sget v1, Lnet/simonvt/timepicker/R$string;->time_picker_separator:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    :cond_0
    sget p1, Lnet/simonvt/timepicker/R$id;->minute:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/simonvt/widget/NumberPicker;

    iput-object p1, p0, Lnet/simonvt/widget/TimePicker;->mMinuteSpinner:Lnet/simonvt/widget/NumberPicker;

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p1, v1}, Lnet/simonvt/widget/NumberPicker;->setMinValue(I)V

    const/16 v2, 0x3b

    .line 178
    invoke-virtual {p1, v2}, Lnet/simonvt/widget/NumberPicker;->setMaxValue(I)V

    const-wide/16 v2, 0x64

    .line 179
    invoke-virtual {p1, v2, v3}, Lnet/simonvt/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 180
    sget-object v2, Lnet/simonvt/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lnet/simonvt/widget/NumberPicker$Formatter;

    invoke-virtual {p1, v2}, Lnet/simonvt/widget/NumberPicker;->setFormatter(Lnet/simonvt/widget/NumberPicker$Formatter;)V

    .line 181
    new-instance v2, Lnet/simonvt/widget/TimePicker$3;

    invoke-direct {v2, p0}, Lnet/simonvt/widget/TimePicker$3;-><init>(Lnet/simonvt/widget/TimePicker;)V

    invoke-virtual {p1, v2}, Lnet/simonvt/widget/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/widget/NumberPicker$OnValueChangeListener;)V

    .line 204
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lnet/simonvt/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 205
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 208
    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/simonvt/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 211
    sget v0, Lnet/simonvt/timepicker/R$id;->amPm:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 212
    instance-of v2, v0, Landroid/widget/Button;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 213
    iput-object v3, p0, Lnet/simonvt/widget/TimePicker;->mAmPmSpinner:Lnet/simonvt/widget/NumberPicker;

    .line 214
    iput-object v3, p0, Lnet/simonvt/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 215
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/simonvt/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 216
    new-instance p1, Lnet/simonvt/widget/TimePicker$4;

    invoke-direct {p1, p0}, Lnet/simonvt/widget/TimePicker$4;-><init>(Lnet/simonvt/widget/TimePicker;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 225
    :cond_1
    iput-object v3, p0, Lnet/simonvt/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 226
    check-cast v0, Lnet/simonvt/widget/NumberPicker;

    iput-object v0, p0, Lnet/simonvt/widget/TimePicker;->mAmPmSpinner:Lnet/simonvt/widget/NumberPicker;

    .line 227
    invoke-virtual {v0, v1}, Lnet/simonvt/widget/NumberPicker;->setMinValue(I)V

    .line 228
    invoke-virtual {v0, p2}, Lnet/simonvt/widget/NumberPicker;->setMaxValue(I)V

    .line 229
    invoke-virtual {v0, p1}, Lnet/simonvt/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 230
    new-instance p1, Lnet/simonvt/widget/TimePicker$5;

    invoke-direct {p1, p0}, Lnet/simonvt/widget/TimePicker$5;-><init>(Lnet/simonvt/widget/TimePicker;)V

    invoke-virtual {v0, p1}, Lnet/simonvt/widget/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/widget/NumberPicker$OnValueChangeListener;)V

    .line 239
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lnet/simonvt/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 p2, 0x6

    .line 240
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 244
    :goto_0
    invoke-direct {p0}, Lnet/simonvt/widget/TimePicker;->updateHourControl()V

    .line 245
    invoke-direct {p0}, Lnet/simonvt/widget/TimePicker;->updateAmPmControl()V

    .line 247
    sget-object p1, Lnet/simonvt/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lnet/simonvt/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, p1}, Lnet/simonvt/widget/TimePicker;->setOnTimeChangedListener(Lnet/simonvt/widget/TimePicker$OnTimeChangedListener;)V

    .line 250
    iget-object p1, p0, Lnet/simonvt/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/simonvt/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 251
    iget-object p1, p0, Lnet/simonvt/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/simonvt/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 253
    invoke-virtual {p0}, Lnet/simonvt/widget/TimePicker;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 254
    invoke-virtual {p0, v1}, Lnet/simonvt/widget/TimePicker;->setEnabled(Z)V

    .line 258
    :cond_2
    invoke-direct {p0}, Lnet/simonvt/widget/TimePicker;->setContentDescriptions()V

    return-void
.end method

.method static synthetic access$000(Lnet/simonvt/widget/TimePicker;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lnet/simonvt/widget/TimePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lnet/simonvt/widget/TimePicker;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lnet/simonvt/widget/TimePicker;->mIsAm:Z

    return p0
.end method

.method static synthetic access$102(Lnet/simonvt/widget/TimePicker;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lnet/simonvt/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lnet/simonvt/widget/TimePicker;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lnet/simonvt/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Lnet/simonvt/widget/TimePicker;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lnet/simonvt/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 3

    const/4 v0, 0x4

    .line 524
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 525
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mOnTimeChangedListener:Lnet/simonvt/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lnet/simonvt/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lnet/simonvt/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lnet/simonvt/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lnet/simonvt/widget/TimePicker;II)V

    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    .line 532
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mContext:Landroid/content/Context;

    sget v1, Lnet/simonvt/timepicker/R$string;->time_picker_increment_minute_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mMinuteSpinner:Lnet/simonvt/widget/NumberPicker;

    sget v2, Lnet/simonvt/timepicker/R$id;->np_increment:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mContext:Landroid/content/Context;

    sget v1, Lnet/simonvt/timepicker/R$string;->time_picker_decrement_minute_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mMinuteSpinner:Lnet/simonvt/widget/NumberPicker;

    sget v3, Lnet/simonvt/timepicker/R$id;->np_decrement:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mContext:Landroid/content/Context;

    sget v1, Lnet/simonvt/timepicker/R$string;->time_picker_increment_hour_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinner:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mContext:Landroid/content/Context;

    sget v1, Lnet/simonvt/timepicker/R$string;->time_picker_decrement_hour_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 540
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinner:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mAmPmSpinner:Lnet/simonvt/widget/NumberPicker;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mContext:Landroid/content/Context;

    sget v1, Lnet/simonvt/timepicker/R$string;->time_picker_increment_set_pm_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mAmPmSpinner:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mContext:Landroid/content/Context;

    sget v1, Lnet/simonvt/timepicker/R$string;->time_picker_decrement_set_am_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mAmPmSpinner:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 300
    :cond_0
    iput-object p1, p0, Lnet/simonvt/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 301
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lnet/simonvt/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .line 504
    invoke-virtual {p0}, Lnet/simonvt/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mAmPmSpinner:Lnet/simonvt/widget/NumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 511
    :cond_1
    iget-boolean v0, p0, Lnet/simonvt/widget/TimePicker;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    .line 512
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mAmPmSpinner:Lnet/simonvt/widget/NumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 513
    invoke-virtual {v1, v0}, Lnet/simonvt/widget/NumberPicker;->setValue(I)V

    .line 514
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mAmPmSpinner:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 516
    :cond_2
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lnet/simonvt/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x4

    .line 520
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private updateHourControl()V
    .locals 2

    .line 492
    invoke-virtual {p0}, Lnet/simonvt/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinner:Lnet/simonvt/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/simonvt/widget/NumberPicker;->setMinValue(I)V

    .line 494
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinner:Lnet/simonvt/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lnet/simonvt/widget/NumberPicker;->setMaxValue(I)V

    .line 495
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinner:Lnet/simonvt/widget/NumberPicker;

    sget-object v1, Lnet/simonvt/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lnet/simonvt/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lnet/simonvt/widget/NumberPicker;->setFormatter(Lnet/simonvt/widget/NumberPicker$Formatter;)V

    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinner:Lnet/simonvt/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/simonvt/widget/NumberPicker;->setMinValue(I)V

    .line 498
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinner:Lnet/simonvt/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lnet/simonvt/widget/NumberPicker;->setMaxValue(I)V

    .line 499
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinner:Lnet/simonvt/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/simonvt/widget/NumberPicker;->setFormatter(Lnet/simonvt/widget/NumberPicker$Formatter;)V

    return-void
.end method

.method private updateInputState()V
    .locals 3

    .line 557
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    .line 558
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 560
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 562
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    .line 563
    :cond_0
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 565
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    .line 566
    :cond_1
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 567
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 568
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 467
    invoke-virtual {p0, p1}, Lnet/simonvt/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getBaseline()I
    .locals 1

    .line 461
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinner:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .line 379
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinner:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/widget/NumberPicker;->getValue()I

    move-result v0

    .line 380
    invoke-virtual {p0}, Lnet/simonvt/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 382
    :cond_0
    iget-boolean v1, p0, Lnet/simonvt/widget/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 383
    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 385
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .line 445
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mMinuteSpinner:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Lnet/simonvt/widget/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lnet/simonvt/widget/TimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 287
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 288
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lnet/simonvt/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 476
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 479
    iget-boolean v0, p0, Lnet/simonvt/widget/TimePicker;->mIs24HourView:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    .line 484
    :goto_0
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lnet/simonvt/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 485
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lnet/simonvt/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 486
    iget-object v1, p0, Lnet/simonvt/widget/TimePicker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/simonvt/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    .line 487
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 486
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 360
    check-cast p1, Lnet/simonvt/widget/TimePicker$SavedState;

    .line 361
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 362
    invoke-virtual {p1}, Lnet/simonvt/widget/TimePicker$SavedState;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/simonvt/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 363
    invoke-virtual {p1}, Lnet/simonvt/widget/TimePicker$SavedState;->getMinute()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/simonvt/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 354
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 355
    new-instance v1, Lnet/simonvt/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Lnet/simonvt/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lnet/simonvt/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lnet/simonvt/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILnet/simonvt/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 394
    invoke-virtual {p0}, Lnet/simonvt/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 397
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 399
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lnet/simonvt/widget/TimePicker;->mIsAm:Z

    .line 401
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 402
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 405
    iput-boolean v0, p0, Lnet/simonvt/widget/TimePicker;->mIsAm:Z

    .line 406
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 407
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 410
    :cond_2
    :goto_0
    invoke-direct {p0}, Lnet/simonvt/widget/TimePicker;->updateAmPmControl()V

    .line 412
    :cond_3
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinner:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/simonvt/widget/NumberPicker;->setValue(I)V

    .line 413
    invoke-direct {p0}, Lnet/simonvt/widget/TimePicker;->onTimeChanged()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1

    .line 452
    invoke-virtual {p0}, Lnet/simonvt/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mMinuteSpinner:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/simonvt/widget/NumberPicker;->setValue(I)V

    .line 456
    invoke-direct {p0}, Lnet/simonvt/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 263
    iget-boolean v0, p0, Lnet/simonvt/widget/TimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 267
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mMinuteSpinner:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lnet/simonvt/widget/NumberPicker;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 271
    :cond_1
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mHourSpinner:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lnet/simonvt/widget/NumberPicker;->setEnabled(Z)V

    .line 272
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mAmPmSpinner:Lnet/simonvt/widget/NumberPicker;

    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {v0, p1}, Lnet/simonvt/widget/NumberPicker;->setEnabled(Z)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lnet/simonvt/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 277
    :goto_0
    iput-boolean p1, p0, Lnet/simonvt/widget/TimePicker;->mIsEnabled:Z

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2

    .line 422
    iget-boolean v0, p0, Lnet/simonvt/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 425
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnet/simonvt/widget/TimePicker;->mIs24HourView:Z

    .line 427
    invoke-virtual {p0}, Lnet/simonvt/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 428
    invoke-direct {p0}, Lnet/simonvt/widget/TimePicker;->updateHourControl()V

    .line 430
    invoke-virtual {p0, p1}, Lnet/simonvt/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 431
    invoke-direct {p0}, Lnet/simonvt/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method public setOnTimeChangedListener(Lnet/simonvt/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lnet/simonvt/widget/TimePicker;->mOnTimeChangedListener:Lnet/simonvt/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method
