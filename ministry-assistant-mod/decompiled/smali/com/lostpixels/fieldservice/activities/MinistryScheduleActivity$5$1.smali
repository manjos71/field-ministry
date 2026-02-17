.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->updateUI(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

.field final synthetic val$fMonthTotal:D


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;D)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    iput-wide p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->val$fMonthTotal:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 434
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 436
    :try_start_0
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 437
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    iget v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->val$iMonthPosition:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v1

    sub-int/2addr v1, v2

    .line 438
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    .line 439
    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x2

    .line 440
    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 441
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "MMMM"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 442
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    iget-object v5, v5, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fputcurrentMonth(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :try_start_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcurrentMonth(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "The month"

    if-nez v1, :cond_0

    .line 446
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    const-string v6, "null"

    invoke-virtual {v1, v5, v6}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 448
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    iget-object v6, v6, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcurrentMonth(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    :catch_0
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgettxtMonthTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    iget-object v5, v5, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    const v6, 0x7f12020b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    iget-object v6, v6, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcurrentMonth(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    iget-object v5, v5, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v5}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetiSelectedServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3, v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v3

    if-lez v3, :cond_1

    .line 457
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgettxtMonthTotalTime(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v5, "%s/%sh"

    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/Time;

    iget-wide v9, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->val$fMonthTotal:D

    invoke-direct {v6, v9, v10}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    iget-object v7, v7, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v7}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Z

    move-result v7

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    iget-object v9, v9, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v9}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Z

    move-result v9

    .line 458
    invoke-static {v6, v7, v9}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 459
    invoke-static {v1, v2, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v8

    aput-object v1, v4, v2

    .line 457
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgettxtMonthTotalTime(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "%sh"

    new-instance v4, Lcom/lostpixels/fieldservice/internal/report/Time;

    iget-wide v5, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->val$fMonthTotal:D

    invoke-direct {v4, v5, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    iget-object v5, v5, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v5}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;

    iget-object v6, v6, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v8

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 465
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    :goto_2
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 466
    throw v1
.end method
