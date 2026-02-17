.class Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/timessquare/CalendarPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthCellWithMonthIndex"
.end annotation


# instance fields
.field public final cell:Lcom/squareup/timessquare/MonthCellDescriptor;

.field public final monthIndex:I


# direct methods
.method public constructor <init>(Lcom/squareup/timessquare/MonthCellDescriptor;I)V
    .locals 0

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;->cell:Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 753
    iput p2, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;->monthIndex:I

    return-void
.end method
