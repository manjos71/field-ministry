.class Lcom/squareup/timessquare/CalendarPickerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/timessquare/CalendarPickerView;->scrollToSelectedMonth(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/timessquare/CalendarPickerView;

.field final synthetic val$selectedIndex:I


# direct methods
.method constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;I)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$1;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iput p2, p0, Lcom/squareup/timessquare/CalendarPickerView$1;->val$selectedIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$1;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget v1, p0, Lcom/squareup/timessquare/CalendarPickerView$1;->val$selectedIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    return-void
.end method
