.class Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/timessquare/CalendarPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthAdapter"
.end annotation


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/squareup/timessquare/CalendarPickerView;


# direct methods
.method private constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 857
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;Lcom/squareup/timessquare/CalendarPickerView$1;)V
    .locals 0

    .line 853
    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;-><init>(Lcom/squareup/timessquare/CalendarPickerView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v0, v0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v0, v0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 883
    check-cast p2, Lcom/squareup/timessquare/MonthView;

    if-nez p2, :cond_1

    .line 885
    iget-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {p2}, Lcom/squareup/timessquare/CalendarPickerView;->access$1300(Lcom/squareup/timessquare/CalendarPickerView;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 886
    iget-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object p2, p2, Lcom/squareup/timessquare/CalendarPickerView;->today:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    goto :goto_0

    .line 888
    :cond_0
    iget-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object p2, p2, Lcom/squareup/timessquare/CalendarPickerView;->today:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 889
    :goto_0
    iget-object p2, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->inflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v0}, Lcom/squareup/timessquare/CalendarPickerView;->access$1400(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v1}, Lcom/squareup/timessquare/CalendarPickerView;->access$1500(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/MonthView$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v2, v2, Lcom/squareup/timessquare/CalendarPickerView;->today:Ljava/util/Calendar;

    invoke-static {p3, p2, v0, v1, v2}, Lcom/squareup/timessquare/MonthView;->create(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/text/DateFormat;Lcom/squareup/timessquare/MonthView$Listener;Ljava/util/Calendar;)Lcom/squareup/timessquare/MonthView;

    move-result-object p2

    .line 891
    :cond_1
    iget-object p3, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object p3, p3, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/squareup/timessquare/MonthDescriptor;

    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v0}, Lcom/squareup/timessquare/CalendarPickerView;->access$1600(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p2, p3, p1}, Lcom/squareup/timessquare/MonthView;->init(Lcom/squareup/timessquare/MonthDescriptor;Ljava/util/List;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
