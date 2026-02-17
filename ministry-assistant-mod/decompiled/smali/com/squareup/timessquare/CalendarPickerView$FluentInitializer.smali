.class public Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/timessquare/CalendarPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FluentInitializer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/timessquare/CalendarPickerView;


# direct methods
.method public constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;)V
    .locals 0

    .line 757
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inMode(Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iput-object p1, v0, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    .line 763
    invoke-static {v0}, Lcom/squareup/timessquare/CalendarPickerView;->access$300(Lcom/squareup/timessquare/CalendarPickerView;)V

    return-object p0
.end method

.method public withSelectedDate(Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
    .locals 2

    const/4 v0, 0x1

    .line 772
    new-array v0, v0, [Ljava/util/Date;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->withSelectedDates(Ljava/util/Collection;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    move-result-object p1

    return-object p1
.end method

.method public withSelectedDates(Ljava/util/Collection;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
    .locals 6

    .line 780
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v0, v0, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    sget-object v1, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->SINGLE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SINGLE mode can\'t be used with multiple selectedDates"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 784
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 785
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->selectDate(Ljava/util/Date;)Z

    goto :goto_1

    .line 790
    :cond_2
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {p1}, Lcom/squareup/timessquare/CalendarPickerView;->access$400(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v1, v0

    const/4 v2, 0x0

    .line 791
    :goto_2
    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v3, v3, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 792
    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v3, v3, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/timessquare/MonthDescriptor;

    if-nez v0, :cond_5

    .line 794
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v4, v4, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    .line 795
    invoke-static {v5, v3}, Lcom/squareup/timessquare/CalendarPickerView;->access$500(Ljava/util/Calendar;Lcom/squareup/timessquare/MonthDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 796
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    .line 800
    invoke-static {p1, v3}, Lcom/squareup/timessquare/CalendarPickerView;->access$500(Ljava/util/Calendar;Lcom/squareup/timessquare/MonthDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 801
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 806
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->access$600(Lcom/squareup/timessquare/CalendarPickerView;I)V

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    .line 808
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->access$600(Lcom/squareup/timessquare/CalendarPickerView;I)V

    .line 811
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {p1}, Lcom/squareup/timessquare/CalendarPickerView;->access$300(Lcom/squareup/timessquare/CalendarPickerView;)V

    return-object p0
.end method
