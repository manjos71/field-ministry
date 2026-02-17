.class public Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;
.super Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

.field private proxyState:Lio/realm/ProxyState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;-><init>()V

    .line 85
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;
    .locals 3

    .line 341
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_0

    .line 343
    check-cast p3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    return-object p3

    .line 348
    :cond_0
    const-class p3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {p0, p3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p3

    .line 349
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v0, p3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 352
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->timeColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxyInterface;->realmGet$time()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 353
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->commentColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxyInterface;->realmGet$comment()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 354
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->dateColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxyInterface;->realmGet$date()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 358
    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 359
    invoke-static {p0, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;

    move-result-object p0

    .line 360
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;
    .locals 11

    move-object v7, p4

    .line 303
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

    .line 304
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 305
    iget-wide v2, v1, Lio/realm/BaseRealm;->threadId:J

    iget-wide v4, p0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 308
    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    sget-object v1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 313
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_2

    .line 315
    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    return-object v2

    :cond_2
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 321
    const-class v3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 322
    iget-wide v5, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->dateColKey:J

    .line 323
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxyInterface;->realmGet$date()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v3, v5, v6, v8, v9}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v10, v5, v8

    if-nez v10, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 328
    :cond_3
    :try_start_0
    invoke-virtual {v3, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 329
    new-instance v2, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;

    invoke-direct {v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;-><init>()V

    .line 330
    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    :cond_4
    move v1, p3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 333
    throw v0

    :goto_0
    if-eqz v1, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p5

    move-object v4, v7

    .line 337
    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static/range {p0 .. p5}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    move-result-object v0

    return-object v0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;
    .locals 1

    .line 185
    new-instance v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;
    .locals 1

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 491
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 494
    new-instance p2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-direct {p2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;-><init>()V

    .line 495
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 498
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 499
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    return-object p0

    .line 501
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    .line 502
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 506
    :goto_0
    move-object p1, p0

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    check-cast p1, Lio/realm/Realm;

    .line 507
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxyInterface;->realmGet$time()F

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxyInterface;->realmSet$time(F)V

    .line 508
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxyInterface;->realmGet$comment()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxyInterface;->realmSet$comment(Ljava/lang/String;)V

    .line 509
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxyInterface;->realmGet$date()I

    move-result p0

    invoke-interface {p2, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxyInterface;->realmSet$date(I)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 173
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-string v1, ""

    const-string v2, "MinistryPlannerItem"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 174
    sget-object v3, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v6, 0x1

    const-string v1, ""

    const-string v2, "time"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 175
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    const-string v1, ""

    const-string v2, "comment"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 176
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v1, ""

    const-string v2, "date"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 177
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 181
    sget-object v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;
    .locals 7

    .line 295
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 296
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {v0, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 297
    new-instance p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;

    invoke-direct {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;-><init>()V

    .line 298
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;
    .locals 2

    .line 517
    const-class p4, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {p0, p4}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p0

    .line 518
    new-instance p4, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {p4, p0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 519
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->timeColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxyInterface;->realmGet$time()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 520
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->commentColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxyInterface;->realmGet$comment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 521
    iget-wide p0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->dateColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxyInterface;->realmGet$date()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 523
    invoke-virtual {p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->updateExistingTopLevelObject()V

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

    .line 570
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 571
    :cond_1
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;

    .line 573
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 574
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    .line 575
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 576
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_0
    return v1

    .line 578
    :cond_3
    invoke-virtual {v2}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v4

    invoke-virtual {v3}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v5

    if-eq v4, v5, :cond_4

    return v1

    .line 579
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

    .line 583
    :cond_5
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 584
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 585
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 587
    :cond_7
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 556
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 557
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 558
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 561
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

    .line 562
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

    .line 90
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 94
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    .line 95
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 96
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 97
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 98
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 99
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$comment()Ljava/lang/String;
    .locals 3

    .line 127
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 128
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->commentColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$date()I
    .locals 3

    .line 157
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 158
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->dateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    .line 551
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$time()F
    .locals 3

    .line 105
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 106
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->timeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public realmSet$comment(Ljava/lang/String;)V
    .locals 14

    .line 133
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 139
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->commentColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 142
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->commentColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 146
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 148
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->commentColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 151
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->commentColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$date(I)V
    .locals 1

    .line 163
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 169
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'date\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$time(F)V
    .locals 8

    .line 111
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->timeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setFloat(JJFZ)V

    return-void

    :cond_1
    move v6, p1

    .line 120
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 121
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->timeColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setFloat(JF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 530
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    const-string v0, "Invalid object"

    return-object v0

    .line 533
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MinistryPlannerItem = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    const-string v1, "{time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->realmGet$time()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 536
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v3, "{comment:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->realmGet$comment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->realmGet$comment()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "null"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string v2, "{date:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->realmGet$date()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
