.class Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/timessquare/MonthView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/timessquare/CalendarPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/timessquare/CalendarPickerView;


# direct methods
.method private constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;Lcom/squareup/timessquare/CalendarPickerView$1;)V
    .locals 0

    .line 816
    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;-><init>(Lcom/squareup/timessquare/CalendarPickerView;)V

    return-void
.end method


# virtual methods
.method public handleClick(Lcom/squareup/timessquare/MonthCellDescriptor;)V
    .locals 3

    .line 819
    invoke-virtual {p1}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 821
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v1}, Lcom/squareup/timessquare/CalendarPickerView;->access$700(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$800(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/squareup/timessquare/CalendarPickerView;->betweenDates(Ljava/util/Date;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->access$900(Lcom/squareup/timessquare/CalendarPickerView;Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 826
    :cond_0
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v1, v0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->access$1100(Lcom/squareup/timessquare/CalendarPickerView;Ljava/util/Date;Lcom/squareup/timessquare/MonthCellDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 828
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {p1}, Lcom/squareup/timessquare/CalendarPickerView;->access$1200(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 829
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {p1}, Lcom/squareup/timessquare/CalendarPickerView;->access$1200(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;->onDateSelected(Ljava/util/Date;)V

    return-void

    .line 822
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {p1}, Lcom/squareup/timessquare/CalendarPickerView;->access$1000(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 823
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {p1}, Lcom/squareup/timessquare/CalendarPickerView;->access$1000(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;->onInvalidDateSelected(Ljava/util/Date;)V

    :cond_2
    return-void
.end method

.method public handleLongClick(Lcom/squareup/timessquare/MonthCellDescriptor;)V
    .locals 3

    .line 836
    invoke-virtual {p1}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 838
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v1}, Lcom/squareup/timessquare/CalendarPickerView;->access$700(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$800(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/squareup/timessquare/CalendarPickerView;->betweenDates(Ljava/util/Date;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->access$900(Lcom/squareup/timessquare/CalendarPickerView;Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 843
    :cond_0
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v1, v0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->access$1100(Lcom/squareup/timessquare/CalendarPickerView;Ljava/util/Date;Lcom/squareup/timessquare/MonthCellDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 845
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {p1}, Lcom/squareup/timessquare/CalendarPickerView;->access$1200(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 846
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {p1}, Lcom/squareup/timessquare/CalendarPickerView;->access$1200(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;->onDateLongClicked(Ljava/util/Date;)V

    return-void

    .line 839
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {p1}, Lcom/squareup/timessquare/CalendarPickerView;->access$1000(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 840
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {p1}, Lcom/squareup/timessquare/CalendarPickerView;->access$1000(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;->onInvalidDateSelected(Ljava/util/Date;)V

    :cond_2
    return-void
.end method
