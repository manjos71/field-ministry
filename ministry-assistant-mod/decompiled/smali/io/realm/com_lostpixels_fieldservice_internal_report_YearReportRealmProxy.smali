.class public Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;
.super Lcom/lostpixels/fieldservice/internal/report/YearReport;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

.field private mlstMonthsRealmList:Lio/realm/RealmList;

.field private proxyState:Lio/realm/ProxyState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;-><init>()V

    .line 95
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/YearReport;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/YearReport;
    .locals 9

    .line 528
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 530
    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    return-object v0

    .line 535
    :cond_0
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 536
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 539
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mePioneerColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$mePioneer()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 540
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->miFirstPioneerMonthColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$miFirstPioneerMonth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 541
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->miYearColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$miYear()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 542
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->infirmPioneerColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$infirmPioneer()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 543
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mLastModifiedColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$mLastModified()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 547
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 548
    invoke-static {p0, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;

    move-result-object p1

    .line 549
    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 554
    invoke-virtual {p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    const/4 v1, 0x0

    .line 556
    :goto_0
    invoke-virtual {p2}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 557
    invoke-virtual {p2, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    .line 558
    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    if-eqz v2, :cond_1

    .line 560
    invoke-virtual {v0, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    move-object v3, p0

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    goto :goto_1

    .line 562
    :cond_1
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    move-object v3, p0

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MonthReport;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object p0, v3

    move p3, v6

    move-object p4, v7

    move-object p5, v8

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/YearReport;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/YearReport;
    .locals 11

    move-object v7, p4

    .line 490
    instance-of v1, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_1

    invoke-static {p2}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p2

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 491
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 492
    iget-wide v2, v1, Lio/realm/BaseRealm;->threadId:J

    iget-wide v4, p0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 495
    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_1
    sget-object v1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 500
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_2

    .line 502
    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    return-object v2

    :cond_2
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 508
    const-class v3, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 509
    iget-wide v5, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->miYearColKey:J

    .line 510
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$miYear()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v3, v5, v6, v8, v9}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v10, v5, v8

    if-nez v10, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 515
    :cond_3
    :try_start_0
    invoke-virtual {v3, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 516
    new-instance v2, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;

    invoke-direct {v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;-><init>()V

    .line 517
    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    :cond_4
    move v1, p3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 520
    throw v0

    :goto_0
    if-eqz v1, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p5

    move-object v4, v7

    .line 524
    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/YearReport;Lcom/lostpixels/fieldservice/internal/report/YearReport;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static/range {p0 .. p5}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/YearReport;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    return-object v0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;
    .locals 1

    .line 306
    new-instance v0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/YearReport;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/YearReport;
    .locals 6

    const/4 v0, 0x0

    if-gt p1, p2, :cond_5

    if-nez p0, :cond_0

    goto/16 :goto_3

    .line 782
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez v1, :cond_1

    .line 785
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;-><init>()V

    .line 786
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 789
    :cond_1
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_2

    .line 790
    iget-object p0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    return-object p0

    .line 792
    :cond_2
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    .line 793
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object v1, v2

    .line 797
    :goto_0
    move-object v2, p0

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    check-cast v2, Lio/realm/Realm;

    .line 798
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$mePioneer()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmSet$mePioneer(I)V

    .line 799
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$miFirstPioneerMonth()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmSet$miFirstPioneerMonth(I)V

    .line 800
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$miYear()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmSet$miYear(I)V

    .line 801
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$infirmPioneer()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmSet$infirmPioneer(Z)V

    if-ne p1, p2, :cond_3

    .line 805
    invoke-interface {v1, v0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmSet$mlstMonths(Lio/realm/RealmList;)V

    goto :goto_2

    .line 807
    :cond_3
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v0

    .line 808
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 809
    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmSet$mlstMonths(Lio/realm/RealmList;)V

    add-int/lit8 p1, p1, 0x1

    .line 811
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 813
    invoke-virtual {v0, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {v5, p1, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/MonthReport;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v5

    .line 814
    invoke-virtual {v2, v5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 817
    :cond_4
    :goto_2
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$mLastModified()Ljava/util/Date;

    move-result-object p0

    invoke-interface {v1, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmSet$mLastModified(Ljava/util/Date;)V

    return-object v1

    :cond_5
    :goto_3
    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 291
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, ""

    const-string v2, "YearReport"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 292
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v6, 0x1

    const-string v1, ""

    const-string v2, "mePioneer"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 293
    const-string v1, ""

    const-string v2, "miFirstPioneerMonth"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 294
    const-string v1, ""

    const-string v2, "miYear"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 295
    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "infirmPioneer"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 296
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v2, "MonthReport"

    const-string v3, ""

    const-string v4, "mlstMonths"

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 297
    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    const-string v1, ""

    const-string v2, "mLastModified"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 298
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 302
    sget-object v0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;
    .locals 7

    .line 482
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 483
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v2, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {v0, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 484
    new-instance p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;

    invoke-direct {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;-><init>()V

    .line 485
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/YearReport;Lcom/lostpixels/fieldservice/internal/report/YearReport;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/YearReport;
    .locals 10

    .line 825
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 826
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 827
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mePioneerColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$mePioneer()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 828
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->miFirstPioneerMonthColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$miFirstPioneerMonth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 829
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->miYearColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$miYear()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 830
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->infirmPioneerColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$infirmPioneer()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 832
    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 834
    new-instance v8, Lio/realm/RealmList;

    invoke-direct {v8}, Lio/realm/RealmList;-><init>()V

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 835
    :goto_0
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v9, v2, :cond_1

    .line 836
    invoke-virtual {v0, v9}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    .line 837
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    if-eqz v2, :cond_0

    .line 839
    invoke-virtual {v8, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 841
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MonthReport;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v3

    invoke-virtual {v8, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 844
    :cond_1
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mlstMonthsColKey:J

    invoke-virtual {v1, v2, v3, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    goto :goto_2

    .line 846
    :cond_2
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mlstMonthsColKey:J

    new-instance p0, Lio/realm/RealmList;

    invoke-direct {p0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    .line 848
    :goto_2
    iget-wide p0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mLastModifiedColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxyInterface;->realmGet$mLastModified()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {v1, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 850
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->updateExistingTopLevelObject()V

    return-object p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 909
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 910
    :cond_1
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;

    .line 912
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 913
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    .line 914
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 915
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 916
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_0
    return v1

    .line 917
    :cond_3
    invoke-virtual {v2}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v4

    invoke-virtual {v3}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v5

    if-eq v4, v5, :cond_4

    return v1

    .line 918
    :cond_4
    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v2

    iget-object v3, v3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v3}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/realm/internal/OsSharedRealm$VersionID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 922
    :cond_5
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 923
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 924
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 926
    :cond_7
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 895
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 896
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 897
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v5, 0x20f

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x1f

    if-eqz v1, :cond_1

    .line 901
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_1
    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x1f

    const/16 v0, 0x20

    ushr-long v0, v2, v0

    xor-long/2addr v0, v2

    long-to-int v1, v0

    add-int/2addr v5, v1

    return v5
.end method

.method public realm$injectObjectContext()V
    .locals 3

    .line 100
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 104
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    .line 105
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 106
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 107
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 108
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 109
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$infirmPioneer()Z
    .locals 3

    .line 177
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 178
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->infirmPioneerColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$mLastModified()Ljava/util/Date;
    .locals 3

    .line 260
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 261
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mLastModifiedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 264
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mLastModifiedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mePioneer()I
    .locals 3

    .line 115
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 116
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mePioneerColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$miFirstPioneerMonth()I
    .locals 3

    .line 137
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 138
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->miFirstPioneerMonthColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$miYear()I
    .locals 3

    .line 159
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 160
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->miYearColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$mlstMonths()Lio/realm/RealmList;
    .locals 4

    .line 198
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 200
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->mlstMonthsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 203
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mlstMonthsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 204
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->mlstMonthsRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    .line 890
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmSet$infirmPioneer(Z)V
    .locals 8

    .line 183
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->infirmPioneerColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    :cond_1
    move v6, p1

    .line 192
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 193
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->infirmPioneerColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$mLastModified(Ljava/util/Date;)V
    .locals 14

    .line 269
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 275
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mLastModifiedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 278
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mLastModifiedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 282
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 284
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mLastModifiedColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 287
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mLastModifiedColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$mePioneer(I)V
    .locals 9

    .line 121
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mePioneerColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 131
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mePioneerColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$miFirstPioneerMonth(I)V
    .locals 9

    .line 143
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->miFirstPioneerMonthColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 153
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->miFirstPioneerMonthColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$miYear(I)V
    .locals 1

    .line 165
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 171
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'miYear\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$mlstMonths(Lio/realm/RealmList;)V
    .locals 8

    .line 211
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 212
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 215
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v2, "mlstMonths"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p1, :cond_5

    .line 219
    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 220
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 222
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 223
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    if-eqz v3, :cond_3

    .line 224
    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 227
    :cond_2
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v3, v4}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 233
    :cond_5
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 234
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mlstMonthsColKey:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 236
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 237
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_8

    .line 239
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    .line 240
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    int-to-long v4, v1

    .line 241
    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lio/realm/internal/OsList;->setRow(JJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 244
    :cond_6
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_7

    goto :goto_4

    .line 248
    :cond_7
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    .line 250
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    .line 251
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 252
    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lio/realm/internal/OsList;->addRow(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 857
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    const-string v0, "Invalid object"

    return-object v0

    .line 860
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "YearReport = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 861
    const-string v1, "{mePioneer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->realmGet$mePioneer()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 863
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    const-string v3, "{miFirstPioneerMonth:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->realmGet$miFirstPioneerMonth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 867
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    const-string v3, "{miYear:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->realmGet$miYear()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 871
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    const-string v3, "{infirmPioneer:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->realmGet$infirmPioneer()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    const-string v3, "{mlstMonths:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    const-string v3, "RealmList<MonthReport>["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    const-string v2, "{mLastModified:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->realmGet$mLastModified()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->realmGet$mLastModified()Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "null"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
