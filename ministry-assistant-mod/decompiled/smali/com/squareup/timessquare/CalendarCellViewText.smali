.class public Lcom/squareup/timessquare/CalendarCellViewText;
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

    .line 11
    sget v0, Lcom/squareup/timessquare/R$attr;->state_selectable:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellViewText;->STATE_SELECTABLE:[I

    .line 12
    sget v0, Lcom/squareup/timessquare/R$attr;->state_current_month:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellViewText;->STATE_CURRENT_MONTH:[I

    .line 13
    sget v0, Lcom/squareup/timessquare/R$attr;->state_today:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellViewText;->STATE_TODAY:[I

    .line 14
    sget v0, Lcom/squareup/timessquare/R$attr;->state_range_first:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellViewText;->STATE_RANGE_FIRST:[I

    .line 15
    sget v0, Lcom/squareup/timessquare/R$attr;->state_range_middle:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellViewText;->STATE_RANGE_MIDDLE:[I

    .line 16
    sget v0, Lcom/squareup/timessquare/R$attr;->state_range_last:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellViewText;->STATE_RANGE_LAST:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellViewText;->isSelectable:Z

    .line 19
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellViewText;->isCurrentMonth:Z

    .line 20
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellViewText;->isToday:Z

    .line 21
    sget-object p1, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->NONE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    iput-object p1, p0, Lcom/squareup/timessquare/CalendarCellViewText;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 p1, p1, 0x4

    .line 57
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 59
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellViewText;->isSelectable:Z

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/squareup/timessquare/CalendarCellViewText;->STATE_SELECTABLE:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellViewText;->isCurrentMonth:Z

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lcom/squareup/timessquare/CalendarCellViewText;->STATE_CURRENT_MONTH:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 67
    :cond_1
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellViewText;->isToday:Z

    if-eqz v0, :cond_2

    .line 68
    sget-object v0, Lcom/squareup/timessquare/CalendarCellViewText;->STATE_TODAY:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarCellViewText;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    sget-object v1, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->FIRST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    if-ne v0, v1, :cond_3

    .line 72
    sget-object v0, Lcom/squareup/timessquare/CalendarCellViewText;->STATE_RANGE_FIRST:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    return-object p1

    .line 73
    :cond_3
    sget-object v1, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->MIDDLE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    if-ne v0, v1, :cond_4

    .line 74
    sget-object v0, Lcom/squareup/timessquare/CalendarCellViewText;->STATE_RANGE_MIDDLE:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    return-object p1

    .line 75
    :cond_4
    sget-object v1, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->LAST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    if-ne v0, v1, :cond_5

    .line 76
    sget-object v0, Lcom/squareup/timessquare/CalendarCellViewText;->STATE_RANGE_LAST:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_5
    return-object p1
.end method

.method public setCurrentMonth(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellViewText;->isCurrentMonth:Z

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarCellViewText;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellViewText;->isSelectable:Z

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setToday(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellViewText;->isToday:Z

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method
