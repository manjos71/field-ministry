.class public Lcom/fourmob/datetimepicker/date/DayPickerView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;
    }
.end annotation


# static fields
.field public static LIST_TOP_OFFSET:I = -0x1


# instance fields
.field protected mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

.field protected mContext:Landroid/content/Context;

.field private final mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

.field protected mCurrentMonthDisplayed:I

.field protected mCurrentScrollState:I

.field protected mDaysPerWeek:I

.field protected mFriction:F

.field protected mHandler:Landroid/os/Handler;

.field protected mNumWeeks:I

.field private mPerformingScroll:Z

.field protected mPreviousScrollPosition:J

.field protected mPreviousScrollState:I

.field protected mScrollStateChangedRunnable:Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;

.field protected mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

.field protected mShowWeekNumber:Z

.field protected mTempDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mCurrentScrollState:I

    .line 29
    iput v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    .line 31
    new-instance v1, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;

    invoke-direct {v1, p0}, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;-><init>(Lcom/fourmob/datetimepicker/date/DayPickerView;)V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mScrollStateChangedRunnable:Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;

    .line 32
    new-instance v1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-direct {v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;-><init>()V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    .line 33
    new-instance v1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-direct {v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;-><init>()V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mTempDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    const/4 v1, 0x6

    .line 35
    iput v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mNumWeeks:I

    .line 36
    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mShowWeekNumber:Z

    const/4 v1, 0x7

    .line 37
    iput v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mDaysPerWeek:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    iput v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mFriction:F

    .line 43
    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    .line 44
    invoke-interface {p2, p0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->registerOnDateChangedListener(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;)V

    .line 45
    new-instance p2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setDrawSelectorOnTop(Z)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->init(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->onDateChanged()V

    return-void
.end method


# virtual methods
.method public getMostVisiblePosition()I
    .locals 9

    .line 52
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 60
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 65
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v8, v3

    if-le v8, v5, :cond_1

    move v6, v4

    move v5, v8

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v3, v7

    goto :goto_0

    :cond_2
    :goto_1
    add-int/2addr v0, v6

    return v0
.end method

.method public goTo(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;ZZZ)Z
    .locals 4

    if-eqz p3, :cond_0

    .line 78
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-virtual {v0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->set(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mTempDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-virtual {v0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->set(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    .line 82
    iget v0, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v1}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget p1, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    add-int/2addr v0, p1

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 90
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ltz v3, :cond_8

    :goto_1
    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz p3, :cond_3

    .line 106
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-virtual {v2, v3}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->setSelectedDay(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    :cond_3
    if-ne v0, v1, :cond_5

    if-eqz p4, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_7

    .line 121
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-virtual {p0, p2}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setMonthDisplayed(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    goto :goto_4

    .line 112
    :cond_5
    :goto_3
    iget-object p3, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mTempDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-virtual {p0, p3}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setMonthDisplayed(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    const/4 p3, 0x2

    .line 113
    iput p3, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    if-eqz p2, :cond_6

    .line 115
    sget p1, Lcom/fourmob/datetimepicker/date/DayPickerView;->LIST_TOP_OFFSET:I

    const/16 p2, 0xfa

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    const/4 p1, 0x1

    return p1

    .line 118
    :cond_6
    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->postSetSelection(I)V

    :cond_7
    :goto_4
    return p1

    :cond_8
    move v1, v2

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setUpListView()V

    .line 129
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setUpAdapter()V

    .line 130
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected layoutChildren()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 135
    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPerformingScroll:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPerformingScroll:Z

    :cond_0
    return-void
.end method

.method public onChange()V
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setUpAdapter()V

    .line 142
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onDateChanged()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getSelectedDay()Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fourmob/datetimepicker/date/DayPickerView;->goTo(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;ZZZ)Z

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    const/4 p2, 0x0

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/fourmob/datetimepicker/date/SimpleMonthView;

    if-nez p2, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    mul-int p1, p1, p3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-long p1, p1

    .line 157
    iput-wide p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollPosition:J

    .line 158
    iget p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mCurrentScrollState:I

    iput p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mScrollStateChangedRunnable:Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public postSetSelection(I)V
    .locals 1

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 167
    new-instance v0, Lcom/fourmob/datetimepicker/date/DayPickerView$1;

    invoke-direct {v0, p0, p1}, Lcom/fourmob/datetimepicker/date/DayPickerView$1;-><init>(Lcom/fourmob/datetimepicker/date/DayPickerView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 172
    invoke-virtual {p0, p0, p1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method setFrictionIfSupported(F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 202
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setFriction(F)V

    return-void
.end method

.method protected setMonthDisplayed(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V
    .locals 0

    .line 176
    iget p1, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    iput p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mCurrentMonthDisplayed:I

    .line 177
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateViews()V

    return-void
.end method

.method protected setUpAdapter()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;-><init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-virtual {v0, v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->setSelectedDay(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    .line 185
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected setUpListView()V
    .locals 2

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    const/4 v1, 0x0

    .line 190
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 191
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 192
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 193
    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 194
    invoke-virtual {p0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 195
    invoke-virtual {p0, v0}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 196
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iget v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mFriction:F

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setFrictionIfSupported(F)V

    return-void
.end method
