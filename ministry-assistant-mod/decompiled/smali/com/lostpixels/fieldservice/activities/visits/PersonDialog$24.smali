.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->saveAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;


# direct methods
.method public static synthetic $r8$lambda$QjdXlyhlmGd7I5U8F0nFIPhSsSM(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;)V
    .locals 2

    .line 1573
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    .line 1573
    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->access$1400(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;

    move-result-object v0

    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, p0, v1}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    return-void
.end method

.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V
    .locals 0

    .line 1502
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 29

    move-object/from16 v0, p0

    .line 1505
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    .line 1506
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    .line 1507
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1508
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1509
    const-string v7, "checkAutoCountStudies"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1510
    const-string v8, "ReportDensity"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1512
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->access$1000(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;

    move-result-object v10

    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v10, v11}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateNumberOfStudies(Lio/realm/Realm;Landroid/content/Context;)V

    .line 1514
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1515
    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v11}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetmPersonKey(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)J

    move-result-wide v11

    const-string v13, "PersonID"

    invoke-virtual {v10, v13, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1516
    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v11}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetbPersonChanged(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1517
    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {v11, v2, v10}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 1519
    :cond_0
    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const/4 v12, -0x1

    invoke-virtual {v11, v12, v10}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1521
    :goto_0
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 1523
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgettagGroup(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lme/gujun/android/taggroup/TagGroup;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 1524
    new-instance v10, Lio/realm/RealmList;

    invoke-direct {v10}, Lio/realm/RealmList;-><init>()V

    .line 1525
    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v11}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgettagGroup(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lme/gujun/android/taggroup/TagGroup;

    move-result-object v11

    invoke-virtual {v11}, Lme/gujun/android/taggroup/TagGroup;->getTags()[Ljava/lang/String;

    move-result-object v11

    .line 1526
    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1527
    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v11}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setCustomTags(Lio/realm/RealmList;)V

    .line 1530
    :cond_1
    new-instance v14, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 1531
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$sfgetmSessions()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1532
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$sfgetmSessions()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_3

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v13, v13, 0x1

    check-cast v15, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    if-eqz v15, :cond_2

    .line 1533
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result v16

    if-nez v16, :cond_2

    .line 1534
    iget-object v12, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12, v2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$mgetComment(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setComment(Ljava/lang/String;)V

    .line 1535
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->access$1200(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;

    move-result-object v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    iget-object v12, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v12}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->access$1100(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;

    move-result-object v12

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v2, v12, v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v2

    .line 1536
    invoke-virtual {v2, v15}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 1537
    invoke-virtual {v14, v15}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->add(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    const/4 v12, 0x1

    :cond_2
    const/4 v2, 0x2

    const/4 v9, 0x0

    goto :goto_1

    .line 1541
    :cond_3
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$sfgetmSessions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 1542
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$sfgetmSessions()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 1543
    :cond_4
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$sfgetmSessions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_a

    if-eqz v7, :cond_6

    .line 1547
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1548
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v2

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1549
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v5, :cond_6

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v3, :cond_6

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->isCountStudy()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 1553
    :goto_3
    const-string v1, "inputMode"

    const-string v2, "hhmm"

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 1554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1555
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isBeforeOctober2023(Ljava/util/Date;)Z

    move-result v2

    const v3, 0x7f120506

    if-nez v2, :cond_8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_9

    .line 1566
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1556
    :cond_8
    :goto_4
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const v5, 0x7f12035a

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->access$1300(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;

    move-result-object v12

    iget-object v13, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v12 .. v28}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getReport(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZZZZZZZZZZZZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_9

    .line 1561
    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    :cond_9
    :goto_5
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    .line 1570
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    .line 1569
    invoke-static {v2, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1570
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1573
    :cond_a
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24$$ExternalSyntheticLambda0;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;)V

    invoke-static {v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    .line 1574
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    :cond_b
    return-void
.end method
