.class public Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;
.super Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;

.field private itemsRealmList:Lio/realm/RealmList;

.field private proxyState:Lio/realm/ProxyState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;-><init>()V

    .line 83
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;
    .locals 9

    .line 347
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 349
    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    return-object v0

    .line 354
    :cond_0
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 355
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 358
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;->yearColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxyInterface;->realmGet$year()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 362
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 363
    invoke-static {p0, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;

    move-result-object p1

    .line 364
    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxyInterface;->realmGet$items()Lio/realm/RealmList;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 369
    invoke-virtual {p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->realmGet$items()Lio/realm/RealmList;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    const/4 v1, 0x0

    .line 371
    :goto_0
    invoke-virtual {p2}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 372
    invoke-virtual {p2, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    .line 373
    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    if-eqz v2, :cond_1

    .line 375
    invoke-virtual {v0, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    move-object v3, p0

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    goto :goto_1

    .line 377
    :cond_1
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    move-object v3, p0

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

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

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;
    .locals 11

    move-object v7, p4

    .line 309
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

    .line 310
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 311
    iget-wide v2, v1, Lio/realm/BaseRealm;->threadId:J

    iget-wide v4, p0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 314
    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    sget-object v1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 319
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_2

    .line 321
    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    return-object v2

    :cond_2
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 327
    const-class v3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 328
    iget-wide v5, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;->yearColKey:J

    .line 329
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxyInterface;->realmGet$year()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v3, v5, v6, v8, v9}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v10, v5, v8

    if-nez v10, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 334
    :cond_3
    :try_start_0
    invoke-virtual {v3, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 335
    new-instance v2, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;

    invoke-direct {v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;-><init>()V

    .line 336
    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    :cond_4
    move v1, p3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 339
    throw v0

    :goto_0
    if-eqz v1, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p5

    move-object v4, v7

    .line 343
    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static/range {p0 .. p5}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    move-result-object v0

    return-object v0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;
    .locals 1

    .line 191
    new-instance v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;
    .locals 6

    const/4 v0, 0x0

    if-gt p1, p2, :cond_5

    if-nez p0, :cond_0

    goto :goto_3

    .line 565
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez v1, :cond_1

    .line 568
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;-><init>()V

    .line 569
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 572
    :cond_1
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_2

    .line 573
    iget-object p0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    return-object p0

    .line 575
    :cond_2
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    .line 576
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object v1, v2

    .line 580
    :goto_0
    move-object v2, p0

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    check-cast v2, Lio/realm/Realm;

    if-ne p1, p2, :cond_3

    .line 584
    invoke-interface {v1, v0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxyInterface;->realmSet$items(Lio/realm/RealmList;)V

    goto :goto_2

    .line 586
    :cond_3
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxyInterface;->realmGet$items()Lio/realm/RealmList;

    move-result-object v0

    .line 587
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 588
    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxyInterface;->realmSet$items(Lio/realm/RealmList;)V

    add-int/lit8 p1, p1, 0x1

    .line 590
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 592
    invoke-virtual {v0, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-static {v5, p1, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    move-result-object v5

    .line 593
    invoke-virtual {v2, v5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 596
    :cond_4
    :goto_2
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxyInterface;->realmGet$year()I

    move-result p0

    invoke-interface {v1, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxyInterface;->realmSet$year(I)V

    return-object v1

    :cond_5
    :goto_3
    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 180
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v1, ""

    const-string v2, "MinistryPlannerYear"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 181
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v2, "MinistryPlannerItem"

    const-string v3, ""

    const-string v4, "items"

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 182
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v1, ""

    const-string v2, "year"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 183
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 187
    sget-object v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;
    .locals 7

    .line 301
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 302
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-virtual {v0, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 303
    new-instance p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;

    invoke-direct {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;-><init>()V

    .line 304
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;
    .locals 10

    .line 604
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 605
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 607
    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxyInterface;->realmGet$items()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 609
    new-instance v8, Lio/realm/RealmList;

    invoke-direct {v8}, Lio/realm/RealmList;-><init>()V

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 610
    :goto_0
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v9, v2, :cond_1

    .line 611
    invoke-virtual {v0, v9}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    .line 612
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    if-eqz v2, :cond_0

    .line 614
    invoke-virtual {v8, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 616
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    move-result-object v3

    invoke-virtual {v8, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 619
    :cond_1
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;->itemsColKey:J

    invoke-virtual {v1, v2, v3, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    goto :goto_2

    .line 621
    :cond_2
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;->itemsColKey:J

    new-instance p0, Lio/realm/RealmList;

    invoke-direct {p0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    .line 623
    :goto_2
    iget-wide p0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;->yearColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxyInterface;->realmGet$year()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 625
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

    .line 668
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 669
    :cond_1
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;

    .line 671
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 672
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    .line 673
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 674
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 675
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_0
    return v1

    .line 676
    :cond_3
    invoke-virtual {v2}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v4

    invoke-virtual {v3}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v5

    if-eq v4, v5, :cond_4

    return v1

    .line 677
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

    .line 681
    :cond_5
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 682
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 683
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 685
    :cond_7
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 654
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 655
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 656
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 659
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

    .line 660
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

    .line 88
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 92
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;

    .line 93
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 94
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 95
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 96
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 97
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$items()Lio/realm/RealmList;
    .locals 4

    .line 102
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 104
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->itemsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;->itemsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 108
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->itemsRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    .line 649
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$year()I
    .locals 3

    .line 164
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 165
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;->yearColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmSet$items(Lio/realm/RealmList;)V
    .locals 8

    .line 115
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 116
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 119
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v2, "items"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p1, :cond_5

    .line 123
    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 124
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 126
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 127
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    if-eqz v3, :cond_3

    .line 128
    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 131
    :cond_2
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v3, v4}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 137
    :cond_5
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 138
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;->itemsColKey:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 140
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 141
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_8

    .line 143
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    .line 144
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    int-to-long v4, v1

    .line 145
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

    .line 148
    :cond_6
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_7

    goto :goto_4

    .line 152
    :cond_7
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    .line 154
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    .line 155
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 156
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

.method public realmSet$year(I)V
    .locals 1

    .line 170
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 176
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'year\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 632
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    const-string v0, "Invalid object"

    return-object v0

    .line 635
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MinistryPlannerYear = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    const-string v1, "{items:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string v1, "RealmList<MinistryPlannerItem>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->realmGet$items()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const-string v3, "{year:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->realmGet$year()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
