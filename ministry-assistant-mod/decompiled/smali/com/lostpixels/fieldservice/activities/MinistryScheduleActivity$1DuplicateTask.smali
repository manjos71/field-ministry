.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->onDuplicate(Ljava/util/Date;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DuplicateTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

.field final synthetic val$dates:Ljava/util/List;

.field final synthetic val$eMethod:I

.field final synthetic val$nDaysToCopy:I

.field final synthetic val$sameWeekDay:Z

.field final synthetic val$startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;Ljava/util/List;Ljava/util/Date;IZI)V
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$dates:Ljava/util/List;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$startDate:Ljava/util/Date;

    iput p4, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$nDaysToCopy:I

    iput-boolean p5, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$sameWeekDay:Z

    iput p6, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$eMethod:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 644
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 19

    move-object/from16 v1, p0

    .line 667
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$dates:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v0

    .line 668
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$startDate:Ljava/util/Date;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v5

    .line 669
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v3

    .line 671
    :try_start_0
    invoke-virtual {v3}, Lio/realm/Realm;->isInTransaction()Z

    move-result v10

    .line 672
    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_0

    .line 675
    :try_start_1
    invoke-virtual {v3}, Lio/realm/Realm;->beginTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catch_0
    nop

    goto/16 :goto_8

    .line 678
    :cond_0
    :goto_0
    iget v6, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$nDaysToCopy:I

    new-array v11, v6, [D

    .line 680
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    const/4 v6, 0x0

    .line 681
    :goto_1
    iget v7, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$nDaysToCopy:I

    if-ge v6, v7, :cond_1

    .line 682
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$dates:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    invoke-virtual {v12, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 683
    invoke-virtual {v4, v0, v12}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getTime(ILjava/util/Calendar;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->getTime()F

    move-result v7

    float-to-double v7, v7

    aput-wide v7, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 689
    :cond_1
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$startDate:Ljava/util/Date;

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 690
    iget-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$sameWeekDay:Z

    const/4 v13, 0x7

    const/4 v6, -0x1

    if-eqz v0, :cond_2

    .line 691
    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    .line 695
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 696
    iget v7, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$eMethod:I

    const/4 v15, 0x5

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    const/4 v9, 0x2

    if-eq v7, v8, :cond_4

    if-eq v7, v9, :cond_3

    goto :goto_3

    .line 717
    :cond_3
    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v6, v5}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mgetEndOfServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_3

    .line 706
    :cond_4
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$startDate:Ljava/util/Date;

    invoke-virtual {v12, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 707
    invoke-virtual {v12, v9, v8}, Ljava/util/Calendar;->add(II)V

    .line 708
    invoke-virtual {v12, v15, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xb

    .line 709
    invoke-virtual {v12, v7, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    .line 710
    invoke-virtual {v12, v7, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    .line 711
    invoke-virtual {v12, v7, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    .line 712
    invoke-virtual {v12, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 713
    invoke-virtual {v12, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 714
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_3

    .line 698
    :cond_5
    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$startDate:Ljava/util/Date;

    invoke-virtual {v12, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 699
    iget v6, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$nDaysToCopy:I

    const/4 v7, 0x6

    invoke-virtual {v12, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 700
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v7, v5}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mgetEndOfServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 701
    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v6, v5}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mgetEndOfServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_3

    .line 703
    :cond_6
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 722
    :goto_3
    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$startDate:Ljava/util/Date;

    invoke-virtual {v12, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :goto_4
    const/16 v16, 0x0

    .line 726
    :goto_5
    invoke-virtual {v12, v14}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 728
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    aget-wide v17, v11, v16

    const-string v9, ""

    move-wide/from16 v7, v17

    const/4 v13, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->planTime(ILjava/util/Date;DLjava/lang/String;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    .line 729
    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object v6

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    iget-object v8, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    move-object v9, v14

    aget-wide v13, v11, v16

    invoke-static {v8, v13, v14}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mformatToTime(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v2}, Lcom/squareup/timessquare/CalendarPickerView;->setTextOnDate(Ljava/util/Date;Ljava/lang/String;Z)Z

    add-int/lit8 v6, v16, 0x1

    const/4 v13, 0x1

    .line 733
    invoke-virtual {v12, v15, v13}, Ljava/util/Calendar;->add(II)V

    .line 735
    iget v7, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$nDaysToCopy:I

    if-ne v6, v7, :cond_9

    .line 737
    iget-boolean v6, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->val$sameWeekDay:Z

    const/4 v7, 0x7

    if-eqz v6, :cond_7

    .line 739
    :goto_6
    invoke-virtual {v12, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v0, :cond_8

    :cond_7
    const/4 v13, 0x1

    goto :goto_7

    :cond_8
    const/4 v13, 0x1

    .line 741
    invoke-virtual {v12, v15, v13}, Ljava/util/Calendar;->add(II)V

    goto :goto_6

    :goto_7
    move-object v14, v9

    const/4 v8, 0x1

    const/4 v13, 0x7

    goto :goto_4

    :cond_9
    move/from16 v16, v6

    move-object v14, v9

    const/4 v8, 0x1

    const/4 v13, 0x7

    goto :goto_5

    .line 748
    :cond_a
    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->sort(I)V

    if-nez v10, :cond_b

    .line 751
    invoke-virtual {v3}, Lio/realm/Realm;->commitTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :goto_8
    if-nez v10, :cond_b

    .line 754
    :try_start_2
    invoke-virtual {v3}, Lio/realm/Realm;->cancelTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 757
    :cond_b
    :goto_9
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    .line 760
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetTimePlanned()V

    const/4 v0, 0x0

    return-object v0

    .line 757
    :goto_a
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    .line 758
    throw v0
.end method

.method protected onCancelled()V
    .locals 0

    .line 661
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 644
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 654
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/timessquare/CalendarPickerView;->updateText()V

    .line 655
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mupdateYearTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V

    .line 656
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1DuplicateTask;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    iget v0, p1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iLastMonthToShow:I

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mupdateMonthTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
