.class public Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;
.super Lcom/lostpixels/fieldservice/internal/ministry/Street;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private addressesRealmList:Lio/realm/RealmList;

.field private columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

.field private proxyState:Lio/realm/ProxyState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 95
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Street;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Street;
    .locals 9

    .line 536
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 538
    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    return-object v0

    .line 543
    :cond_0
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 544
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 547
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->nameColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 548
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->isAreaColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$isArea()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 549
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->idColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 550
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->dateColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 551
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->eShowAddressColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$eShowAddress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 555
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 556
    invoke-static {p0, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;

    move-result-object p1

    .line 557
    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 562
    invoke-virtual {p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    const/4 v1, 0x0

    .line 564
    :goto_0
    invoke-virtual {p2}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 565
    invoke-virtual {p2, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 566
    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    if-eqz v2, :cond_1

    .line 568
    invoke-virtual {v0, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    move-object v3, p0

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    goto :goto_1

    .line 570
    :cond_1
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    move-object v3, p0

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Address;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

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

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Street;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Street;
    .locals 11

    move-object v7, p4

    .line 498
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

    .line 499
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 500
    iget-wide v2, v1, Lio/realm/BaseRealm;->threadId:J

    iget-wide v4, p0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 503
    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    .line 501
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_1
    sget-object v1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 508
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_2

    .line 510
    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    return-object v2

    :cond_2
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 516
    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 517
    iget-wide v5, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->idColKey:J

    .line 518
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$id()J

    move-result-wide v8

    invoke-virtual {v3, v5, v6, v8, v9}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v10, v5, v8

    if-nez v10, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 523
    :cond_3
    :try_start_0
    invoke-virtual {v3, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 524
    new-instance v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;

    invoke-direct {v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;-><init>()V

    .line 525
    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    :cond_4
    move v1, p3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 528
    throw v0

    :goto_0
    if-eqz v1, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p5

    move-object v4, v7

    .line 532
    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Street;Lcom/lostpixels/fieldservice/internal/ministry/Street;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static/range {p0 .. p5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Street;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v0

    return-object v0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;
    .locals 1

    .line 314
    new-instance v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/Street;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/Street;
    .locals 6

    const/4 v0, 0x0

    if-gt p1, p2, :cond_5

    if-nez p0, :cond_0

    goto/16 :goto_3

    .line 806
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez v1, :cond_1

    .line 809
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 810
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 813
    :cond_1
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_2

    .line 814
    iget-object p0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    return-object p0

    .line 816
    :cond_2
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 817
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object v1, v2

    .line 821
    :goto_0
    move-object v2, p0

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    check-cast v2, Lio/realm/Realm;

    .line 822
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 823
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$isArea()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmSet$isArea(Z)V

    if-ne p1, p2, :cond_3

    .line 827
    invoke-interface {v1, v0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmSet$addresses(Lio/realm/RealmList;)V

    goto :goto_2

    .line 829
    :cond_3
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    .line 830
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 831
    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmSet$addresses(Lio/realm/RealmList;)V

    add-int/lit8 p1, p1, 0x1

    .line 833
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 835
    invoke-virtual {v0, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {v5, p1, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/Address;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v5

    .line 836
    invoke-virtual {v2, v5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 839
    :cond_4
    :goto_2
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$id()J

    move-result-wide p1

    invoke-interface {v1, p1, p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmSet$id(J)V

    .line 840
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$date()Ljava/util/Date;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmSet$date(Ljava/util/Date;)V

    .line 841
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$eShowAddress()I

    move-result p0

    invoke-interface {v1, p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmSet$eShowAddress(I)V

    return-object v1

    :cond_5
    :goto_3
    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 8

    .line 299
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, ""

    const-string v2, "Street"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 300
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    const-string v1, ""

    const-string v2, "name"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 301
    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v6, 0x1

    const-string v1, ""

    const-string v2, "isArea"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 302
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v2, "Address"

    const-string v3, ""

    const-string v4, "addresses"

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 303
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    const-string v1, ""

    const-string v2, "id"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    move-object v7, v3

    .line 304
    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, ""

    const-string v2, "date"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v6, 0x1

    .line 305
    const-string v1, ""

    const-string v2, "eShowAddress"

    move-object v3, v7

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 306
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 310
    sget-object v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;
    .locals 7

    .line 490
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 491
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v0, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 492
    new-instance p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;

    invoke-direct {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;-><init>()V

    .line 493
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Street;Lcom/lostpixels/fieldservice/internal/ministry/Street;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Street;
    .locals 10

    .line 849
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 850
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 851
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->nameColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 852
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->isAreaColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$isArea()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 854
    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 856
    new-instance v8, Lio/realm/RealmList;

    invoke-direct {v8}, Lio/realm/RealmList;-><init>()V

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 857
    :goto_0
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v9, v2, :cond_1

    .line 858
    invoke-virtual {v0, v9}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 859
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    if-eqz v2, :cond_0

    .line 861
    invoke-virtual {v8, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 863
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Address;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v3

    invoke-virtual {v8, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 866
    :cond_1
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->addressesColKey:J

    invoke-virtual {v1, v2, v3, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    goto :goto_2

    .line 868
    :cond_2
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->addressesColKey:J

    new-instance p0, Lio/realm/RealmList;

    invoke-direct {p0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    .line 870
    :goto_2
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->idColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 871
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->dateColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$date()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 872
    iget-wide p0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->eShowAddressColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;->realmGet$eShowAddress()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 874
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->updateExistingTopLevelObject()V

    return-object p2
.end method


# virtual methods
.method public hashCode()I
    .locals 6

    .line 919
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 920
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 921
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 924
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

    .line 925
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
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    .line 105
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 106
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 107
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 108
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 109
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$addresses()Lio/realm/RealmList;
    .locals 4

    .line 166
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 168
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->addressesRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 171
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->addressesColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 172
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->addressesRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 3

    .line 246
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 247
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->dateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 250
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->dateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$eShowAddress()I
    .locals 3

    .line 279
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 280
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->eShowAddressColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$id()J
    .locals 3

    .line 228
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 229
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$isArea()Z
    .locals 3

    .line 145
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 146
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->isAreaColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 3

    .line 115
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 116
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->nameColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    .line 914
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmSet$addresses(Lio/realm/RealmList;)V
    .locals 8

    .line 179
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 180
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 183
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v2, "addresses"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p1, :cond_5

    .line 187
    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 188
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 190
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 191
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    if-eqz v3, :cond_3

    .line 192
    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 195
    :cond_2
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v3, v4}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 201
    :cond_5
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 202
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->addressesColKey:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 204
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 205
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_8

    .line 207
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 208
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    int-to-long v4, v1

    .line 209
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

    .line 212
    :cond_6
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_7

    goto :goto_4

    .line 216
    :cond_7
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    .line 218
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 219
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 220
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

.method public realmSet$date(Ljava/util/Date;)V
    .locals 14

    .line 255
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 261
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->dateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 264
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->dateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 268
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 270
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->dateColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 273
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->dateColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$eShowAddress(I)V
    .locals 9

    .line 285
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->eShowAddressColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 295
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->eShowAddressColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    .line 234
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 240
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string p2, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {p1, p2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$isArea(Z)V
    .locals 8

    .line 151
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->isAreaColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    :cond_1
    move v6, p1

    .line 160
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 161
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->isAreaColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 14

    .line 121
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 127
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 130
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 134
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 136
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->nameColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 139
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->nameColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 881
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 882
    const-string v0, "Invalid object"

    return-object v0

    .line 884
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Street = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 885
    const-string v1, "{name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    const-string v4, "{isArea:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->realmGet$isArea()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const-string v4, "{addresses:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    const-string v4, "RealmList<Address>["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    const-string v5, "{id:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->realmGet$id()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    const-string v5, "{date:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->realmGet$date()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->realmGet$date()Ljava/util/Date;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    const-string v2, "{eShowAddress:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->realmGet$eShowAddress()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 907
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
