.class public Lnet/simonvt/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/widget/NumberPicker$IOnLongpress;,
        Lnet/simonvt/widget/NumberPicker$OnScrollListener;,
        Lnet/simonvt/widget/NumberPicker$InputTextFilter;,
        Lnet/simonvt/widget/NumberPicker$OnValueChangeListener;,
        Lnet/simonvt/widget/NumberPicker$Formatter;,
        Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;,
        Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;,
        Lnet/simonvt/widget/NumberPicker$CustomEditText;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C

.field private static final SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

.field public static final TWO_DIGIT_FORMATTER:Lnet/simonvt/widget/NumberPicker$Formatter;


# instance fields
.field private final mAdjustScroller:Lnet/simonvt/widget/Scroller;

.field private mAdjustScrollerCommand:Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;

.field private mAdjustScrollerOnUpEvent:Z

.field private mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mCheckBeginEditOnUpEvent:Z

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private final mDimSelectorWheelAnimator:Lcom/nineoldandroids/animation/Animator;

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Lnet/simonvt/widget/Scroller;

.field private final mFlingable:Z

.field private mFormatter:Lnet/simonvt/widget/NumberPicker$Formatter;

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mIsLongPress:Z

.field private mLastDownEventY:F

.field private mLastMotionEventY:F

.field private mLastUpEventTimeMillis:J

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnValueChangeListener:Lnet/simonvt/widget/NumberPicker$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mScrollWheelAndFadingEdgesInitialized:Z

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSelectorWheelState:I

.field private mSetSelectionCommand:Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;

.field private final mShowInputControlsAnimator:Lcom/nineoldandroids/animation/AnimatorSet;

.field private final mShowInputControlsAnimimationDuration:J

.field private final mSolidColor:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTextSize:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z

.field private mbInputIsEditable:Z

.field private onLongPressHandler:Lnet/simonvt/widget/NumberPicker$IOnLongpress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lnet/simonvt/widget/NumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    const/16 v0, 0xa

    .line 164
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/simonvt/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 181
    new-instance v0, Lnet/simonvt/widget/NumberPicker$1;

    invoke-direct {v0}, Lnet/simonvt/widget/NumberPicker$1;-><init>()V

    sput-object v0, Lnet/simonvt/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lnet/simonvt/widget/NumberPicker$Formatter;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 553
    sget v0, Lnet/simonvt/widget/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 564
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x12c

    .line 290
    iput-wide v0, p0, Lnet/simonvt/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 295
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/high16 p3, -0x80000000

    .line 300
    filled-new-array {p3, p3, p3, p3, p3}, [I

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorIndices:[I

    .line 318
    iput p3, p0, Lnet/simonvt/widget/NumberPicker;->mInitialScrollOffset:I

    .line 444
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lnet/simonvt/widget/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    const/4 p3, 0x0

    .line 449
    iput p3, p0, Lnet/simonvt/widget/NumberPicker;->mScrollState:I

    .line 567
    sget-object v0, Lnet/simonvt/widget/R$styleable;->NumberPicker:[I

    sget v1, Lnet/simonvt/widget/R$attr;->numberPickerStyle:I

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 569
    sget v0, Lnet/simonvt/widget/R$styleable;->NumberPicker_solidColor:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/widget/NumberPicker;->mSolidColor:I

    .line 570
    sget v0, Lnet/simonvt/widget/R$styleable;->NumberPicker_flingable:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mFlingable:Z

    .line 571
    sget v2, Lnet/simonvt/widget/R$styleable;->NumberPicker_selectionDivider:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lnet/simonvt/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 574
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 572
    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 575
    sget v3, Lnet/simonvt/widget/R$styleable;->NumberPicker_selectionDividerHeight:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 577
    sget v2, Lnet/simonvt/widget/R$styleable;->NumberPicker_android_minHeight:I

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/widget/NumberPicker;->mMinHeight:I

    .line 579
    sget v4, Lnet/simonvt/widget/R$styleable;->NumberPicker_android_maxHeight:I

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lnet/simonvt/widget/NumberPicker;->mMaxHeight:I

    if-eq v2, v3, :cond_1

    if-eq v4, v3, :cond_1

    if-gt v2, v4, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 585
    :cond_1
    :goto_0
    sget v2, Lnet/simonvt/widget/R$styleable;->NumberPicker_android_minWidth:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/widget/NumberPicker;->mMinWidth:I

    .line 587
    sget v4, Lnet/simonvt/widget/R$styleable;->NumberPicker_android_maxWidth:I

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lnet/simonvt/widget/NumberPicker;->mMaxWidth:I

    if-eq v2, v3, :cond_3

    if-eq v4, v3, :cond_3

    if-gt v2, v4, :cond_2

    goto :goto_1

    .line 591
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const v5, 0x7fffffff

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 593
    :goto_2
    iput-boolean v4, p0, Lnet/simonvt/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 596
    iput-boolean v1, p0, Lnet/simonvt/widget/NumberPicker;->mbInputIsEditable:Z

    const/4 v4, 0x0

    .line 597
    iput-object v4, p0, Lnet/simonvt/widget/NumberPicker;->onLongPressHandler:Lnet/simonvt/widget/NumberPicker$IOnLongpress;

    .line 598
    iput-boolean p3, p0, Lnet/simonvt/widget/NumberPicker;->mIsLongPress:Z

    .line 599
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lnet/simonvt/widget/R$integer;->np_config_longAnimTime:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lnet/simonvt/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    .line 607
    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 608
    invoke-direct {p0, p3}, Lnet/simonvt/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 610
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 612
    sget v6, Lnet/simonvt/widget/R$layout;->number_picker:I

    invoke-virtual {v5, v6, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 614
    new-instance v5, Lnet/simonvt/widget/NumberPicker$2;

    invoke-direct {v5, p0}, Lnet/simonvt/widget/NumberPicker$2;-><init>(Lnet/simonvt/widget/NumberPicker;)V

    .line 630
    new-instance v6, Lnet/simonvt/widget/NumberPicker$3;

    invoke-direct {v6, p0}, Lnet/simonvt/widget/NumberPicker$3;-><init>(Lnet/simonvt/widget/NumberPicker;)V

    .line 643
    sget v7, Lnet/simonvt/widget/R$id;->np_increment:I

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lnet/simonvt/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 644
    invoke-virtual {v7, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    invoke-virtual {v7, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 648
    sget v8, Lnet/simonvt/widget/R$id;->np_decrement:I

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lnet/simonvt/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 649
    invoke-virtual {v8, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    invoke-virtual {v8, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 656
    sget v5, Lnet/simonvt/widget/R$id;->np_numberpicker_input:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 657
    new-instance v6, Lnet/simonvt/widget/NumberPicker$4;

    invoke-direct {v6, p0}, Lnet/simonvt/widget/NumberPicker$4;-><init>(Lnet/simonvt/widget/NumberPicker;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 667
    new-instance v6, Lnet/simonvt/widget/NumberPicker$InputTextFilter;

    invoke-direct {v6, p0}, Lnet/simonvt/widget/NumberPicker$InputTextFilter;-><init>(Lnet/simonvt/widget/NumberPicker;)V

    new-array v9, v1, [Landroid/text/InputFilter;

    aput-object v6, v9, p3

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const/4 v6, 0x2

    .line 671
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setRawInputType(I)V

    const/4 v9, 0x6

    .line 672
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 673
    invoke-virtual {v5, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 675
    new-instance v9, Lnet/simonvt/widget/NumberPicker$5;

    invoke-direct {v9, p0}, Lnet/simonvt/widget/NumberPicker$5;-><init>(Lnet/simonvt/widget/NumberPicker;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 688
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v9

    iput v9, p0, Lnet/simonvt/widget/NumberPicker;->mTouchSlop:I

    .line 689
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 690
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v9

    iput v9, p0, Lnet/simonvt/widget/NumberPicker;->mTouchSlop:I

    .line 691
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v9

    iput v9, p0, Lnet/simonvt/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 692
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lnet/simonvt/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 694
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lnet/simonvt/widget/NumberPicker;->mTextSize:I

    .line 697
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 698
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 699
    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float p1, p1

    .line 700
    invoke-virtual {v9, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 701
    invoke-virtual {v5}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v9, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 702
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 703
    sget-object v5, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 704
    invoke-virtual {v9, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 705
    iput-object v9, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 p1, 0xff

    const/16 v5, 0x3c

    .line 708
    filled-new-array {p1, v5}, [I

    move-result-object p1

    const-string v5, "selectorPaintAlpha"

    invoke-static {p0, v5, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mDimSelectorWheelAnimator:Lcom/nineoldandroids/animation/Animator;

    .line 710
    new-array v5, v6, [F

    fill-array-data v5, :array_0

    const-string v9, "alpha"

    invoke-static {v7, v9, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v5

    .line 712
    new-array v7, v6, [F

    fill-array-data v7, :array_1

    invoke-static {v8, v9, v7}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v7

    .line 714
    new-instance v8, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v8}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lnet/simonvt/widget/NumberPicker;->mShowInputControlsAnimator:Lcom/nineoldandroids/animation/AnimatorSet;

    const/4 v9, 0x3

    .line 715
    new-array v9, v9, [Lcom/nineoldandroids/animation/Animator;

    aput-object p1, v9, p3

    aput-object v5, v9, v1

    aput-object v7, v9, v6

    invoke-virtual {v8, v9}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 717
    new-instance p1, Lnet/simonvt/widget/NumberPicker$6;

    invoke-direct {p1, p0}, Lnet/simonvt/widget/NumberPicker$6;-><init>(Lnet/simonvt/widget/NumberPicker;)V

    invoke-virtual {v8, p1}, Lcom/nineoldandroids/animation/Animator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 738
    new-instance p1, Lnet/simonvt/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p1, v5, v4, v1}, Lnet/simonvt/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mFlingScroller:Lnet/simonvt/widget/Scroller;

    .line 739
    new-instance p1, Lnet/simonvt/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x40200000    # 2.5f

    invoke-direct {v5, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, v4, v5}, Lnet/simonvt/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mAdjustScroller:Lnet/simonvt/widget/Scroller;

    .line 741
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->updateInputTextView()V

    .line 742
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    if-eqz v0, :cond_6

    .line 745
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 746
    invoke-direct {p0, v1}, Lnet/simonvt/widget/NumberPicker;->setSelectorWheelState(I)V

    goto :goto_3

    .line 751
    :cond_5
    invoke-direct {p0, v6}, Lnet/simonvt/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 752
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->hideInputControls()V

    .line 757
    :cond_6
    :goto_3
    sget p1, Lnet/simonvt/widget/R$styleable;->NumberPicker_android_orientation:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-ltz p1, :cond_7

    .line 759
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 762
    :cond_7
    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 764
    sget p1, Lnet/simonvt/widget/R$styleable;->NumberPicker_android_fadingEdgeLength:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 765
    invoke-virtual {p0, v1}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 767
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lnet/simonvt/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lnet/simonvt/widget/NumberPicker;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker;->changeCurrentByOne(Z)V

    return-void
.end method

.method static synthetic access$1200()[C
    .locals 1

    .line 71
    sget-object v0, Lnet/simonvt/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$1300(Lnet/simonvt/widget/NumberPicker;)[Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/simonvt/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lnet/simonvt/widget/NumberPicker;Ljava/lang/String;)I
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lnet/simonvt/widget/NumberPicker;)I
    .locals 0

    .line 71
    iget p0, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method static synthetic access$1600(Lnet/simonvt/widget/NumberPicker;II)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lnet/simonvt/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1702(Lnet/simonvt/widget/NumberPicker;I)I
    .locals 0

    .line 71
    iput p1, p0, Lnet/simonvt/widget/NumberPicker;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$1800(Lnet/simonvt/widget/NumberPicker;)I
    .locals 0

    .line 71
    iget p0, p0, Lnet/simonvt/widget/NumberPicker;->mInitialScrollOffset:I

    return p0
.end method

.method static synthetic access$1900(Lnet/simonvt/widget/NumberPicker;)I
    .locals 0

    .line 71
    iget p0, p0, Lnet/simonvt/widget/NumberPicker;->mCurrentScrollOffset:I

    return p0
.end method

.method static synthetic access$200(Lnet/simonvt/widget/NumberPicker;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(Z)V

    return-void
.end method

.method static synthetic access$2000(Lnet/simonvt/widget/NumberPicker;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->updateInputTextView()V

    return-void
.end method

.method static synthetic access$2100(Lnet/simonvt/widget/NumberPicker;)J
    .locals 2

    .line 71
    iget-wide v0, p0, Lnet/simonvt/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    return-wide v0
.end method

.method static synthetic access$2200(Lnet/simonvt/widget/NumberPicker;J)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lnet/simonvt/widget/NumberPicker;->showInputControls(J)V

    return-void
.end method

.method static synthetic access$2300(Lnet/simonvt/widget/NumberPicker;)I
    .locals 0

    .line 71
    iget p0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorElementHeight:I

    return p0
.end method

.method static synthetic access$2400(Lnet/simonvt/widget/NumberPicker;)Lnet/simonvt/widget/Scroller;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/simonvt/widget/NumberPicker;->mAdjustScroller:Lnet/simonvt/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$2500(Lnet/simonvt/widget/NumberPicker;)J
    .locals 2

    .line 71
    iget-wide v0, p0, Lnet/simonvt/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Lnet/simonvt/widget/NumberPicker;Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$402(Lnet/simonvt/widget/NumberPicker;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lnet/simonvt/widget/NumberPicker;->mIsLongPress:Z

    return p1
.end method

.method static synthetic access$500(Lnet/simonvt/widget/NumberPicker;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->hideInputControls()V

    return-void
.end method

.method static synthetic access$600(Lnet/simonvt/widget/NumberPicker;)Lnet/simonvt/widget/NumberPicker$IOnLongpress;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/simonvt/widget/NumberPicker;->onLongPressHandler:Lnet/simonvt/widget/NumberPicker$IOnLongpress;

    return-object p0
.end method

.method static synthetic access$700(Lnet/simonvt/widget/NumberPicker;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker;->setSelectorWheelState(I)V

    return-void
.end method

.method static synthetic access$800(Lnet/simonvt/widget/NumberPicker;)Lcom/nineoldandroids/animation/AnimatorSet;
    .locals 0

    .line 71
    iget-object p0, p0, Lnet/simonvt/widget/NumberPicker;->mShowInputControlsAnimator:Lcom/nineoldandroids/animation/AnimatorSet;

    return-object p0
.end method

.method private changeCurrent(I)V
    .locals 1

    .line 1536
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1540
    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1541
    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1543
    :cond_1
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    .line 1544
    invoke-virtual {p0, p1}, Lnet/simonvt/widget/NumberPicker;->setValue(I)V

    .line 1545
    invoke-direct {p0, v0, p1}, Lnet/simonvt/widget/NumberPicker;->notifyChange(II)V

    return-void
.end method

.method private changeCurrentByOne(Z)V
    .locals 13

    .line 1555
    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_1

    .line 1556
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mDimSelectorWheelAnimator:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->cancel()V

    .line 1557
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1558
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    .line 1559
    iput v0, p0, Lnet/simonvt/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1560
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    if-eqz p1, :cond_0

    .line 1562
    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker;->mFlingScroller:Lnet/simonvt/widget/Scroller;

    iget p1, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lnet/simonvt/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1565
    :cond_0
    iget-object v7, p0, Lnet/simonvt/widget/NumberPicker;->mFlingScroller:Lnet/simonvt/widget/Scroller;

    iget v11, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Lnet/simonvt/widget/Scroller;->startScroll(IIIII)V

    .line 1568
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 1571
    iget p1, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker;->changeCurrent(I)V

    return-void

    .line 1573
    :cond_2
    iget p1, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker;->changeCurrent(I)V

    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 1792
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 1793
    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1795
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 1796
    iget-boolean v1, p0, Lnet/simonvt/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 1797
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    :cond_1
    const/4 v1, 0x0

    .line 1799
    aput v0, p1, v1

    .line 1800
    invoke-direct {p0, v0}, Lnet/simonvt/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 1809
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1810
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 1814
    :cond_0
    iget v1, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 1817
    :cond_1
    iget-object v2, p0, Lnet/simonvt/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int v1, p1, v1

    .line 1819
    aget-object v1, v2, v1

    goto :goto_1

    .line 1821
    :cond_2
    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1815
    :cond_3
    :goto_0
    const-string v1, ""

    .line 1824
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private fadeSelectorWheel(J)V
    .locals 2

    .line 1738
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1739
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mDimSelectorWheelAnimator:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0, p1, p2}, Lcom/nineoldandroids/animation/Animator;->setDuration(J)Lcom/nineoldandroids/animation/Animator;

    .line 1740
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mDimSelectorWheelAnimator:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/Animator;->start()V

    return-void
.end method

.method private fling(I)V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1697
    iput v1, v0, Lnet/simonvt/widget/NumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 1700
    iget-object v2, v0, Lnet/simonvt/widget/NumberPicker;->mFlingScroller:Lnet/simonvt/widget/Scroller;

    const/4 v9, 0x0

    const v10, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v6, p1

    invoke-virtual/range {v2 .. v10}, Lnet/simonvt/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1702
    :cond_0
    iget-object v11, v0, Lnet/simonvt/widget/NumberPicker;->mFlingScroller:Lnet/simonvt/widget/Scroller;

    const/16 v18, 0x0

    const v19, 0x7fffffff

    const/4 v12, 0x0

    const v13, 0x7fffffff

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v15, p1

    invoke-virtual/range {v11 .. v19}, Lnet/simonvt/widget/Scroller;->fling(IIIIIIII)V

    .line 1705
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private forceCompleteChangeCurrentByOneViaScroll()V
    .locals 2

    .line 1584
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mFlingScroller:Lnet/simonvt/widget/Scroller;

    .line 1585
    invoke-virtual {v0}, Lnet/simonvt/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1586
    invoke-virtual {v0}, Lnet/simonvt/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1587
    invoke-virtual {v0}, Lnet/simonvt/widget/Scroller;->abortAnimation()V

    .line 1588
    invoke-virtual {v0}, Lnet/simonvt/widget/Scroller;->getCurrY()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1589
    invoke-virtual {p0, v1, v0}, Lnet/simonvt/widget/NumberPicker;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1

    .line 1828
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mFormatter:Lnet/simonvt/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnet/simonvt/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 1914
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1916
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 1921
    :goto_0
    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1923
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1924
    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1925
    iget p1, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    add-int/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1934
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 1940
    :catch_0
    iget p1, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    return p1
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 2

    .line 1763
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 1764
    iget v1, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    sub-int/2addr v0, v1

    rem-int/2addr p1, v0

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 1765
    :cond_0
    iget v1, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    if-ge p1, v1, :cond_1

    sub-int p1, v1, p1

    sub-int v1, v0, v1

    .line 1766
    rem-int/2addr p1, v1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private hideInputControls()V
    .locals 2

    .line 1712
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mShowInputControlsAnimator:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->cancel()V

    .line 1713
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1714
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1715
    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mIsLongPress:Z

    if-nez v0, :cond_0

    .line 1716
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    .line 1776
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1777
    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 1779
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1780
    iget-boolean v1, p0, Lnet/simonvt/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 1781
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    .line 1783
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1784
    invoke-direct {p0, v0}, Lnet/simonvt/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    .line 1655
    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 1656
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 1639
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1640
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorIndices:[I

    .line 1641
    array-length v1, v0

    iget v2, p0, Lnet/simonvt/widget/NumberPicker;->mTextSize:I

    mul-int v1, v1, v2

    .line 1642
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 1643
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 1644
    iput v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1645
    iget v1, p0, Lnet/simonvt/widget/NumberPicker;->mTextSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1647
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1648
    iget v1, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/simonvt/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1650
    iput v0, p0, Lnet/simonvt/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1651
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->updateInputTextView()V

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 4

    .line 1514
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1516
    invoke-virtual {p0}, Lnet/simonvt/widget/NumberPicker;->getValue()I

    move-result v0

    const/4 v1, 0x0

    .line 1517
    :goto_0
    iget-object v2, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, -0x2

    add-int/2addr v2, v0

    .line 1519
    iget-boolean v3, p0, Lnet/simonvt/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v3, :cond_0

    .line 1520
    invoke-direct {p0, v2}, Lnet/simonvt/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1522
    :cond_0
    iget-object v3, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorIndices:[I

    aput v2, v3, v1

    .line 1523
    invoke-direct {p0, v2}, Lnet/simonvt/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 1

    .line 1608
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1609
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1610
    iget-object p2, p0, Lnet/simonvt/widget/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 1475
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1476
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    :goto_0
    return p1

    .line 1485
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1483
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 1481
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private notifyChange(II)V
    .locals 1

    .line 1875
    iget-object p2, p0, Lnet/simonvt/widget/NumberPicker;->mOnValueChangeListener:Lnet/simonvt/widget/NumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 1876
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lnet/simonvt/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lnet/simonvt/widget/NumberPicker;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 1684
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1687
    :cond_0
    iput p1, p0, Lnet/simonvt/widget/NumberPicker;->mScrollState:I

    return-void
.end method

.method private onScrollerFinished(Lnet/simonvt/widget/Scroller;)V
    .locals 2

    .line 1663
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mFlingScroller:Lnet/simonvt/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1664
    iget p1, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1665
    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker;->postAdjustScrollerCommand(I)V

    .line 1666
    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1668
    :cond_0
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->updateInputTextView()V

    .line 1669
    iget-wide v0, p0, Lnet/simonvt/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Lnet/simonvt/widget/NumberPicker;->fadeSelectorWheel(J)V

    goto :goto_0

    .line 1672
    :cond_1
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->updateInputTextView()V

    .line 1673
    iget-wide v0, p0, Lnet/simonvt/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Lnet/simonvt/widget/NumberPicker;->showInputControls(J)V

    .line 1677
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private postAdjustScrollerCommand(I)V
    .locals 3

    .line 1965
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mAdjustScrollerCommand:Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;

    if-nez v0, :cond_0

    .line 1966
    new-instance v0, Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;

    invoke-direct {v0, p0}, Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;-><init>(Lnet/simonvt/widget/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mAdjustScrollerCommand:Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;

    goto :goto_0

    .line 1968
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1970
    :goto_0
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mAdjustScrollerCommand:Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(Z)V
    .locals 1

    .line 1886
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1887
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->removeAllCallbacks()V

    .line 1888
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1889
    new-instance v0, Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lnet/simonvt/widget/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1891
    :cond_0
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$900(Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1892
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1

    .line 1949
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 1950
    new-instance v0, Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;-><init>(Lnet/simonvt/widget/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;

    goto :goto_0

    .line 1952
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1954
    :goto_0
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;

    invoke-static {v0, p1}, Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;->access$1002(Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1955
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;

    invoke-static {p1, p2}, Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;->access$1102(Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1956
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 1899
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1900
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1902
    :cond_0
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mAdjustScrollerCommand:Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;

    if-eqz v0, :cond_1

    .line 1903
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1905
    :cond_1
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_2

    .line 1906
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1502
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1503
    invoke-static {p1, p3}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method private setSelectorPaintAlpha(I)V
    .locals 1

    .line 1600
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1601
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setSelectorWheelState(I)V
    .locals 3

    .line 1619
    iput p1, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1621
    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1624
    :cond_0
    iget-boolean v1, p0, Lnet/simonvt/widget/NumberPicker;->mFlingable:Z

    if-eqz v1, :cond_1

    if-ne p1, v0, :cond_1

    .line 1625
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1627
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1631
    :catch_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lnet/simonvt/widget/R$string;->np_number_picker_increment_scroll_action:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1632
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1633
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1634
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private showInputControls(J)V
    .locals 2

    .line 1726
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1727
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1728
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mShowInputControlsAnimator:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1729
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mShowInputControlsAnimator:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1157
    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    goto :goto_5

    .line 1161
    :cond_0
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 1164
    iget-object v3, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1170
    :cond_2
    iget v2, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    :goto_1
    if-lez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 1173
    div-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_3
    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    goto :goto_3

    .line 1177
    :cond_4
    array-length v0, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 1179
    iget-object v3, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lnet/simonvt/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    float-to-int v2, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1185
    :goto_3
    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1186
    iget v1, p0, Lnet/simonvt/widget/NumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    .line 1187
    iget v1, p0, Lnet/simonvt/widget/NumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_7

    .line 1188
    iput v0, p0, Lnet/simonvt/widget/NumberPicker;->mMaxWidth:I

    goto :goto_4

    .line 1190
    :cond_7
    iput v1, p0, Lnet/simonvt/widget/NumberPicker;->mMaxWidth:I

    .line 1192
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_5
    return-void
.end method

.method private updateIncrementAndDecrementButtonsVisibilityState()V
    .locals 4

    .line 1747
    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_1

    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    iget v3, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    if-ge v0, v3, :cond_0

    goto :goto_0

    .line 1750
    :cond_0
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1748
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1752
    :goto_1
    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_3

    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    iget v3, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    if-le v0, v3, :cond_2

    goto :goto_2

    .line 1755
    :cond_2
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1753
    :cond_3
    :goto_2
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateInputTextView()V
    .locals 5

    .line 1855
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1856
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Lnet/simonvt/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1858
    :cond_0
    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget v2, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    iget v3, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1860
    :goto_0
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1862
    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1863
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1864
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lnet/simonvt/widget/R$string;->np_number_picker_increment_scroll_mode:I

    iget-object v2, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 1865
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 1864
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1866
    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 1

    .line 1832
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1833
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1835
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->updateInputTextView()V

    return-void

    .line 1838
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p1

    .line 1839
    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker;->changeCurrent(I)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 993
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelState:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 996
    :cond_0
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mFlingScroller:Lnet/simonvt/widget/Scroller;

    .line 997
    invoke-virtual {v0}, Lnet/simonvt/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 998
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mAdjustScroller:Lnet/simonvt/widget/Scroller;

    .line 999
    invoke-virtual {v0}, Lnet/simonvt/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    .line 1003
    :cond_1
    invoke-virtual {v0}, Lnet/simonvt/widget/Scroller;->computeScrollOffset()Z

    .line 1004
    invoke-virtual {v0}, Lnet/simonvt/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1005
    iget v2, p0, Lnet/simonvt/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_2

    .line 1006
    invoke-virtual {v0}, Lnet/simonvt/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lnet/simonvt/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1008
    :cond_2
    iget v2, p0, Lnet/simonvt/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v2, v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lnet/simonvt/widget/NumberPicker;->scrollBy(II)V

    .line 1009
    iput v1, p0, Lnet/simonvt/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1010
    invoke-virtual {v0}, Lnet/simonvt/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1011
    invoke-direct {p0, v0}, Lnet/simonvt/widget/NumberPicker;->onScrollerFinished(Lnet/simonvt/widget/Scroller;)V

    return-void

    .line 1013
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 975
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 977
    :cond_0
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->removeAllCallbacks()V

    .line 979
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 956
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 959
    :cond_0
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelState:I

    if-ne v0, v1, :cond_2

    .line 960
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->removeAllCallbacks()V

    .line 961
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    goto :goto_0

    .line 966
    :cond_1
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->removeAllCallbacks()V

    const/4 v0, 0x0

    .line 967
    iput-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mIsLongPress:Z

    .line 970
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 984
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 986
    :cond_0
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->removeAllCallbacks()V

    .line 988
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1389
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1393
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mShowInputControlsAnimator:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1395
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    .line 1396
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 1397
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1398
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 1401
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1323
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1291
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1259
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 1066
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 1250
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1205
    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1360
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1363
    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1365
    iget-wide v0, p0, Lnet/simonvt/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    invoke-direct {p0, v0, v1}, Lnet/simonvt/widget/NumberPicker;->showInputControls(J)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1371
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->removeAllCallbacks()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1408
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelState:I

    if-nez v0, :cond_0

    return-void

    .line 1412
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 1413
    iget v2, p0, Lnet/simonvt/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v2, v2

    .line 1415
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 1417
    iget v4, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    .line 1418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1419
    iget v5, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorElementHeight:I

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 1420
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1424
    :cond_1
    iget-object v4, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorIndices:[I

    const/4 v5, 0x0

    .line 1425
    :goto_0
    array-length v7, v4

    if-ge v5, v7, :cond_4

    .line 1426
    aget v7, v4, v5

    .line 1427
    iget-object v8, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-ne v5, v1, :cond_2

    .line 1432
    iget-object v8, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lnet/simonvt/widget/NumberPicker;->mIsLongPress:Z

    if-eqz v8, :cond_3

    .line 1433
    :cond_2
    iget-object v8, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v2, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1436
    :cond_3
    iget v7, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v7, v7

    add-float/2addr v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1440
    :cond_4
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 1443
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lnet/simonvt/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 1445
    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v1, v6, v0, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1446
    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1449
    iget v1, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v0, v1

    add-int/2addr v2, v1

    .line 1451
    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v1, v6, v0, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1452
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1455
    :cond_5
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 834
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mFlingable:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 838
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 871
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 872
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 873
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mTouchSlop:I

    if-le p1, v0, :cond_2

    .line 874
    iput-boolean v1, p0, Lnet/simonvt/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 875
    iput-boolean v1, p0, Lnet/simonvt/widget/NumberPicker;->mIsLongPress:Z

    .line 876
    invoke-direct {p0, v4}, Lnet/simonvt/widget/NumberPicker;->onScrollStateChange(I)V

    .line 877
    invoke-direct {p0, v3}, Lnet/simonvt/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 878
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->hideInputControls()V

    return v4

    :cond_2
    :goto_0
    return v1

    .line 840
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/simonvt/widget/NumberPicker;->mLastDownEventY:F

    iput v0, p0, Lnet/simonvt/widget/NumberPicker;->mLastMotionEventY:F

    .line 841
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->removeAllCallbacks()V

    .line 842
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mShowInputControlsAnimator:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->cancel()V

    .line 843
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mDimSelectorWheelAnimator:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->cancel()V

    .line 844
    iput-boolean v1, p0, Lnet/simonvt/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 845
    iput-boolean v4, p0, Lnet/simonvt/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 846
    iput-boolean v4, p0, Lnet/simonvt/widget/NumberPicker;->mIsLongPress:Z

    .line 847
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelState:I

    if-ne v0, v3, :cond_6

    .line 848
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 849
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mFlingScroller:Lnet/simonvt/widget/Scroller;

    invoke-virtual {p1}, Lnet/simonvt/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mAdjustScroller:Lnet/simonvt/widget/Scroller;

    .line 850
    invoke-virtual {p1}, Lnet/simonvt/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_5

    .line 852
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mFlingScroller:Lnet/simonvt/widget/Scroller;

    invoke-virtual {v0, v4}, Lnet/simonvt/widget/Scroller;->forceFinished(Z)V

    .line 853
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mAdjustScroller:Lnet/simonvt/widget/Scroller;

    invoke-virtual {v0, v4}, Lnet/simonvt/widget/Scroller;->forceFinished(Z)V

    .line 854
    invoke-direct {p0, v1}, Lnet/simonvt/widget/NumberPicker;->onScrollStateChange(I)V

    .line 856
    :cond_5
    iput-boolean p1, p0, Lnet/simonvt/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 857
    iput-boolean v4, p0, Lnet/simonvt/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 858
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->hideInputControls()V

    return v4

    .line 861
    :cond_6
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v0}, Lnet/simonvt/widget/NumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 862
    invoke-direct {p0, p1, v0}, Lnet/simonvt/widget/NumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    .line 866
    :cond_7
    iput-boolean v1, p0, Lnet/simonvt/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 867
    invoke-direct {p0, v3}, Lnet/simonvt/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 868
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->hideInputControls()V

    .line 869
    iget-boolean p1, p0, Lnet/simonvt/widget/NumberPicker;->mbInputIsEditable:Z

    return p1

    :cond_8
    :goto_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 782
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 783
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 786
    iget-object p3, p0, Lnet/simonvt/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p4, p1, p3

    .line 787
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    .line 790
    iget-object p5, p0, Lnet/simonvt/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    .line 791
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1, p3, p5}, Landroid/view/View;->layout(IIII)V

    .line 794
    iget-object p3, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 795
    iget-object p4, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int p5, p1, p3

    .line 796
    div-int/lit8 p5, p5, 0x2

    sub-int v0, p2, p4

    .line 797
    div-int/lit8 v0, v0, 0x2

    add-int/2addr p3, p5

    add-int/2addr p4, v0

    .line 800
    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, p5, v0, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 803
    iget-object p3, p0, Lnet/simonvt/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p1, p3

    .line 804
    div-int/lit8 p1, p1, 0x2

    .line 805
    iget-object p4, p0, Lnet/simonvt/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int p4, p2, p4

    add-int/2addr p3, p1

    .line 808
    iget-object p5, p0, Lnet/simonvt/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {p5, p1, p4, p3, p2}, Landroid/view/View;->layout(IIII)V

    .line 810
    iget-boolean p1, p0, Lnet/simonvt/widget/NumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 811
    iput-boolean p1, p0, Lnet/simonvt/widget/NumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 813
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->initializeSelectorWheel()V

    .line 814
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->initializeFadingEdges()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 821
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lnet/simonvt/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 822
    iget v1, p0, Lnet/simonvt/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lnet/simonvt/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 823
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 825
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lnet/simonvt/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 827
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lnet/simonvt/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 829
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 888
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 891
    :cond_0
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 892
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 894
    :cond_1
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_2

    goto/16 :goto_1

    .line 898
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 899
    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-nez v0, :cond_3

    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_4

    .line 901
    :cond_3
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 902
    iget v2, p0, Lnet/simonvt/widget/NumberPicker;->mTouchSlop:I

    if-le v0, v2, :cond_4

    .line 903
    iput-boolean v1, p0, Lnet/simonvt/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 904
    invoke-direct {p0, v3}, Lnet/simonvt/widget/NumberPicker;->onScrollStateChange(I)V

    .line 907
    :cond_4
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mLastMotionEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 908
    invoke-virtual {p0, v1, v0}, Lnet/simonvt/widget/NumberPicker;->scrollBy(II)V

    .line 909
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 910
    iput p1, p0, Lnet/simonvt/widget/NumberPicker;->mLastMotionEventY:F

    goto/16 :goto_1

    .line 913
    :cond_5
    iput-boolean v1, p0, Lnet/simonvt/widget/NumberPicker;->mIsLongPress:Z

    .line 914
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->hideInputControls()V

    .line 915
    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mbInputIsEditable:Z

    if-eqz v0, :cond_7

    .line 916
    iput-boolean v1, p0, Lnet/simonvt/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 917
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lnet/simonvt/widget/NumberPicker;->mLastUpEventTimeMillis:J

    sub-long/2addr v4, v6

    .line 918
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_7

    .line 919
    invoke-direct {p0, v3}, Lnet/simonvt/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 920
    iget-wide v4, p0, Lnet/simonvt/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v4, v5}, Lnet/simonvt/widget/NumberPicker;->showInputControls(J)V

    .line 921
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 923
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_6

    .line 925
    iget-object v2, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 927
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/simonvt/widget/NumberPicker;->mLastUpEventTimeMillis:J

    return v3

    .line 931
    :cond_7
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 932
    iget v4, p0, Lnet/simonvt/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 933
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 934
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lnet/simonvt/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_8

    .line 935
    invoke-direct {p0, v0}, Lnet/simonvt/widget/NumberPicker;->fling(I)V

    .line 936
    invoke-direct {p0, v2}, Lnet/simonvt/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 938
    :cond_8
    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    if-eqz v0, :cond_9

    .line 939
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mFlingScroller:Lnet/simonvt/widget/Scroller;

    invoke-virtual {v0}, Lnet/simonvt/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mAdjustScroller:Lnet/simonvt/widget/Scroller;

    invoke-virtual {v0}, Lnet/simonvt/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 940
    invoke-direct {p0, v1}, Lnet/simonvt/widget/NumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_0

    .line 943
    :cond_9
    sget v0, Lnet/simonvt/widget/NumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    invoke-direct {p0, v0}, Lnet/simonvt/widget/NumberPicker;->postAdjustScrollerCommand(I)V

    .line 946
    :cond_a
    :goto_0
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 947
    iput-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 948
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/simonvt/widget/NumberPicker;->mLastUpEventTimeMillis:J

    :goto_1
    return v3
.end method

.method public scrollBy(II)V
    .locals 4

    .line 1031
    iget p1, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorWheelState:I

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1034
    :cond_0
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorIndices:[I

    .line 1035
    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    if-lez p2, :cond_1

    aget v2, p1, v1

    iget v3, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    if-gt v2, v3, :cond_1

    .line 1037
    iget p1, p0, Lnet/simonvt/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lnet/simonvt/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_1
    if-nez v0, :cond_2

    if-gez p2, :cond_2

    .line 1040
    aget v0, p1, v1

    iget v2, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    if-lt v0, v2, :cond_2

    .line 1042
    iget p1, p0, Lnet/simonvt/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lnet/simonvt/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1045
    :cond_2
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lnet/simonvt/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1046
    :cond_3
    :goto_0
    iget p2, p0, Lnet/simonvt/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v0, v2, :cond_4

    .line 1047
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lnet/simonvt/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1048
    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1049
    aget p2, p1, v1

    invoke-direct {p0, p2}, Lnet/simonvt/widget/NumberPicker;->changeCurrent(I)V

    .line 1050
    iget-boolean p2, p0, Lnet/simonvt/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    aget p2, p1, v1

    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    if-gt p2, v0, :cond_3

    .line 1051
    iget p2, p0, Lnet/simonvt/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lnet/simonvt/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1054
    :cond_4
    :goto_1
    iget p2, p0, Lnet/simonvt/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v0, v2, :cond_5

    .line 1055
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lnet/simonvt/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1056
    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1057
    aget p2, p1, v1

    invoke-direct {p0, p2}, Lnet/simonvt/widget/NumberPicker;->changeCurrent(I)V

    .line 1058
    iget-boolean p2, p0, Lnet/simonvt/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_4

    aget p2, p1, v1

    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    if-lt p2, v0, :cond_4

    .line 1059
    iget p2, p0, Lnet/simonvt/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lnet/simonvt/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1332
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 1335
    :cond_0
    iput-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1338
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRawInputType(I)V

    goto :goto_0

    .line 1341
    :cond_1
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 1343
    :goto_0
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->updateInputTextView()V

    .line 1344
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1345
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setEditEnabled(Z)V
    .locals 0

    .line 1026
    iput-boolean p1, p0, Lnet/simonvt/widget/NumberPicker;->mbInputIsEditable:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1019
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1020
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1021
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1022
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setFormatter(Lnet/simonvt/widget/NumberPicker$Formatter;)V
    .locals 1

    .line 1100
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mFormatter:Lnet/simonvt/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 1103
    :cond_0
    iput-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mFormatter:Lnet/simonvt/widget/NumberPicker$Formatter;

    .line 1104
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1105
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->updateInputTextView()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1300
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 1306
    iput p1, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    .line 1307
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_1

    .line 1308
    iput p1, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    .line 1310
    :cond_1
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1311
    :goto_0
    invoke-virtual {p0, p1}, Lnet/simonvt/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1312
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1313
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->updateInputTextView()V

    .line 1314
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void

    .line 1304
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1268
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 1274
    iput p1, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    .line 1275
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    if-le p1, v0, :cond_1

    .line 1276
    iput p1, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    .line 1278
    :cond_1
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    sub-int/2addr v0, p1

    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorIndices:[I

    array-length p1, p1

    if-le v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1279
    :goto_0
    invoke-virtual {p0, p1}, Lnet/simonvt/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1280
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1281
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->updateInputTextView()V

    .line 1282
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void

    .line 1272
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnLongPressHandler(Lnet/simonvt/widget/NumberPicker$IOnLongpress;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lnet/simonvt/widget/NumberPicker;->onLongPressHandler:Lnet/simonvt/widget/NumberPicker$IOnLongpress;

    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1241
    iput-wide p1, p0, Lnet/simonvt/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lnet/simonvt/widget/NumberPicker$OnScrollListener;)V
    .locals 0

    return-void
.end method

.method public setOnValueChangedListener(Lnet/simonvt/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Lnet/simonvt/widget/NumberPicker;->mOnValueChangeListener:Lnet/simonvt/widget/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setValue(I)V
    .locals 2

    .line 1137
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1140
    :cond_0
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_2

    .line 1141
    iget-boolean p1, p0, Lnet/simonvt/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    goto :goto_0

    :cond_1
    move p1, v0

    .line 1143
    :cond_2
    :goto_0
    iget v1, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    if-le p1, v1, :cond_4

    .line 1144
    iget-boolean p1, p0, Lnet/simonvt/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    move p1, v0

    .line 1146
    :cond_4
    iput p1, p0, Lnet/simonvt/widget/NumberPicker;->mValue:I

    .line 1147
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1148
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->updateInputTextView()V

    .line 1149
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1150
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1221
    iget v0, p0, Lnet/simonvt/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lnet/simonvt/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 1222
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Range less than selector items count."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1224
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lnet/simonvt/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_2

    .line 1225
    iput-boolean p1, p0, Lnet/simonvt/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1226
    invoke-direct {p0}, Lnet/simonvt/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    :cond_2
    return-void
.end method
