.class public Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;
.super Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

.field private proxyState:Lio/realm/ProxyState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;-><init>()V

    .line 82
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;
    .locals 3

    .line 301
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_0

    .line 303
    check-cast p3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    return-object p3

    .line 308
    :cond_0
    const-class p3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {p0, p3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p3

    .line 309
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v0, p3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 312
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;->idColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxyInterface;->realmGet$id()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 313
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;->aliasColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxyInterface;->realmGet$alias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 317
    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 318
    invoke-static {p0, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;

    move-result-object p0

    .line 319
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;
    .locals 11

    move-object v7, p4

    .line 263
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

    .line 264
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 265
    iget-wide v2, v1, Lio/realm/BaseRealm;->threadId:J

    iget-wide v4, p0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 268
    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    sget-object v1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 273
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_2

    .line 275
    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    return-object v2

    :cond_2
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 281
    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 282
    iget-wide v5, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;->idColKey:J

    .line 283
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxyInterface;->realmGet$id()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v3, v5, v6, v8, v9}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v10, v5, v8

    if-nez v10, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 288
    :cond_3
    :try_start_0
    invoke-virtual {v3, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 289
    new-instance v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;

    invoke-direct {v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;-><init>()V

    .line 290
    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    :cond_4
    move v1, p3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 293
    throw v0

    :goto_0
    if-eqz v1, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p5

    move-object v4, v7

    .line 297
    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static/range {p0 .. p5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    move-result-object v0

    return-object v0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;
    .locals 1

    .line 159
    new-instance v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;
    .locals 1

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 446
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 449
    new-instance p2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-direct {p2}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;-><init>()V

    .line 450
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 453
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 454
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    return-object p0

    .line 456
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 457
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 461
    :goto_0
    move-object p1, p0

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    check-cast p1, Lio/realm/Realm;

    .line 462
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxyInterface;->realmGet$id()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxyInterface;->realmSet$id(I)V

    .line 463
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxyInterface;->realmGet$alias()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxyInterface;->realmSet$alias(Ljava/lang/String;)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 148
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v1, ""

    const-string v2, "AliasesMap"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 149
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v1, ""

    const-string v2, "id"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 150
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, ""

    const-string v2, "alias"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 151
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 155
    sget-object v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;
    .locals 7

    .line 255
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 256
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {v0, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 257
    new-instance p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;

    invoke-direct {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;-><init>()V

    .line 258
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;
    .locals 2

    .line 471
    const-class p4, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {p0, p4}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p0

    .line 472
    new-instance p4, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {p4, p0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 473
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;->idColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxyInterface;->realmGet$id()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 474
    iget-wide p0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;->aliasColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxyInterface;->realmGet$alias()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 476
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

    .line 519
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 520
    :cond_1
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;

    .line 522
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 523
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    .line 524
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 525
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 526
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_0
    return v1

    .line 527
    :cond_3
    invoke-virtual {v2}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v4

    invoke-virtual {v3}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v5

    if-eq v4, v5, :cond_4

    return v1

    .line 528
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

    .line 532
    :cond_5
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 533
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 534
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 536
    :cond_7
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 505
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 507
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 510
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

    .line 511
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

    .line 87
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 91
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    .line 92
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 93
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 94
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 95
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 96
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$alias()Ljava/lang/String;
    .locals 3

    .line 120
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 121
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;->aliasColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()I
    .locals 3

    .line 102
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 103
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;->idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    .line 500
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmSet$alias(Ljava/lang/String;)V
    .locals 14

    .line 126
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 132
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;->aliasColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 135
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;->aliasColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 139
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 141
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;->aliasColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 144
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;->aliasColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$id(I)V
    .locals 1

    .line 108
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 114
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 483
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    const-string v0, "Invalid object"

    return-object v0

    .line 486
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliasesMap = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    const-string v1, "{id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->realmGet$id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v2, "{alias:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->realmGet$alias()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->realmGet$alias()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "null"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
