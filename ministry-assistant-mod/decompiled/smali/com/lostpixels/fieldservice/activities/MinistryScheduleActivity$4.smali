.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;


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
.method public static synthetic $r8$lambda$97da5CtWJZxkaryIJ6McggL-HTk(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;Ljava/util/Date;Lnet/simonvt/widget/TimePicker;IILjava/lang/String;)V
    .locals 6

    int-to-float p2, p3

    int-to-float p3, p4

    const/high16 p4, 0x42700000    # 60.0f

    div-float/2addr p3, p4

    add-float v4, p2, p3

    .line 376
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    .line 376
    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    float-to-double v0, v4

    invoke-static {p3, v0, v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mformatToTime(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    invoke-virtual {p2, p1, p3, p4}, Lcom/squareup/timessquare/CalendarPickerView;->setTextOnDate(Ljava/util/Date;Ljava/lang/String;Z)Z

    .line 377
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/timessquare/CalendarPickerView;->updateText()V

    .line 379
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v2

    .line 380
    new-instance v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$1;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$1;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;ILjava/util/Date;FLjava/lang/String;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    .line 388
    iget-object p0, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    iget p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iLastMonthToShow:I

    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mupdateMonthTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)V

    .line 389
    iget-object p0, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mupdateYearTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V

    .line 390
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetTimePlanned()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateLongClicked(Ljava/util/Date;)V
    .locals 2

    .line 402
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/timessquare/CalendarPickerView;->getSelectionMode()Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    move-result-object p1

    sget-object v0, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->SINGLE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    if-ne p1, v0, :cond_0

    .line 403
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity-IA;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fputactionMode(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;Landroidx/appcompat/view/ActionMode;)V

    .line 404
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object p1

    sget-object v0, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->RANGE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    invoke-virtual {p1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->setSelectionMode(Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;)V

    :cond_0
    return-void
.end method

.method public onDateSelected(Ljava/util/Date;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetmlTimeForLastTap(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 354
    :cond_0
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fputmlTimeForLastTap(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;J)V

    .line 355
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 356
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 358
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/timessquare/CalendarPickerView;->getSelectionMode()Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    move-result-object v3

    sget-object v4, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->SINGLE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_2

    .line 359
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->access$200(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lio/realm/Realm;

    move-result-object v3

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object v3

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetiSelectedServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getTime(ILjava/util/Calendar;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    move-result-object v2

    .line 361
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->getTime()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_1

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    float-to-int v6, v3

    int-to-float v4, v6

    sub-float/2addr v3, v4

    const/high16 v4, 0x42700000    # 60.0f

    mul-float v3, v3, v4

    float-to-double v3, v3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v7

    double-to-int v5, v3

    move v11, v5

    move v10, v6

    .line 372
    :goto_0
    new-instance v7, Lnet/simonvt/app/TimePickerDialogComment;

    iget-object v8, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    new-instance v9, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0, v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$$ExternalSyntheticLambda0;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;Ljava/util/Date;)V

    .line 391
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->getComment()Ljava/lang/String;

    move-result-object v12

    const v15, 0x7f12004b

    const/16 v16, 0x1

    const v13, 0x7f1201bb

    const v14, 0x7f120054

    invoke-direct/range {v7 .. v16}, Lnet/simonvt/app/TimePickerDialogComment;-><init>(Landroid/content/Context;Lnet/simonvt/app/TimePickerDialogComment$OnTimeSetListenerComment;IILjava/lang/String;IIIZ)V

    .line 392
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    return-void

    .line 395
    :cond_2
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetactionMode(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroidx/appcompat/view/ActionMode;

    move-result-object v1

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    const v3, 0x7f12026c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/timessquare/CalendarPickerView;->getSelectionSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
