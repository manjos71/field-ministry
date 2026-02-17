.class Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->updateFromRealMinistry2(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

.field final synthetic val$lastMonths:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;Ljava/util/List;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;->val$lastMonths:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 21

    move-object/from16 v1, p0

    .line 520
    :try_start_0
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 521
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v2

    .line 522
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v3

    .line 523
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v0

    .line 525
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 526
    iget-object v5, v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;->val$lastMonths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 527
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    const/16 v8, 0x17

    .line 528
    invoke-virtual {v5, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    const/16 v8, 0x3b

    .line 529
    invoke-virtual {v5, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 530
    invoke-virtual {v5, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x6

    const/4 v8, -0x1

    .line 531
    invoke-virtual {v5, v6, v8}, Ljava/util/Calendar;->add(II)V

    .line 533
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-static {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v9

    .line 534
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-static {v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v10

    if-le v10, v9, :cond_0

    add-int/lit8 v9, v9, 0x1

    .line 537
    :cond_0
    iget-object v10, v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v10, v9}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->sort(I)V

    .line 539
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 540
    iget-object v11, v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;->val$lastMonths:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 541
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v13

    invoke-static {v13}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getDateId(Ljava/util/Date;)I

    move-result v13

    invoke-virtual {v10, v13, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 545
    :cond_1
    iget-object v11, v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-static {v11, v9}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->-$$Nest$mgetYear(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;I)Lio/realm/RealmList;

    move-result-object v11

    if-nez v11, :cond_2

    .line 547
    new-instance v11, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-direct {v11}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;-><init>()V

    .line 548
    invoke-virtual {v11, v9}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->setYear(I)V

    .line 549
    iget-object v12, v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v12

    invoke-virtual {v12, v11}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v11, v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-static {v11, v9}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->-$$Nest$mgetYear(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;I)Lio/realm/RealmList;

    move-result-object v11

    .line 554
    :cond_2
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 556
    invoke-virtual {v11}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    .line 557
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$date()I

    move-result v15

    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$comment()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v15, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_1

    .line 561
    :cond_3
    invoke-virtual {v11}, Lio/realm/RealmList;->size()I

    move-result v13

    sub-int/2addr v13, v7

    .line 562
    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->-$$Nest$smgetDateId(Ljava/util/Calendar;)I

    move-result v14

    .line 563
    :goto_2
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 564
    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->-$$Nest$smgetDateId(Ljava/util/Calendar;)I

    move-result v15

    :goto_3
    if-ltz v13, :cond_7

    .line 567
    invoke-virtual {v11, v13}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$date()I

    move-result v6

    if-le v14, v6, :cond_4

    goto :goto_4

    :cond_4
    if-lt v15, v6, :cond_5

    .line 572
    invoke-virtual {v11, v13}, Lio/realm/RealmList;->deleteFromRealm(I)V

    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    :cond_5
    if-ge v15, v6, :cond_6

    add-int/lit8 v13, v13, -0x1

    :cond_6
    const/4 v6, 0x6

    goto :goto_3

    .line 580
    :cond_7
    :goto_4
    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    if-eqz v6, :cond_c

    .line 583
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v17

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v19

    add-double v17, v17, v19

    if-eqz v2, :cond_8

    .line 585
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v19

    add-double v17, v17, v19

    :cond_8
    if-eqz v3, :cond_9

    .line 587
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v19

    add-double v17, v17, v19

    :cond_9
    if-eqz v0, :cond_a

    .line 589
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v19

    add-double v17, v17, v19

    :cond_a
    move/from16 v16, v9

    move-wide/from16 v8, v17

    .line 590
    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 591
    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    double-to-float v8, v8

    if-nez v17, :cond_b

    const-string v17, ""

    :cond_b
    move-object/from16 v9, v17

    invoke-direct {v6, v15, v8, v9}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;-><init>(IFLjava/lang/String;)V

    invoke-virtual {v11, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    move/from16 v16, v9

    :goto_5
    const/4 v6, 0x2

    .line 593
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v8, 0x8

    if-ne v6, v8, :cond_e

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v7, :cond_e

    .line 594
    iget-object v6, v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move/from16 v9, v16

    invoke-virtual {v6, v9}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->sort(I)V

    add-int/lit8 v9, v9, -0x1

    .line 596
    iget-object v6, v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v6, v9}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->sort(I)V

    .line 597
    iget-object v6, v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-static {v6, v9}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->-$$Nest$mgetYear(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;I)Lio/realm/RealmList;

    move-result-object v6

    if-nez v6, :cond_d

    .line 599
    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-direct {v6}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;-><init>()V

    .line 600
    invoke-virtual {v6, v9}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->setYear(I)V

    .line 601
    iget-object v8, v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v8

    invoke-virtual {v8, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v6, v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-static {v6, v9}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->-$$Nest$mgetYear(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;I)Lio/realm/RealmList;

    move-result-object v6

    .line 605
    :cond_d
    invoke-virtual {v6}, Lio/realm/RealmList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    move-object v11, v6

    move v13, v8

    :goto_6
    const/4 v6, 0x6

    const/4 v8, -0x1

    goto :goto_7

    :cond_e
    move/from16 v9, v16

    goto :goto_6

    .line 607
    :goto_7
    invoke-virtual {v5, v6, v8}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_2

    .line 609
    :cond_f
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v0, v9}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->sort(I)V

    .line 611
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmSet$dateChanged(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 614
    :goto_8
    const-string v2, "Sync ministry schedule"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :try_start_1
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
