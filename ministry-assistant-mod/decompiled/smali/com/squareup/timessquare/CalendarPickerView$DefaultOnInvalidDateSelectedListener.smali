.class Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/timessquare/CalendarPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultOnInvalidDateSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/timessquare/CalendarPickerView;


# direct methods
.method private constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;Lcom/squareup/timessquare/CalendarPickerView$1;)V
    .locals 0

    .line 896
    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;-><init>(Lcom/squareup/timessquare/CalendarPickerView;)V

    return-void
.end method


# virtual methods
.method public onInvalidDateSelected(Ljava/util/Date;)V
    .locals 5

    .line 899
    iget-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    .line 900
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/squareup/timessquare/R$string;->invalid_date:I

    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v1}, Lcom/squareup/timessquare/CalendarPickerView;->access$1700(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$700(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    .line 901
    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$1700(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/text/DateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v3}, Lcom/squareup/timessquare/CalendarPickerView;->access$800(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 900
    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 902
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
