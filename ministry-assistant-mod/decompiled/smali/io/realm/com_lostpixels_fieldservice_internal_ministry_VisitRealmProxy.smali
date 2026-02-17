.class public Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;
.super Lcom/lostpixels/fieldservice/internal/ministry/Visit;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

.field private proxyState:Lio/realm/ProxyState;

.field private visitTypeListRealmList:Lio/realm/RealmList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;-><init>()V

    .line 131
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Visit;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;
    .locals 6

    .line 1086
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 1088
    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    return-object v0

    .line 1093
    :cond_0
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 1094
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 1097
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->houseHolderColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$houseHolder()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 1098
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->interestedColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$interested()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1099
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->nameColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1100
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->dateColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 1101
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->syncDateColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$syncDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 1102
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->visitTypeColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$visitType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1103
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->floorNumberColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$floorNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1104
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->idColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 1105
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdFromTerritoryHelperColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$locationIdFromTerritoryHelper()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 1106
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdHashColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$locationIdHash()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 1107
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->latitudeColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1108
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->longitudeColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1109
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->numVisitsColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$numVisits()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1110
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->commentColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1111
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->phoneNumberColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1112
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->cellNumberColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$cellNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1116
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 1117
    invoke-static {p0, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;

    move-result-object p1

    .line 1118
    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$parentRef()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 1123
    invoke-virtual {p1, v0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmSet$parentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    :goto_0
    move-object v0, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    goto :goto_1

    .line 1125
    :cond_1
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    if-eqz v0, :cond_2

    .line 1127
    invoke-virtual {p1, v0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmSet$parentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto :goto_0

    .line 1129
    :cond_2
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    move-object v0, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Address;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmSet$parentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 1133
    :goto_1
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1135
    invoke-virtual {p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object p2

    .line 1136
    invoke-virtual {p2}, Lio/realm/RealmList;->clear()V

    const/4 p3, 0x0

    .line 1137
    :goto_2
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result p4

    if-ge p3, p4, :cond_4

    .line 1138
    invoke-virtual {p0, p3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    .line 1139
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    if-eqz p4, :cond_3

    .line 1141
    invoke-virtual {p2, p4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1143
    :cond_3
    invoke-virtual {v0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p4

    const-class p5, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy$VisitTypeItemColumnInfo;

    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy$VisitTypeItemColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    move-result-object p4

    invoke-virtual {p2, p4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Visit;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;
    .locals 11

    move-object v7, p4

    .line 1048
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

    .line 1049
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 1050
    iget-wide v2, v1, Lio/realm/BaseRealm;->threadId:J

    iget-wide v4, p0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 1053
    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    .line 1051
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_1
    sget-object v1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 1058
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_2

    .line 1060
    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    return-object v2

    :cond_2
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 1066
    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 1067
    iget-wide v5, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->idColKey:J

    .line 1068
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$id()J

    move-result-wide v8

    invoke-virtual {v3, v5, v6, v8, v9}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v10, v5, v8

    if-nez v10, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 1073
    :cond_3
    :try_start_0
    invoke-virtual {v3, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 1074
    new-instance v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;

    invoke-direct {v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;-><init>()V

    .line 1075
    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    :cond_4
    move v1, p3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 1078
    throw v0

    :goto_0
    if-eqz v1, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p5

    move-object v4, v7

    .line 1082
    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static/range {p0 .. p5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Visit;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v0

    return-object v0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;
    .locals 1

    .line 681
    new-instance v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/Visit;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;
    .locals 6

    const/4 v0, 0x0

    if-gt p1, p2, :cond_5

    if-nez p0, :cond_0

    goto/16 :goto_2

    .line 1527
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez v1, :cond_1

    .line 1530
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;-><init>()V

    .line 1531
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1534
    :cond_1
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_2

    .line 1535
    iget-object p0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    return-object p0

    .line 1537
    :cond_2
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 1538
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object v1, v2

    .line 1542
    :goto_0
    move-object v2, p0

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    check-cast v2, Lio/realm/Realm;

    .line 1543
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$houseHolder()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$houseHolder(J)V

    .line 1544
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$interested()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$interested(Z)V

    .line 1545
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 1546
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$date()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$date(Ljava/util/Date;)V

    .line 1547
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$syncDate()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$syncDate(Ljava/util/Date;)V

    .line 1548
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$visitType()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$visitType(I)V

    .line 1549
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$floorNumber()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$floorNumber(I)V

    .line 1552
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$parentRef()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/Address;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$parentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 1553
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$id()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$id(J)V

    .line 1554
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$locationIdFromTerritoryHelper()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$locationIdFromTerritoryHelper(J)V

    .line 1555
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$locationIdHash()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$locationIdHash(J)V

    .line 1556
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$latitude(D)V

    .line 1557
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$longitude(D)V

    .line 1558
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$numVisits()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$numVisits(I)V

    .line 1559
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$comment()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$comment(Ljava/lang/String;)V

    .line 1560
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$phoneNumber(Ljava/lang/String;)V

    .line 1561
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$cellNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$cellNumber(Ljava/lang/String;)V

    if-ne p1, p2, :cond_3

    .line 1565
    invoke-interface {v1, v0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$visitTypeList(Lio/realm/RealmList;)V

    return-object v1

    .line 1567
    :cond_3
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object p0

    .line 1568
    new-instance p1, Lio/realm/RealmList;

    invoke-direct {p1}, Lio/realm/RealmList;-><init>()V

    .line 1569
    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmSet$visitTypeList(Lio/realm/RealmList;)V

    .line 1571
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 1573
    invoke-virtual {p0, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-static {v4, v3, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    move-result-object v4

    .line 1574
    invoke-virtual {p1, v4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v1

    :cond_5
    :goto_2
    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 10

    .line 654
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    const-string v1, ""

    const-string v2, "Visit"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 655
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v1, ""

    const-string v2, "houseHolder"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    move-object v7, v3

    .line 656
    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v5, 0x0

    const-string v1, ""

    const-string v2, "interested"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 657
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    const-string v1, ""

    const-string v2, "name"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    move-object v8, v3

    .line 658
    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "date"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 659
    const-string v1, ""

    const-string v2, "syncDate"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v6, 0x1

    .line 660
    const-string v1, ""

    const-string v2, "visitType"

    move-object v3, v7

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 661
    const-string v1, ""

    const-string v2, "floorNumber"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 662
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v2, "Address"

    const-string v7, ""

    const-string v4, "parentRef"

    invoke-virtual {v0, v7, v4, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v5, 0x1

    .line 663
    const-string v1, ""

    const-string v2, "id"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v5, 0x0

    .line 664
    const-string v1, ""

    const-string v2, "locationIdFromTerritoryHelper"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 665
    const-string v1, ""

    const-string v2, "locationIdHash"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    move-object v9, v3

    .line 666
    sget-object v3, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "latitude"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 667
    const-string v1, ""

    const-string v2, "longitude"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 668
    const-string v1, ""

    const-string v2, "numVisits"

    move-object v3, v9

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v6, 0x0

    .line 669
    const-string v1, ""

    const-string v2, "comment"

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 670
    const-string v1, ""

    const-string v2, "phoneNumber"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 671
    const-string v1, ""

    const-string v2, "cellNumber"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 672
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v2, "VisitTypeItem"

    const-string v3, "visitTypeList"

    invoke-virtual {v0, v7, v3, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 673
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 677
    sget-object v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;
    .locals 7

    .line 1040
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 1041
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 1042
    new-instance p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;

    invoke-direct {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;-><init>()V

    .line 1043
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;
    .locals 10

    .line 1584
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 1585
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 1586
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->houseHolderColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$houseHolder()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 1587
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->interestedColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$interested()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1588
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->nameColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1589
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->dateColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 1590
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->syncDateColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$syncDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 1591
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->visitTypeColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$visitType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1592
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->floorNumberColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$floorNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1594
    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$parentRef()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1596
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->parentRefColKey:J

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addNull(J)V

    :goto_0
    move-object v4, p0

    move-object v8, p4

    move-object v9, p5

    goto :goto_1

    .line 1598
    :cond_0
    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    if-eqz v0, :cond_1

    .line 1600
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->parentRefColKey:J

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObject(JLio/realm/RealmModel;)V

    goto :goto_0

    .line 1602
    :cond_1
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->parentRefColKey:J

    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v4, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    const/4 v7, 0x1

    move-object v4, p0

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v4 .. v9}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Address;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObject(JLio/realm/RealmModel;)V

    .line 1605
    :goto_1
    iget-wide p4, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->idColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p4, p5, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 1606
    iget-wide p4, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdFromTerritoryHelperColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$locationIdFromTerritoryHelper()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p4, p5, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 1607
    iget-wide p4, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdHashColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$locationIdHash()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p4, p5, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 1608
    iget-wide p4, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->latitudeColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v1, p4, p5, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1609
    iget-wide p4, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->longitudeColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v1, p4, p5, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 1610
    iget-wide p4, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->numVisitsColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$numVisits()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p4, p5, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1611
    iget-wide p4, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->commentColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$comment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p4, p5, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1612
    iget-wide p4, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->phoneNumberColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p4, p5, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1613
    iget-wide p4, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->cellNumberColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$cellNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p4, p5, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1615
    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1617
    new-instance p3, Lio/realm/RealmList;

    invoke-direct {p3}, Lio/realm/RealmList;-><init>()V

    const/4 p4, 0x0

    .line 1618
    :goto_2
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result p5

    if-ge p4, p5, :cond_3

    .line 1619
    invoke-virtual {p0, p4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p5

    move-object v6, p5

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    .line 1620
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    if-eqz p5, :cond_2

    .line 1622
    invoke-virtual {p3, p5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1624
    :cond_2
    invoke-virtual {v4}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p5

    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-virtual {p5, v0}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy$VisitTypeItemColumnInfo;

    const/4 v7, 0x1

    invoke-static/range {v4 .. v9}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy$VisitTypeItemColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    move-result-object p5

    invoke-virtual {p3, p5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 1627
    :cond_3
    iget-wide p0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->visitTypeListColKey:J

    invoke-virtual {v1, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    goto :goto_4

    .line 1629
    :cond_4
    iget-wide p0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->visitTypeListColKey:J

    new-instance p3, Lio/realm/RealmList;

    invoke-direct {p3}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v1, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    .line 1632
    :goto_4
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->updateExistingTopLevelObject()V

    return-object p2
.end method


# virtual methods
.method public hashCode()I
    .locals 6

    .line 1725
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1726
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1727
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1730
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

    .line 1731
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

    .line 136
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 140
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    .line 141
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 142
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 143
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 144
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 145
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$cellNumber()Ljava/lang/String;
    .locals 3

    .line 565
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 566
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->cellNumberColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$comment()Ljava/lang/String;
    .locals 3

    .line 505
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 506
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->commentColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 3

    .line 225
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 226
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->dateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->dateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$floorNumber()I
    .locals 3

    .line 313
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 314
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->floorNumberColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$houseHolder()J
    .locals 3

    .line 151
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 152
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->houseHolderColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$id()J
    .locals 3

    .line 377
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 378
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$interested()Z
    .locals 3

    .line 173
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 174
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->interestedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$latitude()D
    .locals 3

    .line 439
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 440
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->latitudeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$locationIdFromTerritoryHelper()J
    .locals 3

    .line 395
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 396
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdFromTerritoryHelperColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$locationIdHash()J
    .locals 3

    .line 417
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 418
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdHashColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$longitude()D
    .locals 3

    .line 461
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 462
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->longitudeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 3

    .line 195
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 196
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->nameColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$numVisits()I
    .locals 3

    .line 483
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 484
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->numVisitsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$parentRef()Lcom/lostpixels/fieldservice/internal/ministry/Address;
    .locals 7

    .line 334
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 335
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->parentRefColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 338
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->parentRefColKey:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-class v2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    return-object v0
.end method

.method public realmGet$phoneNumber()Ljava/lang/String;
    .locals 3

    .line 535
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 536
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->phoneNumberColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    .line 1720
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$syncDate()Ljava/util/Date;
    .locals 3

    .line 258
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 259
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->syncDateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 262
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->syncDateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$visitType()I
    .locals 3

    .line 291
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 292
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->visitTypeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$visitTypeList()Lio/realm/RealmList;
    .locals 4

    .line 594
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 596
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->visitTypeListRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 599
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->visitTypeListColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 600
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->visitTypeListRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmSet$cellNumber(Ljava/lang/String;)V
    .locals 14

    .line 571
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 577
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->cellNumberColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 580
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->cellNumberColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 584
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 586
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->cellNumberColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 589
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->cellNumberColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$comment(Ljava/lang/String;)V
    .locals 14

    .line 511
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 517
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->commentColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 520
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->commentColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 524
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 526
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->commentColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 529
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->commentColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$date(Ljava/util/Date;)V
    .locals 14

    .line 234
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 240
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->dateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 243
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->dateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 247
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 249
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->dateColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 252
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->dateColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$floorNumber(I)V
    .locals 9

    .line 319
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 324
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->floorNumberColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 329
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->floorNumberColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$houseHolder(J)V
    .locals 9

    .line 157
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 162
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->houseHolderColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    :cond_1
    move-wide v6, p1

    .line 166
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 167
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object p2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->houseHolderColKey:J

    invoke-interface {p1, v0, v1, v6, v7}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    .line 383
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 388
    :cond_0
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 389
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string p2, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {p1, p2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$interested(Z)V
    .locals 8

    .line 179
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->interestedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    :cond_1
    move v6, p1

    .line 188
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 189
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->interestedColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$latitude(D)V
    .locals 9

    .line 445
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 450
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->latitudeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    :cond_1
    move-wide v6, p1

    .line 454
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 455
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object p2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->latitudeColKey:J

    invoke-interface {p1, v0, v1, v6, v7}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$locationIdFromTerritoryHelper(J)V
    .locals 9

    .line 401
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 406
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdFromTerritoryHelperColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    :cond_1
    move-wide v6, p1

    .line 410
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 411
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object p2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdFromTerritoryHelperColKey:J

    invoke-interface {p1, v0, v1, v6, v7}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$locationIdHash(J)V
    .locals 9

    .line 423
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 428
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdHashColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    :cond_1
    move-wide v6, p1

    .line 432
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 433
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object p2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdHashColKey:J

    invoke-interface {p1, v0, v1, v6, v7}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$longitude(D)V
    .locals 9

    .line 467
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 472
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->longitudeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    :cond_1
    move-wide v6, p1

    .line 476
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 477
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object p2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->longitudeColKey:J

    invoke-interface {p1, v0, v1, v6, v7}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 14

    .line 201
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 207
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 210
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 214
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 216
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->nameColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 219
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->nameColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$numVisits(I)V
    .locals 9

    .line 489
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 494
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->numVisitsColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 498
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 499
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->numVisitsColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$parentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 10

    .line 343
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 344
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 345
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v1

    const-string v2, "parentRef"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 351
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 352
    new-array v1, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, p1, v1}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 354
    :cond_2
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 357
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->parentRefColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 360
    :cond_3
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 361
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v3, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->parentRefColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v5

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lio/realm/internal/Table;->setLink(JJJZ)V

    return-void

    .line 365
    :cond_4
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_5

    .line 367
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->parentRefColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 370
    :cond_5
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 371
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->parentRefColKey:J

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    return-void
.end method

.method public realmSet$phoneNumber(Ljava/lang/String;)V
    .locals 14

    .line 541
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 547
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->phoneNumberColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 550
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->phoneNumberColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 554
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 556
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->phoneNumberColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 559
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->phoneNumberColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$syncDate(Ljava/util/Date;)V
    .locals 14

    .line 267
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 273
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->syncDateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 276
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->syncDateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 280
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 282
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->syncDateColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 285
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->syncDateColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$visitType(I)V
    .locals 9

    .line 297
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->visitTypeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 307
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->visitTypeColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$visitTypeList(Lio/realm/RealmList;)V
    .locals 8

    .line 607
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 608
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 611
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v2, "visitTypeList"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p1, :cond_5

    .line 615
    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 616
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 618
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 619
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    if-eqz v3, :cond_3

    .line 620
    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 623
    :cond_2
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v3, v4}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 621
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 629
    :cond_5
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 630
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->visitTypeListColKey:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 632
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 633
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_8

    .line 635
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    .line 636
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    int-to-long v4, v1

    .line 637
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

    .line 640
    :cond_6
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_7

    goto :goto_4

    .line 644
    :cond_7
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    .line 646
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    .line 647
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 648
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
    .locals 7

    .line 1639
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1640
    const-string v0, "Invalid object"

    return-object v0

    .line 1642
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Visit = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1643
    const-string v1, "{houseHolder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$houseHolder()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1645
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    const-string v3, "{interested:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$interested()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    const-string v3, "{name:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    const-string v3, "{date:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$date()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$date()Ljava/util/Date;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    const-string v3, "{syncDate:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$syncDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$syncDate()Ljava/util/Date;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    const-string v3, "{visitType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$visitType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1665
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    const-string v3, "{floorNumber:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$floorNumber()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    const-string v3, "{parentRef:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$parentRef()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, "Address"

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    const-string v3, "{id:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$id()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1677
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    const-string v3, "{locationIdFromTerritoryHelper:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$locationIdFromTerritoryHelper()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1681
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    const-string v3, "{locationIdHash:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1684
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$locationIdHash()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1685
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    const-string v3, "{latitude:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1688
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$latitude()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    const-string v3, "{longitude:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$longitude()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1693
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1694
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    const-string v3, "{numVisits:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$numVisits()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1697
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    const-string v3, "{comment:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$comment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$comment()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v4

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    const-string v3, "{phoneNumber:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1704
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_6
    move-object v3, v4

    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    const-string v3, "{cellNumber:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$cellNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$cellNumber()Ljava/lang/String;

    move-result-object v4

    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    const-string v2, "{visitTypeList:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    const-string v2, "RealmList<VisitTypeItem>["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
