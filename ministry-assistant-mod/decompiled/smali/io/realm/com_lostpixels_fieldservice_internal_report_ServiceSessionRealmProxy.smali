.class public Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;
.super Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

.field private proxyState:Lio/realm/ProxyState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 130
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 3

    .line 920
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_0

    .line 922
    check-cast p3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    return-object p3

    .line 927
    :cond_0
    const-class p3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {p0, p3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p3

    .line 928
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v0, p3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 931
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->minutesColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$minutes()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 932
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->rbcMinutesColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$rbcMinutes()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 933
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->magazinesColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$magazines()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 934
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->bookletsColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$booklets()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 935
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->booksColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$books()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 936
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->tractsColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$tracts()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 937
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->mileageKilometersColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$mileageKilometers()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addFloat(JLjava/lang/Float;)V

    .line 938
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->retVisitsColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$retVisits()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 939
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->studiesColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$studies()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 940
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->studyPersonsColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$studyPersons()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 941
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dvdsColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$dvds()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 942
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->videoShowingsColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$videoShowings()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 943
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dateColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$date()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 944
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->commentColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$comment()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 945
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom1ColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$custom1()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 946
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom2ColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$custom2()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 947
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom3ColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$custom3()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 948
    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->doneMinistryColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$doneMinistry()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 952
    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 953
    invoke-static {p0, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;

    move-result-object p0

    .line 954
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 6

    .line 901
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

    .line 902
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 903
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 906
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 904
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 910
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 911
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_2

    .line 913
    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    return-object v0

    .line 916
    :cond_2
    invoke-static/range {p0 .. p5}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p0

    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;
    .locals 1

    .line 590
    new-instance v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 1

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 1129
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 1132
    new-instance p2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 1133
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1136
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 1137
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    return-object p0

    .line 1139
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 1140
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 1144
    :goto_0
    move-object p1, p0

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    check-cast p1, Lio/realm/Realm;

    .line 1145
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$minutes()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$minutes(I)V

    .line 1146
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$rbcMinutes()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$rbcMinutes(I)V

    .line 1147
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$magazines()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$magazines(I)V

    .line 1148
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$booklets()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$booklets(I)V

    .line 1149
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$books()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$books(I)V

    .line 1150
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$tracts()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$tracts(I)V

    .line 1151
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$mileageKilometers()F

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$mileageKilometers(F)V

    .line 1152
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$retVisits()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$retVisits(I)V

    .line 1153
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$studies()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$studies(I)V

    .line 1154
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$studyPersons()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$studyPersons(I)V

    .line 1155
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$dvds()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$dvds(I)V

    .line 1156
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$videoShowings()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$videoShowings(I)V

    .line 1157
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$date()Ljava/util/Date;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$date(Ljava/util/Date;)V

    .line 1158
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$comment()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$comment(Ljava/lang/String;)V

    .line 1159
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$custom1()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$custom1(I)V

    .line 1160
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$custom2()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$custom2(I)V

    .line 1161
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$custom3()I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$custom3(I)V

    .line 1162
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmGet$doneMinistry()Z

    move-result p0

    invoke-interface {p2, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;->realmSet$doneMinistry(Z)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 8

    .line 563
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    const-string v1, ""

    const-string v2, "ServiceSession"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 564
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v6, 0x1

    const-string v1, ""

    const-string v2, "minutes"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 565
    const-string v1, ""

    const-string v2, "rbcMinutes"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 566
    const-string v1, ""

    const-string v2, "magazines"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 567
    const-string v1, ""

    const-string v2, "booklets"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 568
    const-string v1, ""

    const-string v2, "books"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 569
    const-string v1, ""

    const-string v2, "tracts"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    move-object v7, v3

    .line 570
    sget-object v3, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "mileageKilometers"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 571
    const-string v1, ""

    const-string v2, "retVisits"

    move-object v3, v7

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 572
    const-string v1, ""

    const-string v2, "studies"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 573
    const-string v1, ""

    const-string v2, "studyPersons"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 574
    const-string v1, ""

    const-string v2, "dvds"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 575
    const-string v1, ""

    const-string v2, "videoShowings"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 576
    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    const-string v1, ""

    const-string v2, "date"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 577
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "comment"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v6, 0x1

    .line 578
    const-string v1, ""

    const-string v2, "custom1"

    move-object v3, v7

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 579
    const-string v1, ""

    const-string v2, "custom2"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 580
    const-string v1, ""

    const-string v2, "custom3"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 581
    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "doneMinistry"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 582
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 586
    sget-object v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;
    .locals 7

    .line 893
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 894
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 895
    new-instance p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;

    invoke-direct {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;-><init>()V

    .line 896
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

    .line 1270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 1271
    :cond_1
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;

    .line 1273
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 1274
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    .line 1275
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1276
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 1277
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_0
    return v1

    .line 1278
    :cond_3
    invoke-virtual {v2}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v4

    invoke-virtual {v3}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v5

    if-eq v4, v5, :cond_4

    return v1

    .line 1279
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

    .line 1283
    :cond_5
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1284
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 1285
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 1287
    :cond_7
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 1256
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1257
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1258
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1261
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

    .line 1262
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

    .line 135
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 138
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 139
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    .line 140
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 141
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 142
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 143
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 144
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$booklets()I
    .locals 3

    .line 216
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 217
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->bookletsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$books()I
    .locals 3

    .line 238
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 239
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->booksColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$comment()Ljava/lang/String;
    .locals 3

    .line 447
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 448
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->commentColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$custom1()I
    .locals 3

    .line 477
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 478
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom1ColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$custom2()I
    .locals 3

    .line 499
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 500
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom2ColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$custom3()I
    .locals 3

    .line 521
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 522
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom3ColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 3

    .line 414
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 415
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 418
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$doneMinistry()Z
    .locals 3

    .line 543
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 544
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->doneMinistryColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$dvds()I
    .locals 3

    .line 370
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 371
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dvdsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$magazines()I
    .locals 3

    .line 194
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 195
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->magazinesColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$mileageKilometers()F
    .locals 3

    .line 282
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 283
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->mileageKilometersColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public realmGet$minutes()I
    .locals 3

    .line 150
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 151
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->minutesColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    .line 1251
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$rbcMinutes()I
    .locals 3

    .line 172
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 173
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->rbcMinutesColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$retVisits()I
    .locals 3

    .line 304
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 305
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->retVisitsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$studies()I
    .locals 3

    .line 326
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 327
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->studiesColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$studyPersons()I
    .locals 3

    .line 348
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 349
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->studyPersonsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$tracts()I
    .locals 3

    .line 260
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 261
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->tractsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$videoShowings()I
    .locals 3

    .line 392
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 393
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->videoShowingsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmSet$booklets(I)V
    .locals 9

    .line 222
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->bookletsColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 232
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->bookletsColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$books(I)V
    .locals 9

    .line 244
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->booksColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 254
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->booksColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$comment(Ljava/lang/String;)V
    .locals 14

    .line 453
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 459
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->commentColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 462
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->commentColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 466
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 468
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->commentColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 471
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->commentColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$custom1(I)V
    .locals 9

    .line 483
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 488
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom1ColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 493
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom1ColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$custom2(I)V
    .locals 9

    .line 505
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 510
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom2ColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 515
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom2ColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$custom3(I)V
    .locals 9

    .line 527
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 532
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom3ColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 536
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 537
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom3ColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$date(Ljava/util/Date;)V
    .locals 14

    .line 423
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 429
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 432
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 436
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 438
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dateColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 441
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dateColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$doneMinistry(Z)V
    .locals 8

    .line 549
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 554
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->doneMinistryColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    :cond_1
    move v6, p1

    .line 558
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 559
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->doneMinistryColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$dvds(I)V
    .locals 9

    .line 376
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 381
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dvdsColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 386
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dvdsColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$magazines(I)V
    .locals 9

    .line 200
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->magazinesColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 210
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->magazinesColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$mileageKilometers(F)V
    .locals 8

    .line 288
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 293
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->mileageKilometersColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setFloat(JJFZ)V

    return-void

    :cond_1
    move v6, p1

    .line 297
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 298
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->mileageKilometersColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setFloat(JF)V

    return-void
.end method

.method public realmSet$minutes(I)V
    .locals 9

    .line 156
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->minutesColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 166
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->minutesColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$rbcMinutes(I)V
    .locals 9

    .line 178
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->rbcMinutesColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 188
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->rbcMinutesColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$retVisits(I)V
    .locals 9

    .line 310
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->retVisitsColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 320
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->retVisitsColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$studies(I)V
    .locals 9

    .line 332
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->studiesColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 342
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->studiesColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$studyPersons(I)V
    .locals 9

    .line 354
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->studyPersonsColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 364
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->studyPersonsColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$tracts(I)V
    .locals 9

    .line 266
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->tractsColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 276
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->tractsColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$videoShowings(I)V
    .locals 9

    .line 398
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 403
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->videoShowingsColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 408
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->videoShowingsColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1170
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    const-string v0, "Invalid object"

    return-object v0

    .line 1173
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceSession = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1174
    const-string v1, "{minutes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$minutes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1176
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    const-string v3, "{rbcMinutes:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$rbcMinutes()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    const-string v3, "{magazines:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$magazines()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    const-string v3, "{booklets:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$booklets()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    const-string v3, "{books:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$books()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    const-string v3, "{tracts:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$tracts()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    const-string v3, "{mileageKilometers:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$mileageKilometers()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    const-string v3, "{retVisits:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$retVisits()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    const-string v3, "{studies:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$studies()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    const-string v3, "{studyPersons:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$studyPersons()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    const-string v3, "{dvds:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$dvds()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    const-string v3, "{videoShowings:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$videoShowings()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    const-string v3, "{date:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$date()Ljava/util/Date;

    move-result-object v3

    const-string v4, "null"

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$date()Ljava/util/Date;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    const-string v3, "{comment:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$comment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$comment()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    const-string v3, "{custom1:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$custom1()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    const-string v3, "{custom2:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$custom2()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    const-string v3, "{custom3:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$custom3()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    const-string v2, "{doneMinistry:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->realmGet$doneMinistry()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
