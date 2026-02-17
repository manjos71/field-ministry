.class public Lcom/squareup/timessquare/CalendarCellView;
.super Landroid/widget/RelativeLayout;
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

.field private final oldWidthMeasureSize:I

.field private rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    sget v0, Lcom/squareup/timessquare/R$attr;->state_selectable:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_SELECTABLE:[I

    .line 11
    sget v0, Lcom/squareup/timessquare/R$attr;->state_current_month:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_CURRENT_MONTH:[I

    .line 12
    sget v0, Lcom/squareup/timessquare/R$attr;->state_today:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_TODAY:[I

    .line 13
    sget v0, Lcom/squareup/timessquare/R$attr;->state_range_first:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_RANGE_FIRST:[I

    .line 14
    sget v0, Lcom/squareup/timessquare/R$attr;->state_range_middle:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_RANGE_MIDDLE:[I

    .line 15
    sget v0, Lcom/squareup/timessquare/R$attr;->state_range_last:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_RANGE_LAST:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellView;->isSelectable:Z

    .line 18
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellView;->isCurrentMonth:Z

    .line 19
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellView;->isToday:Z

    .line 20
    sget-object p1, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->NONE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    iput-object p1, p0, Lcom/squareup/timessquare/CalendarCellView;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/squareup/timessquare/CalendarCellView;->oldWidthMeasureSize:I

    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 p1, p1, 0x5

    .line 60
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 62
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellView;->isSelectable:Z

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_SELECTABLE:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 66
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellView;->isCurrentMonth:Z

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_CURRENT_MONTH:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 70
    :cond_1
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellView;->isToday:Z

    if-eqz v0, :cond_2

    .line 71
    sget-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_TODAY:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarCellView;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    sget-object v1, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->FIRST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    if-ne v0, v1, :cond_3

    .line 75
    sget-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_RANGE_FIRST:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    return-object p1

    .line 76
    :cond_3
    sget-object v1, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->MIDDLE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    if-ne v0, v1, :cond_4

    .line 77
    sget-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_RANGE_MIDDLE:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    return-object p1

    .line 78
    :cond_4
    sget-object v1, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->LAST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    if-ne v0, v1, :cond_5

    .line 79
    sget-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_RANGE_LAST:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_5
    return-object p1
.end method

.method public setCurrentMonth(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellView;->isCurrentMonth:Z

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarCellView;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellView;->isSelectable:Z

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setToday(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellView;->isToday:Z

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method
