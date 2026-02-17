.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->initCalendar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    add-int/2addr p3, p2

    const/4 p1, 0x1

    if-ne p3, p4, :cond_0

    .line 321
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object p3

    .line 322
    invoke-virtual {p3}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result p3

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object p3

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mdpToPx(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)I

    move-result v1

    add-int/2addr v0, v1

    if-gt p3, v0, :cond_0

    sub-int/2addr p4, p1

    .line 324
    rem-int/lit8 p4, p4, 0xc

    .line 325
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    iget p2, p1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iLastMonthToShow:I

    if-eq p4, p2, :cond_2

    const/16 p2, 0xb

    .line 326
    iput p2, p1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iLastMonthToShow:I

    .line 327
    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mupdateMonthTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)V

    return-void

    .line 330
    :cond_0
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetiCurrentServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I

    move-result p4

    div-int/lit8 v0, p2, 0xc

    add-int/2addr p4, v0

    sub-int/2addr p4, p1

    invoke-static {p3, p4}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fputiSelectedServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)V

    .line 331
    rem-int/lit8 p2, p2, 0xc

    .line 333
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetiPreviousServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I

    move-result p3

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p4}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetiSelectedServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I

    move-result p4

    if-eq p3, p4, :cond_1

    .line 334
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetiSelectedServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I

    move-result p4

    invoke-static {p3, p4}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fputiPreviousServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)V

    .line 335
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mupdateYearTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 339
    :goto_0
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    iget p4, p3, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iLastMonthToShow:I

    if-ne p2, p4, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 340
    :cond_3
    :goto_1
    iput p2, p3, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iLastMonthToShow:I

    .line 342
    invoke-static {p3, p2}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mupdateMonthTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
