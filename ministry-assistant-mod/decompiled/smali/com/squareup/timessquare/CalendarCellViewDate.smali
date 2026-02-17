.class public Lcom/squareup/timessquare/CalendarCellViewDate;
.super Landroid/widget/TextView;
.source "SourceFile"


# static fields
.field private static final STATE_CURRENT_MONTH:[I

.field private static final STATE_RANGE_FIRST:[I

.field private static final STATE_RANGE_LAST:[I

.field private static final STATE_RANGE_MIDDLE:[I

.field private static final STATE_SELECTABLE:[I

.field private static final STATE_TODAY:[I


# instance fields
.field private isCurrentMonth:Z

.field private isSelectable:Z

.field private isToday:Z

.field private rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget v0, Lcom/squareup/timessquare/R$attr;->state_selectable:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellViewDate;->STATE_SELECTABLE:[I

    .line 16
    sget v0, Lcom/squareup/timessquare/R$attr;->state_current_month:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellViewDate;->STATE_CURRENT_MONTH:[I

    .line 19
    sget v0, Lcom/squareup/timessquare/R$attr;->state_today:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellViewDate;->STATE_TODAY:[I

    .line 22
    sget v0, Lcom/squareup/timessquare/R$attr;->state_range_first:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellViewDate;->STATE_RANGE_FIRST:[I

    .line 25
    sget v0, Lcom/squareup/timessquare/R$attr;->state_range_middle:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellViewDate;->STATE_RANGE_MIDDLE:[I

    .line 28
    sget v0, Lcom/squareup/timessquare/R$attr;->state_range_last:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellViewDate;->STATE_RANGE_LAST:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellViewDate;->isSelectable:Z

    .line 33
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellViewDate;->isCurrentMonth:Z

    .line 34
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellViewDate;->isToday:Z

    .line 35
    sget-object p1, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->NONE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    iput-object p1, p0, Lcom/squareup/timessquare/CalendarCellViewDate;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 p1, p1, 0x4

    .line 70
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 72
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellViewDate;->isSelectable:Z

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/squareup/timessquare/CalendarCellViewDate;->STATE_SELECTABLE:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellViewDate;->isCurrentMonth:Z

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lcom/squareup/timessquare/CalendarCellViewDate;->STATE_CURRENT_MONTH:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 80
    :cond_1
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellViewDate;->isToday:Z

    if-eqz v0, :cond_2

    .line 81
    sget-object v0, Lcom/squareup/timessquare/CalendarCellViewDate;->STATE_TODAY:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarCellViewDate;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    sget-object v1, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->FIRST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    if-ne v0, v1, :cond_3

    .line 85
    sget-object v0, Lcom/squareup/timessquare/CalendarCellViewDate;->STATE_RANGE_FIRST:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    return-object p1

    .line 86
    :cond_3
    sget-object v1, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->MIDDLE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    if-ne v0, v1, :cond_4

    .line 87
    sget-object v0, Lcom/squareup/timessquare/CalendarCellViewDate;->STATE_RANGE_MIDDLE:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    return-object p1

    .line 88
    :cond_4
    sget-object v1, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->LAST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    if-ne v0, v1, :cond_5

    .line 89
    sget-object v0, Lcom/squareup/timessquare/CalendarCellViewDate;->STATE_RANGE_LAST:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_5
    return-object p1
.end method

.method public setCurrentMonth(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellViewDate;->isCurrentMonth:Z

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarCellViewDate;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellViewDate;->isSelectable:Z

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setToday(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellViewDate;->isToday:Z

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method
