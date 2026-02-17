.class public Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    }
.end annotation


# instance fields
.field private final TAP_TIMEOUT:I

.field private final TOUCH_SLOP:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAmPmCirclesView:Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

.field private mCircleView:Lcom/sleepbot/datetimepicker/time/CircleView;

.field private mCurrentHoursOfDay:I

.field private mCurrentItemShowing:I

.field private mCurrentMinutes:I

.field private mDoingMove:Z

.field private mDoingTouch:Z

.field private mDownDegrees:I

.field private mDownX:F

.field private mDownY:F

.field private mGrayBox:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHideAmPm:Z

.field private mHourRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

.field private mHourRadialTextsView:Lcom/sleepbot/datetimepicker/time/RadialTextsView;

.field private mInputEnabled:Z

.field private mIs24HourMode:Z

.field private mIsTouchingAmOrPm:I

.field private mLastValueSelected:I

.field private mListener:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

.field private mMinuteRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

.field private mMinuteRadialTextsView:Lcom/sleepbot/datetimepicker/time/RadialTextsView;

.field private mSnapPrefer30sMap:[I

.field private mTimeInitialized:Z

.field private mTransition:Lcom/nineoldandroids/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 83
    iput p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    .line 101
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    .line 104
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 107
    new-instance v1, Lcom/sleepbot/datetimepicker/time/CircleView;

    invoke-direct {v1, p1}, Lcom/sleepbot/datetimepicker/time/CircleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/sleepbot/datetimepicker/time/CircleView;

    .line 108
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    new-instance v1, Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    invoke-direct {v1, p1}, Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    .line 111
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    new-instance v1, Lcom/sleepbot/datetimepicker/time/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/sleepbot/datetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/sleepbot/datetimepicker/time/RadialTextsView;

    .line 114
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    new-instance v1, Lcom/sleepbot/datetimepicker/time/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/sleepbot/datetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/sleepbot/datetimepicker/time/RadialTextsView;

    .line 116
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    new-instance v1, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    .line 119
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    new-instance v1, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    .line 121
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->preparePrefer30sMap()V

    .line 127
    iput p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    const/4 v1, 0x1

    .line 129
    iput-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    .line 130
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    .line 131
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fourmob/datetimepicker/R$color;->transparent_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 134
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 139
    iput-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    return p0
.end method

.method static synthetic access$100(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;)Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    return p0
.end method

.method static synthetic access$400(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;IZZZ)I
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    return p1
.end method

.method static synthetic access$600(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;)Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    return-object p0
.end method

.method private getCurrentlyShowingValue()I
    .locals 2

    .line 270
    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 274
    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCurrentMinutes:I

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I
    .locals 2

    .line 495
    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private isHourInnerCircle(I)Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private preparePrefer30sMap()V
    .locals 7

    const/16 v0, 0x169

    .line 341
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 354
    iget-object v6, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    aput v3, v6, v1

    if-ne v5, v4, :cond_2

    add-int/lit8 v3, v3, 0x6

    const/16 v4, 0x168

    if-ne v3, v4, :cond_0

    const/4 v4, 0x7

    goto :goto_1

    .line 361
    :cond_0
    rem-int/lit8 v4, v3, 0x1e

    if-nez v4, :cond_1

    const/16 v4, 0xe

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private reselectSelector(IZZZ)I
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_1

    if-ne v0, v1, :cond_1

    .line 442
    invoke-direct {p0, p1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->snapPrefer30s(I)I

    move-result p1

    goto :goto_0

    .line 444
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->snapOnly30s(II)I

    move-result p1

    :goto_0
    if-nez v0, :cond_2

    .line 449
    iget-object p3, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    const/16 v3, 0x1e

    goto :goto_1

    .line 452
    :cond_2
    iget-object p3, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    const/4 v3, 0x6

    .line 455
    :goto_1
    invoke-virtual {p3, p1, p2, p4}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 456
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    const/16 p3, 0x168

    if-nez v0, :cond_5

    .line 460
    iget-boolean p4, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz p4, :cond_4

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    :goto_2
    const/16 v2, 0x168

    goto :goto_3

    :cond_3
    if-ne p1, p3, :cond_6

    if-nez p2, :cond_6

    goto :goto_3

    :cond_4
    if-nez p1, :cond_6

    goto :goto_2

    :cond_5
    if-ne p1, p3, :cond_6

    if-ne v0, v1, :cond_6

    goto :goto_3

    :cond_6
    move v2, p1

    .line 473
    :goto_3
    div-int p1, v2, v3

    if-nez v0, :cond_7

    .line 474
    iget-boolean p3, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz p3, :cond_7

    if-nez p2, :cond_7

    if-eqz v2, :cond_7

    add-int/lit8 p1, p1, 0xc

    :cond_7
    return p1
.end method

.method private setItem(II)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 235
    invoke-direct {p0, v0, p2}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 236
    rem-int/lit8 p1, p2, 0xc

    mul-int/lit8 p1, p1, 0x1e

    .line 237
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-direct {p0, p2}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result p2

    invoke-virtual {v1, p1, p2, v0}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 238
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 240
    invoke-direct {p0, v1, p2}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    mul-int/lit8 p2, p2, 0x6

    .line 242
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p1, p2, v0, v0}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 243
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private setValueForItem(II)V
    .locals 2

    if-nez p1, :cond_0

    .line 294
    iput p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 296
    iput p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCurrentMinutes:I

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    if-nez p2, :cond_2

    .line 299
    iget p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    rem-int/lit8 p1, p1, 0xc

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    return-void

    :cond_2
    if-ne p2, v0, :cond_3

    .line 301
    iget p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    rem-int/lit8 p1, p1, 0xc

    add-int/lit8 p1, p1, 0xc

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    :cond_3
    return-void
.end method

.method private snapOnly30s(II)I
    .locals 3

    .line 399
    div-int/lit8 v0, p1, 0x1e

    mul-int/lit8 v0, v0, 0x1e

    add-int/lit8 v1, v0, 0x1e

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    if-ne p1, v0, :cond_2

    add-int/lit8 v0, v0, -0x1e

    return v0

    :cond_1
    sub-int p2, p1, v0

    sub-int p1, v1, p1

    if-ge p2, p1, :cond_3

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private snapPrefer30s(I)I
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 384
    :cond_0
    aget p1, v0, p1

    return p1
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5

    .line 786
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 788
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 789
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 790
    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 791
    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->minute:I

    const/4 v1, 0x1

    .line 792
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 794
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 797
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 798
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 801
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public getCurrentItemShowing()I
    .locals 2

    .line 511
    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current item showing was unfortunately set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadialPickerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public getHours()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    return v0
.end method

.method public getIsCurrentlyAmOrPm()I
    .locals 2

    .line 281
    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCurrentMinutes:I

    return v0
.end method

.method public initialize(Landroid/content/Context;IIZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v1, p2

    move/from16 v8, p3

    move/from16 v4, p4

    .line 171
    iget-boolean v3, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    if-eqz v3, :cond_0

    .line 172
    const-string v1, "RadialPickerLayout"

    const-string v2, "Time has already been initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 175
    :cond_0
    iput-boolean v4, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    .line 176
    iget-object v3, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v3}, Lcom/fourmob/datetimepicker/Utils;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v3

    const/4 v9, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v3, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    :goto_0
    iput-boolean v3, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    .line 181
    iget-object v5, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/sleepbot/datetimepicker/time/CircleView;

    invoke-virtual {v5, v2, v3}, Lcom/sleepbot/datetimepicker/time/CircleView;->initialize(Landroid/content/Context;Z)V

    .line 182
    iget-object v3, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/sleepbot/datetimepicker/time/CircleView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 183
    iget-boolean v3, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/16 v6, 0xc

    if-nez v3, :cond_3

    .line 184
    iget-object v3, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    if-ge v1, v6, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v3, v2, v7}, Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;->initialize(Landroid/content/Context;I)V

    .line 185
    iget-object v3, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 189
    :cond_3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 190
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    .line 191
    new-array v7, v6, [I

    fill-array-data v7, :array_1

    .line 192
    new-array v10, v6, [I

    fill-array-data v10, :array_2

    .line 193
    new-array v12, v6, [Ljava/lang/String;

    .line 194
    new-array v13, v6, [Ljava/lang/String;

    .line 195
    new-array v14, v6, [Ljava/lang/String;

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v6, :cond_5

    .line 197
    const-string v6, "%d"

    const/16 v16, 0x0

    const-string v5, "%02d"

    if-eqz v4, :cond_4

    .line 198
    aget v17, v7, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v17, v2, v16

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    aget v2, v3, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v17, v2

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v17, v2, v16

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    aput-object v2, v12, v15

    .line 199
    aget v2, v3, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v17, v2

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v17, v2, v16

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v15

    .line 200
    aget v2, v10, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v16

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    const/16 v6, 0xc

    goto :goto_2

    :cond_5
    const/16 v16, 0x0

    .line 202
    iget-object v10, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/sleepbot/datetimepicker/time/RadialTextsView;

    if-eqz v4, :cond_6

    :goto_4
    move-object v2, v14

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    goto :goto_4

    .line 203
    :goto_5
    iget-boolean v14, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v15, 0x1

    .line 202
    invoke-virtual/range {v10 .. v15}, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->initialize(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 204
    iget-object v3, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/sleepbot/datetimepicker/time/RadialTextsView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 205
    iget-object v10, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/sleepbot/datetimepicker/time/RadialTextsView;

    iget-boolean v14, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v12, v2

    invoke-virtual/range {v10 .. v15}, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->initialize(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 206
    iget-object v2, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/sleepbot/datetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    const/4 v2, 0x0

    .line 209
    invoke-direct {v0, v2, v1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 210
    invoke-direct {v0, v9, v8}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 211
    rem-int/lit8 v2, v1, 0xc

    mul-int/lit8 v6, v2, 0x1e

    .line 212
    iget-object v2, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    iget-boolean v3, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v5, 0x1

    .line 213
    invoke-direct {v0, v1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result v7

    move-object v1, v2

    move-object/from16 v2, p1

    .line 212
    invoke-virtual/range {v1 .. v7}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;ZZZIZ)V

    mul-int/lit8 v6, v8, 0x6

    .line 215
    iget-object v1, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    iget-boolean v3, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;ZZZIZ)V

    .line 218
    iput-boolean v9, v0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 775
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/16 v0, 0x1000

    .line 776
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x2000

    .line 777
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 149
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 150
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 151
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 153
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 154
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 153
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 578
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 579
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v1, 0x1

    .line 583
    new-array v2, v1, [Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 585
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 587
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v3, -0x1

    if-eqz p2, :cond_10

    const-string v5, "RadialPickerLayout"

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq p2, v1, :cond_7

    if-eq p2, v7, :cond_0

    goto/16 :goto_3

    .line 641
    :cond_0
    iget-boolean p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez p2, :cond_1

    .line 643
    const-string p1, "Input was disabled, but received ACTION_MOVE."

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 647
    :cond_1
    iget p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDownY:F

    sub-float p2, v0, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 648
    iget v5, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDownX:F

    sub-float v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 650
    iget-boolean v7, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    if-nez v7, :cond_2

    iget v7, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    int-to-float v8, v7

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_2

    int-to-float v5, v7

    cmpg-float p2, p2, v5

    if-gtz p2, :cond_2

    goto/16 :goto_3

    .line 658
    :cond_2
    iget p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz p2, :cond_6

    if-ne p2, v1, :cond_3

    goto :goto_0

    .line 669
    :cond_3
    iget p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    if-ne p2, v3, :cond_4

    goto/16 :goto_3

    .line 675
    :cond_4
    iput-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 676
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 677
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result p1

    if-eq p1, v3, :cond_5

    .line 679
    aget-object p2, v2, v4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2, v4, v1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result p1

    .line 680
    iget p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    if-eq p1, p2, :cond_5

    .line 681
    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->tryVibrate()V

    .line 682
    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    .line 683
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    invoke-interface {p2, v0, p1, v4}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_5
    return v1

    .line 659
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 660
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {p2, p1, v0}, Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result p1

    .line 661
    iget p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eq p1, p2, :cond_f

    .line 662
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {p1, v3}, Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 663
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 664
    iput v3, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto/16 :goto_3

    .line 688
    :cond_7
    iget-boolean p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez p2, :cond_8

    .line 690
    const-string p1, "Input was disabled, but received ACTION_UP."

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    const/4 p2, 0x3

    invoke-interface {p1, p2, v1, v4}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    return v1

    .line 695
    :cond_8
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 696
    iput-boolean v4, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    .line 699
    iget p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz p2, :cond_d

    if-ne p2, v1, :cond_9

    goto :goto_2

    .line 716
    :cond_9
    iget p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    if-eq p2, v3, :cond_c

    .line 717
    iget-boolean p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    invoke-direct {p0, p1, v0, p2, v2}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result p1

    if-eq p1, v3, :cond_c

    .line 719
    aget-object p2, v2, v4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0, v4}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result p1

    .line 720
    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result p2

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez p2, :cond_b

    .line 721
    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result p2

    const/16 v0, 0xc

    if-nez p2, :cond_a

    if-ne p1, v0, :cond_a

    const/4 p1, 0x0

    goto :goto_1

    :cond_a
    if-ne p2, v1, :cond_b

    if-eq p1, v0, :cond_b

    add-int/lit8 p1, p1, 0xc

    .line 728
    :cond_b
    :goto_1
    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 729
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    invoke-interface {p2, v0, p1, v1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 732
    :cond_c
    iput-boolean v4, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    return v1

    .line 700
    :cond_d
    :goto_2
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {p2, p1, v0}, Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result p1

    .line 701
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {p2, v3}, Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 702
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 704
    iget p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-ne p1, p2, :cond_e

    .line 705
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {p2, p1}, Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;->setAmOrPm(I)V

    .line 706
    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result p2

    if-eq p2, p1, :cond_e

    .line 707
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    invoke-interface {p2, v7, v0, v4}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 708
    invoke-direct {p0, v7, p1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 711
    :cond_e
    iput v3, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    :cond_f
    :goto_3
    return v4

    .line 589
    :cond_10
    iget-boolean p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez p2, :cond_11

    return v1

    .line 593
    :cond_11
    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDownX:F

    .line 594
    iput v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDownY:F

    .line 596
    iput v3, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    .line 597
    iput-boolean v4, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 598
    iput-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    .line 600
    iget-boolean p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    if-nez p2, :cond_12

    .line 601
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {p2, p1, v0}, Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result p2

    iput p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto :goto_4

    .line 603
    :cond_12
    iput v3, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 605
    :goto_4
    iget p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz p2, :cond_14

    if-ne p2, v1, :cond_13

    goto :goto_5

    .line 620
    :cond_13
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p2}, Lcom/fourmob/datetimepicker/Utils;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result p2

    .line 622
    invoke-direct {p0, p1, v0, p2, v2}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result p1

    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    if-eq p1, v3, :cond_15

    .line 626
    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->tryVibrate()V

    .line 627
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$2;

    invoke-direct {p2, p0, v2}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$2;-><init>(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V

    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    int-to-long v2, v0

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 608
    :cond_14
    :goto_5
    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->tryVibrate()V

    .line 609
    iput v3, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    .line 610
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$1;

    invoke-direct {p2, p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$1;-><init>(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;)V

    iget v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    int-to-long v2, v0

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_15
    :goto_6
    return v1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    .line 811
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x1000

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/16 p2, 0x2000

    if-ne p1, p2, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_9

    .line 822
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getCurrentlyShowingValue()I

    move-result p2

    .line 824
    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    if-nez v2, :cond_3

    .line 827
    rem-int/lit8 p2, p2, 0xc

    const/16 v3, 0x1e

    goto :goto_1

    :cond_3
    if-ne v2, v0, :cond_4

    const/4 v3, 0x6

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    mul-int p2, p2, v3

    .line 833
    invoke-direct {p0, p2, p1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->snapOnly30s(II)I

    move-result p1

    .line 834
    div-int/2addr p1, v3

    if-nez v2, :cond_6

    .line 838
    iget-boolean p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz p2, :cond_5

    const/16 p2, 0x17

    :goto_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    const/16 p2, 0xc

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/16 p2, 0x37

    goto :goto_2

    :goto_3
    if-le p1, p2, :cond_7

    move p1, v3

    goto :goto_4

    :cond_7
    if-ge p1, v3, :cond_8

    move p1, p2

    .line 854
    :cond_8
    :goto_4
    invoke-direct {p0, v2, p1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->setItem(II)V

    .line 855
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {p2, v2, p1, v1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    return v0

    :cond_9
    return v1
.end method

.method public setAmOrPm(I)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v0, p1}, Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;->setAmOrPm(I)V

    .line 313
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x2

    .line 314
    invoke-direct {p0, v0, p1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    .line 525
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TimePicker does not support view at index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RadialPickerLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    .line 534
    iput p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    if-eq p1, v1, :cond_4

    const/4 p2, 0x4

    .line 537
    new-array p2, p2, [Lcom/nineoldandroids/animation/ObjectAnimator;

    const/4 v1, 0x3

    const/4 v3, 0x2

    if-ne p1, v0, :cond_1

    .line 539
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/sleepbot/datetimepicker/time/RadialTextsView;

    invoke-virtual {p1}, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->getDisappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, p2, v2

    .line 540
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p1}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->getDisappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, p2, v0

    .line 541
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/sleepbot/datetimepicker/time/RadialTextsView;

    invoke-virtual {p1}, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->getReappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, p2, v3

    .line 542
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p1}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->getReappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, p2, v1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 544
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/sleepbot/datetimepicker/time/RadialTextsView;

    invoke-virtual {p1}, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->getReappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, p2, v2

    .line 545
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p1}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->getReappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, p2, v0

    .line 546
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/sleepbot/datetimepicker/time/RadialTextsView;

    invoke-virtual {p1}, Lcom/sleepbot/datetimepicker/time/RadialTextsView;->getDisappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, p2, v3

    .line 547
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p1}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView;->getDisappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, p2, v1

    .line 550
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mTransition:Lcom/nineoldandroids/animation/AnimatorSet;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 551
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mTransition:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/AnimatorSet;->end()V

    .line 553
    :cond_3
    new-instance p1, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {p1}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mTransition:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 554
    invoke-virtual {p1, p2}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 555
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mTransition:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    return-void

    :cond_4
    const/16 p2, 0xff

    if-nez p1, :cond_5

    const/16 v1, 0xff

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-ne p1, v0, :cond_6

    const/16 v2, 0xff

    .line 560
    :cond_6
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/sleepbot/datetimepicker/time/RadialTextsView;

    int-to-float p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 561
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 562
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/sleepbot/datetimepicker/time/RadialTextsView;

    int-to-float p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 563
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setOnValueSelectedListener(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    return-void
.end method

.method public setTime(II)V
    .locals 1

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, v0, p1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->setItem(II)V

    const/4 p1, 0x1

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->setItem(II)V

    return-void
.end method

.method public trySettingInputEnabled(Z)Z
    .locals 2

    .line 759
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return v1

    .line 764
    :cond_0
    iput-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    .line 765
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public tryVibrate()V
    .locals 0

    return-void
.end method
