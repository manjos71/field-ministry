.class public Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;
.super Lcom/lostpixels/fieldservice/internal/ministry/Address;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

.field private proxyState:Lio/realm/ProxyState;

.field private visitsListRealmList:Lio/realm/RealmList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>()V

    .line 92
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Address;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Address;
    .locals 9

    .line 496
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 498
    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    return-object v0

    .line 503
    :cond_0
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 504
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 507
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->nameColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 508
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->dateColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 509
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->idColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 510
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->addressTypeColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$addressType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 514
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 515
    invoke-static {p0, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;

    move-result-object p1

    .line 516
    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 521
    invoke-virtual {p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    const/4 v1, 0x0

    .line 523
    :goto_0
    invoke-virtual {p2}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 524
    invoke-virtual {p2, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 525
    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz v2, :cond_1

    .line 527
    invoke-virtual {v0, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    move-object v3, p0

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    goto :goto_1

    .line 529
    :cond_1
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    move-object v3, p0

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Visit;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;

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

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Address;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Address;
    .locals 11

    move-object v7, p4

    .line 458
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

    .line 459
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 460
    iget-wide v2, v1, Lio/realm/BaseRealm;->threadId:J

    iget-wide v4, p0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 463
    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    .line 461
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_1
    sget-object v1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 468
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_2

    .line 470
    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    return-object v2

    :cond_2
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 476
    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 477
    iget-wide v5, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->idColKey:J

    .line 478
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$id()J

    move-result-wide v8

    invoke-virtual {v3, v5, v6, v8, v9}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v10, v5, v8

    if-nez v10, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 483
    :cond_3
    :try_start_0
    invoke-virtual {v3, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 484
    new-instance v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;

    invoke-direct {v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;-><init>()V

    .line 485
    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    :cond_4
    move v1, p3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 488
    throw v0

    :goto_0
    if-eqz v1, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p5

    move-object v4, v7

    .line 492
    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Address;Lcom/lostpixels/fieldservice/internal/ministry/Address;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static/range {p0 .. p5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Address;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    return-object v0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;
    .locals 1

    .line 288
    new-instance v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/Address;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/Address;
    .locals 6

    const/4 v0, 0x0

    if-gt p1, p2, :cond_5

    if-nez p0, :cond_0

    goto/16 :goto_3

    .line 761
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez v1, :cond_1

    .line 764
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>()V

    .line 765
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 768
    :cond_1
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_2

    .line 769
    iget-object p0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    return-object p0

    .line 771
    :cond_2
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 772
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object v1, v2

    .line 776
    :goto_0
    move-object v2, p0

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    check-cast v2, Lio/realm/Realm;

    if-ne p1, p2, :cond_3

    .line 780
    invoke-interface {v1, v0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmSet$visitsList(Lio/realm/RealmList;)V

    goto :goto_2

    .line 782
    :cond_3
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    .line 783
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 784
    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmSet$visitsList(Lio/realm/RealmList;)V

    add-int/lit8 p1, p1, 0x1

    .line 786
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 788
    invoke-virtual {v0, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-static {v5, p1, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/Visit;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v5

    .line 789
    invoke-virtual {v2, v5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 792
    :cond_4
    :goto_2
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 793
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$date()Ljava/util/Date;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmSet$date(Ljava/util/Date;)V

    .line 794
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$id()J

    move-result-wide p1

    invoke-interface {v1, p1, p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmSet$id(J)V

    .line 795
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$addressType()I

    move-result p0

    invoke-interface {v1, p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmSet$addressType(I)V

    return-object v1

    :cond_5
    :goto_3
    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 274
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const-string v1, ""

    const-string v2, "Address"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 275
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v2, "Visit"

    const-string v3, ""

    const-string v4, "visitsList"

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 276
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    const-string v1, ""

    const-string v2, "name"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 277
    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "date"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 278
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v1, ""

    const-string v2, "id"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v5, 0x0

    .line 279
    const-string v1, ""

    const-string v2, "addressType"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 280
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 284
    sget-object v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;
    .locals 7

    .line 450
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 451
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 452
    new-instance p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;

    invoke-direct {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;-><init>()V

    .line 453
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Address;Lcom/lostpixels/fieldservice/internal/ministry/Address;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Address;
    .locals 10

    .line 803
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 804
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 806
    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 808
    new-instance v8, Lio/realm/RealmList;

    invoke-direct {v8}, Lio/realm/RealmList;-><init>()V

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 809
    :goto_0
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v9, v2, :cond_1

    .line 810
    invoke-virtual {v0, v9}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 811
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz v2, :cond_0

    .line 813
    invoke-virtual {v8, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 815
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Visit;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v3

    invoke-virtual {v8, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 818
    :cond_1
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->visitsListColKey:J

    invoke-virtual {v1, v2, v3, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    goto :goto_2

    .line 820
    :cond_2
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->visitsListColKey:J

    new-instance p0, Lio/realm/RealmList;

    invoke-direct {p0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    .line 822
    :goto_2
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->nameColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 823
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->dateColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$date()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 824
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->idColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 825
    iget-wide p0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->addressTypeColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;->realmGet$addressType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 827
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->updateExistingTopLevelObject()V

    return-object p2
.end method


# virtual methods
.method public hashCode()I
    .locals 6

    .line 868
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 869
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 870
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 873
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

    .line 874
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

    .line 97
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 101
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    .line 102
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 103
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 104
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 105
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 106
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$addressType()I
    .locals 3

    .line 254
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 255
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->addressTypeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 3

    .line 203
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 204
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->dateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->dateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()J
    .locals 3

    .line 236
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 237
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 3

    .line 173
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 174
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->nameColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    .line 863
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$visitsList()Lio/realm/RealmList;
    .locals 4

    .line 111
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 113
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->visitsListRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->visitsListColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 117
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->visitsListRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmSet$addressType(I)V
    .locals 9

    .line 260
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 265
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->addressTypeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 270
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->addressTypeColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$date(Ljava/util/Date;)V
    .locals 14

    .line 212
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 218
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->dateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 221
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->dateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 225
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 227
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->dateColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 230
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->dateColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    .line 242
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 248
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string p2, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {p1, p2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 14

    .line 179
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 185
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 188
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 192
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 194
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->nameColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 197
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->nameColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$visitsList(Lio/realm/RealmList;)V
    .locals 8

    .line 124
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 125
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 128
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v2, "visitsList"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p1, :cond_5

    .line 132
    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 133
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 135
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 136
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz v3, :cond_3

    .line 137
    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 140
    :cond_2
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v3, v4}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 146
    :cond_5
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 147
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->visitsListColKey:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 149
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 150
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_8

    .line 152
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 153
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    int-to-long v4, v1

    .line 154
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

    .line 157
    :cond_6
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_7

    goto :goto_4

    .line 161
    :cond_7
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    .line 163
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 164
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 165
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
    .locals 6

    .line 834
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    const-string v0, "Invalid object"

    return-object v0

    .line 837
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Address = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 838
    const-string v1, "{visitsList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const-string v1, "RealmList<Visit>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    const-string v4, "{name:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    const-string v4, "{date:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->realmGet$date()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->realmGet$date()Ljava/util/Date;

    move-result-object v5

    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const-string v4, "{id:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->realmGet$id()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    const-string v3, "{addressType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->realmGet$addressType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
