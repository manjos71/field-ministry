.class public Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fourmob/datetimepicker/date/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field final synthetic this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;


# direct methods
.method protected constructor <init>(Lcom/fourmob/datetimepicker/date/DayPickerView;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 217
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    iget-object p1, p1, Lcom/fourmob/datetimepicker/date/DayPickerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iput p2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->mNewState:I

    .line 219
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    iget-object p1, p1, Lcom/fourmob/datetimepicker/date/DayPickerView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x28

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    iget v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->mNewState:I

    iput v1, v0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mCurrentScrollState:I

    if-nez v1, :cond_5

    .line 226
    iget v2, v0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    .line 229
    iput v1, v0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    const/4 v1, 0x0

    .line 231
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gtz v4, :cond_0

    .line 233
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_2

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 240
    iget-object v4, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v4

    if-eqz v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-eq v4, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 242
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 244
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-eqz v3, :cond_4

    .line 245
    sget v3, Lcom/fourmob/datetimepicker/date/DayPickerView;->LIST_TOP_OFFSET:I

    if-ge v1, v3, :cond_4

    const/16 v3, 0xfa

    if-le v0, v2, :cond_3

    .line 247
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    return-void

    .line 249
    :cond_3
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v1, v0, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    :cond_4
    :goto_2
    return-void

    .line 253
    :cond_5
    iput v1, v0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    return-void
.end method
