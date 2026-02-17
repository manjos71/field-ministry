.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyGestureDetector"
.end annotation


# instance fields
.field final activity:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)V
    .locals 1

    .line 1000
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 1001
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1062
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    iget v0, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    if-nez v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmMonthFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->canDoubleTap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmMonthFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->setMonth(Ljava/util/Date;)V

    goto :goto_0

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    iget v0, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmYearFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->canDoubleTap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmYearFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->setYear(Ljava/util/Date;)V

    .line 1071
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 p4, 0x0

    .line 1007
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x437a0000    # 250.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return p4

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->access$400(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return p4

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmMonthFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1013
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmMonthFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->didFling()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 p4, 0x1

    .line 1017
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x42f00000    # 120.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 1018
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 1019
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1020
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    iget p2, p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    if-nez p2, :cond_3

    .line 1022
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$mgetCurrentMonth(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1023
    invoke-virtual {p1, v1, p4}, Ljava/util/Calendar;->add(II)V

    .line 1024
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmMonthFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->setMonth(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 1025
    :cond_3
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    iget p2, p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    if-ne p2, p4, :cond_6

    .line 1026
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$mgetCurrentYear(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1027
    invoke-virtual {p1, p4, p4}, Ljava/util/Calendar;->add(II)V

    .line 1028
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmYearFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->setYear(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 1030
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    cmpl-float p1, p2, v3

    if-lez p1, :cond_6

    .line 1031
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_6

    .line 1032
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1033
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    iget p2, p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    const/4 p3, -0x1

    if-nez p2, :cond_5

    .line 1034
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$mgetCurrentMonth(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1035
    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 1036
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmMonthFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->setMonth(Ljava/util/Date;)V

    goto :goto_0

    .line 1037
    :cond_5
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    iget p2, p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    if-ne p2, p4, :cond_6

    .line 1038
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$mgetCurrentYear(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1039
    invoke-virtual {p1, p4, p3}, Ljava/util/Calendar;->add(II)V

    .line 1040
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmYearFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->setYear(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    :goto_0
    return p4
.end method
