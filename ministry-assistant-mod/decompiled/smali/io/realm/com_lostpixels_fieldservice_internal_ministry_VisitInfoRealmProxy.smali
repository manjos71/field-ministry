.class public Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;
.super Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

.field private proxyState:Lio/realm/ProxyState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;-><init>()V

    .line 106
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;
    .locals 3

    .line 632
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_0

    .line 634
    check-cast p3, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    return-object p3

    .line 639
    :cond_0
    const-class p3, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p0, p3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p3

    .line 640
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v0, p3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 643
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->infoColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$info()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 644
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitDateColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$visitDate()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 645
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->scripturesColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$scriptures()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 646
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->publicationsColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$publications()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 647
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->moviesColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$movies()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 648
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->nextTimeColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$nextTime()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 649
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->typeColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$type()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 650
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitTypeColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$visitType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 651
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->ageColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$age()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 652
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->countStudyColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$countStudy()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 656
    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 657
    invoke-static {p0, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;

    move-result-object p0

    .line 658
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;
    .locals 6

    .line 613
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 614
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 615
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 618
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 616
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 622
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 623
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_2

    .line 625
    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    return-object v0

    .line 628
    :cond_2
    invoke-static/range {p0 .. p5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    move-result-object p0

    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;
    .locals 1

    .line 414
    new-instance v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;
    .locals 1

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 865
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 868
    new-instance p2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-direct {p2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;-><init>()V

    .line 869
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 872
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 873
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    return-object p0

    .line 875
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 876
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 880
    :goto_0
    move-object p1, p0

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    check-cast p1, Lio/realm/Realm;

    .line 881
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$info()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmSet$info(Ljava/lang/String;)V

    .line 882
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$visitDate()Ljava/util/Date;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmSet$visitDate(Ljava/util/Date;)V

    .line 883
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$scriptures()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmSet$scriptures(Ljava/lang/String;)V

    .line 884
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$publications()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmSet$publications(Ljava/lang/String;)V

    .line 885
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$movies()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmSet$movies(Ljava/lang/String;)V

    .line 886
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$nextTime()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmSet$nextTime(Ljava/lang/String;)V

    .line 887
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$type()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmSet$type(I)V

    .line 888
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$visitType()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmSet$visitType(I)V

    .line 889
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$age()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmSet$age(I)V

    .line 890
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmGet$countStudy()Z

    move-result p0

    invoke-interface {p2, p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;->realmSet$countStudy(Z)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 8

    .line 395
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    const-string v1, ""

    const-string v2, "VisitInfo"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 396
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    const-string v1, ""

    const-string v2, "info"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    move-object v7, v3

    .line 397
    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "visitDate"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 398
    const-string v1, ""

    const-string v2, "scriptures"

    move-object v3, v7

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 399
    const-string v1, ""

    const-string v2, "publications"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 400
    const-string v1, ""

    const-string v2, "movies"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 401
    const-string v1, ""

    const-string v2, "nextTime"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 402
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v6, 0x1

    const-string v1, ""

    const-string v2, "type"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 403
    const-string v1, ""

    const-string v2, "visitType"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 404
    const-string v1, ""

    const-string v2, "age"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 405
    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "countStudy"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 406
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 410
    sget-object v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;
    .locals 7

    .line 605
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 606
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v0, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 607
    new-instance p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;

    invoke-direct {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;-><init>()V

    .line 608
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
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

    .line 916
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 917
    :cond_1
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;

    .line 919
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 920
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    .line 921
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 922
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 923
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_0
    return v1

    .line 924
    :cond_3
    invoke-virtual {v2}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v4

    invoke-virtual {v3}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v5

    if-eq v4, v5, :cond_4

    return v1

    .line 925
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

    .line 929
    :cond_5
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 930
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 931
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 933
    :cond_7
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 902
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 903
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 904
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 907
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

    .line 908
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

    .line 111
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 115
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    .line 116
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 117
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 118
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 119
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 120
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$age()I
    .locals 3

    .line 353
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 354
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->ageColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$countStudy()Z
    .locals 3

    .line 375
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 376
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->countStudyColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$info()Ljava/lang/String;
    .locals 3

    .line 126
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 127
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->infoColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$movies()Ljava/lang/String;
    .locals 3

    .line 249
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 250
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->moviesColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$nextTime()Ljava/lang/String;
    .locals 3

    .line 279
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 280
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->nextTimeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    .line 897
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$publications()Ljava/lang/String;
    .locals 3

    .line 219
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 220
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->publicationsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$scriptures()Ljava/lang/String;
    .locals 3

    .line 189
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 190
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->scripturesColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$type()I
    .locals 3

    .line 309
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 310
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->typeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$visitDate()Ljava/util/Date;
    .locals 3

    .line 156
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 157
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitDateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitDateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$visitType()I
    .locals 3

    .line 331
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 332
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitTypeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmSet$age(I)V
    .locals 9

    .line 359
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->ageColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 369
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->ageColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$countStudy(Z)V
    .locals 8

    .line 381
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 386
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->countStudyColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    :cond_1
    move v6, p1

    .line 390
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 391
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->countStudyColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$info(Ljava/lang/String;)V
    .locals 14

    .line 132
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 138
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->infoColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 141
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->infoColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 145
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 147
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->infoColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 150
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->infoColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$movies(Ljava/lang/String;)V
    .locals 14

    .line 255
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 261
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->moviesColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 264
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->moviesColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 268
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 270
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->moviesColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 273
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->moviesColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$nextTime(Ljava/lang/String;)V
    .locals 14

    .line 285
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 291
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->nextTimeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 294
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->nextTimeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 298
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 300
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->nextTimeColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 303
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->nextTimeColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$publications(Ljava/lang/String;)V
    .locals 14

    .line 225
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 231
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->publicationsColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 234
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->publicationsColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 238
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 240
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->publicationsColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 243
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->publicationsColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$scriptures(Ljava/lang/String;)V
    .locals 14

    .line 195
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 201
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->scripturesColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 204
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->scripturesColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 208
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 210
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->scripturesColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 213
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->scripturesColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$type(I)V
    .locals 9

    .line 315
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->typeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 325
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->typeColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$visitDate(Ljava/util/Date;)V
    .locals 14

    .line 165
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 171
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitDateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 174
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitDateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 178
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 180
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitDateColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 183
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitDateColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$visitType(I)V
    .locals 9

    .line 337
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitTypeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 347
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitTypeColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method
