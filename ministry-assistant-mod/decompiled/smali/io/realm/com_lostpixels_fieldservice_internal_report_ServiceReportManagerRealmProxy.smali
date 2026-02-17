.class public Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;
.super Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

.field private mlstServiceYearsRealmList:Lio/realm/RealmList;

.field private proxyState:Lio/realm/ProxyState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;-><init>()V

    .line 122
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;
    .locals 9

    .line 912
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 914
    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    return-object v0

    .line 919
    :cond_0
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 920
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 923
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->idColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 924
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom1ColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$mCustom1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 925
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1IsTimeColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem1IsTime()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 926
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1CapsColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem1Caps()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 927
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom1ColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$usingCustom1()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 928
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom2ColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$mCustom2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 929
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2CapsColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem2Caps()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 930
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom2ColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$usingCustom2()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 931
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom3ColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$mCustom3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 932
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3CapsColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem3Caps()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 933
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom3ColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$usingCustom3()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 934
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustomDateColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$mCustomDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 935
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2IsTimeColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem2IsTime()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 936
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3IsTimeColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem3IsTime()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 940
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 941
    invoke-static {p0, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;

    move-result-object p1

    .line 942
    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 947
    invoke-virtual {p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v0

    .line 948
    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    const/4 v1, 0x0

    .line 949
    :goto_0
    invoke-virtual {p2}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 950
    invoke-virtual {p2, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    .line 951
    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    if-eqz v2, :cond_1

    .line 953
    invoke-virtual {v0, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    move-object v3, p0

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    goto :goto_1

    .line 955
    :cond_1
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    move-object v3, p0

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/YearReport;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

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

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;
    .locals 11

    move-object v7, p4

    .line 874
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

    .line 875
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 876
    iget-wide v2, v1, Lio/realm/BaseRealm;->threadId:J

    iget-wide v4, p0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 879
    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    .line 877
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_1
    sget-object v1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 884
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_2

    .line 886
    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    return-object v2

    :cond_2
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 892
    const-class v3, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 893
    iget-wide v5, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->idColKey:J

    .line 894
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$id()J

    move-result-wide v8

    invoke-virtual {v3, v5, v6, v8, v9}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v10, v5, v8

    if-nez v10, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 899
    :cond_3
    :try_start_0
    invoke-virtual {v3, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 900
    new-instance v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;

    invoke-direct {v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;-><init>()V

    .line 901
    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    :cond_4
    move v1, p3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 904
    throw v0

    :goto_0
    if-eqz v1, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p5

    move-object v4, v7

    .line 908
    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static/range {p0 .. p5}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    return-object v0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;
    .locals 1

    .line 564
    new-instance v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;
    .locals 6

    const/4 v0, 0x0

    if-gt p1, p2, :cond_5

    if-nez p0, :cond_0

    goto/16 :goto_3

    .line 1259
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez v1, :cond_1

    .line 1262
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;-><init>()V

    .line 1263
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1266
    :cond_1
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_2

    .line 1267
    iget-object p0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    return-object p0

    .line 1269
    :cond_2
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    .line 1270
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object v1, v2

    .line 1274
    :goto_0
    move-object v2, p0

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    check-cast v2, Lio/realm/Realm;

    .line 1275
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$id()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$id(J)V

    if-ne p1, p2, :cond_3

    .line 1279
    invoke-interface {v1, v0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$mlstServiceYears(Lio/realm/RealmList;)V

    goto :goto_2

    .line 1281
    :cond_3
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v0

    .line 1282
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 1283
    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$mlstServiceYears(Lio/realm/RealmList;)V

    add-int/lit8 p1, p1, 0x1

    .line 1285
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 1287
    invoke-virtual {v0, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-static {v5, p1, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/YearReport;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v5

    .line 1288
    invoke-virtual {v2, v5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1291
    :cond_4
    :goto_2
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$mCustom1()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$mCustom1(Ljava/lang/String;)V

    .line 1292
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem1IsTime()Z

    move-result p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$customItem1IsTime(Z)V

    .line 1293
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem1Caps()Z

    move-result p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$customItem1Caps(Z)V

    .line 1294
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$usingCustom1()Z

    move-result p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$usingCustom1(Z)V

    .line 1295
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$mCustom2()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$mCustom2(Ljava/lang/String;)V

    .line 1296
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem2Caps()Z

    move-result p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$customItem2Caps(Z)V

    .line 1297
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$usingCustom2()Z

    move-result p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$usingCustom2(Z)V

    .line 1298
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$mCustom3()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$mCustom3(Ljava/lang/String;)V

    .line 1299
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem3Caps()Z

    move-result p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$customItem3Caps(Z)V

    .line 1300
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$usingCustom3()Z

    move-result p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$usingCustom3(Z)V

    .line 1301
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$mCustomDate()Ljava/util/Date;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$mCustomDate(Ljava/util/Date;)V

    .line 1302
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem2IsTime()Z

    move-result p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$customItem2IsTime(Z)V

    .line 1303
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem3IsTime()Z

    move-result p0

    invoke-interface {v1, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmSet$customItem3IsTime(Z)V

    return-object v1

    :cond_5
    :goto_3
    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 9

    .line 540
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    const-string v1, ""

    const-string v2, "ServiceReportManager"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 541
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v1, ""

    const-string v2, "id"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 542
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v2, "YearReport"

    const-string v3, ""

    const-string v4, "mlstServiceYears"

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 543
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, ""

    const-string v2, "mCustom1"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    move-object v7, v3

    .line 544
    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v6, 0x1

    const-string v1, ""

    const-string v2, "customItem1IsTime"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 545
    const-string v1, ""

    const-string v2, "customItem1Caps"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 546
    const-string v1, ""

    const-string v2, "usingCustom1"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    move-object v8, v3

    const/4 v6, 0x0

    .line 547
    const-string v1, ""

    const-string v2, "mCustom2"

    move-object v3, v7

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v6, 0x1

    .line 548
    const-string v1, ""

    const-string v2, "customItem2Caps"

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 549
    const-string v1, ""

    const-string v2, "usingCustom2"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v6, 0x0

    .line 550
    const-string v1, ""

    const-string v2, "mCustom3"

    move-object v3, v7

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v6, 0x1

    .line 551
    const-string v1, ""

    const-string v2, "customItem3Caps"

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 552
    const-string v1, ""

    const-string v2, "usingCustom3"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 553
    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    const-string v1, ""

    const-string v2, "mCustomDate"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/4 v6, 0x1

    .line 554
    const-string v1, ""

    const-string v2, "customItem2IsTime"

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 555
    const-string v1, ""

    const-string v2, "customItem3IsTime"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 556
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 560
    sget-object v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;
    .locals 7

    .line 866
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 867
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v2, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v0, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 868
    new-instance p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;

    invoke-direct {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;-><init>()V

    .line 869
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;
    .locals 10

    .line 1311
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 1312
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 1313
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->idColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 1315
    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1317
    new-instance v8, Lio/realm/RealmList;

    invoke-direct {v8}, Lio/realm/RealmList;-><init>()V

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 1318
    :goto_0
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v9, v2, :cond_1

    .line 1319
    invoke-virtual {v0, v9}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    .line 1320
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    if-eqz v2, :cond_0

    .line 1322
    invoke-virtual {v8, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1324
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/YearReport;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-virtual {v8, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1327
    :cond_1
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mlstServiceYearsColKey:J

    invoke-virtual {v1, v2, v3, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    goto :goto_2

    .line 1329
    :cond_2
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mlstServiceYearsColKey:J

    new-instance p0, Lio/realm/RealmList;

    invoke-direct {p0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    .line 1331
    :goto_2
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom1ColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$mCustom1()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1332
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1IsTimeColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem1IsTime()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1333
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1CapsColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem1Caps()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1334
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom1ColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$usingCustom1()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1335
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom2ColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$mCustom2()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1336
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2CapsColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem2Caps()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1337
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom2ColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$usingCustom2()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1338
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom3ColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$mCustom3()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 1339
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3CapsColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem3Caps()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1340
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom3ColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$usingCustom3()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1341
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustomDateColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$mCustomDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 1342
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2IsTimeColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem2IsTime()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1343
    iget-wide p0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3IsTimeColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;->realmGet$customItem3IsTime()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1345
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

    .line 1440
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 1441
    :cond_1
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;

    .line 1443
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 1444
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    .line 1445
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1446
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 1447
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_0
    return v1

    .line 1448
    :cond_3
    invoke-virtual {v2}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v4

    invoke-virtual {v3}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v5

    if-eq v4, v5, :cond_4

    return v1

    .line 1449
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

    .line 1453
    :cond_5
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1454
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 1455
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 1457
    :cond_7
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 1426
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1427
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1428
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1431
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

    .line 1432
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

    .line 127
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 131
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    .line 132
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 133
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 134
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 135
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 136
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$customItem1Caps()Z
    .locals 3

    .line 273
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 274
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1CapsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$customItem1IsTime()Z
    .locals 3

    .line 251
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 252
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1IsTimeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$customItem2Caps()Z
    .locals 3

    .line 347
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 348
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2CapsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$customItem2IsTime()Z
    .locals 3

    .line 498
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 499
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2IsTimeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$customItem3Caps()Z
    .locals 3

    .line 421
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 422
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3CapsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$customItem3IsTime()Z
    .locals 3

    .line 520
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 521
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3IsTimeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$id()J
    .locals 3

    .line 142
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 143
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$mCustom1()Ljava/lang/String;
    .locals 3

    .line 221
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 222
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom1ColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mCustom2()Ljava/lang/String;
    .locals 3

    .line 317
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 318
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom2ColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mCustom3()Ljava/lang/String;
    .locals 3

    .line 391
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 392
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom3ColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mCustomDate()Ljava/util/Date;
    .locals 3

    .line 465
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 466
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustomDateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 469
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustomDateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mlstServiceYears()Lio/realm/RealmList;
    .locals 4

    .line 159
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 161
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->mlstServiceYearsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mlstServiceYearsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 165
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->mlstServiceYearsRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    .line 1421
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$usingCustom1()Z
    .locals 3

    .line 295
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 296
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom1ColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$usingCustom2()Z
    .locals 3

    .line 369
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 370
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom2ColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$usingCustom3()Z
    .locals 3

    .line 443
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 444
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom3ColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmSet$customItem1Caps(Z)V
    .locals 8

    .line 279
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1CapsColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    :cond_1
    move v6, p1

    .line 288
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 289
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1CapsColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$customItem1IsTime(Z)V
    .locals 8

    .line 257
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1IsTimeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    :cond_1
    move v6, p1

    .line 266
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 267
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1IsTimeColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$customItem2Caps(Z)V
    .locals 8

    .line 353
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 358
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2CapsColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    :cond_1
    move v6, p1

    .line 362
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 363
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2CapsColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$customItem2IsTime(Z)V
    .locals 8

    .line 504
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 509
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2IsTimeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    :cond_1
    move v6, p1

    .line 513
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 514
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2IsTimeColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$customItem3Caps(Z)V
    .locals 8

    .line 427
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 432
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3CapsColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    :cond_1
    move v6, p1

    .line 436
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 437
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3CapsColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$customItem3IsTime(Z)V
    .locals 8

    .line 526
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 531
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3IsTimeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    :cond_1
    move v6, p1

    .line 535
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 536
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3IsTimeColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    .line 148
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 154
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string p2, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {p1, p2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$mCustom1(Ljava/lang/String;)V
    .locals 14

    .line 227
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 233
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom1ColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 236
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom1ColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 240
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 242
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom1ColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 245
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom1ColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$mCustom2(Ljava/lang/String;)V
    .locals 14

    .line 323
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 329
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom2ColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 332
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom2ColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 336
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 338
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom2ColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 341
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom2ColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$mCustom3(Ljava/lang/String;)V
    .locals 14

    .line 397
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 403
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom3ColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 406
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom3ColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 410
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 412
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom3ColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 415
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom3ColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$mCustomDate(Ljava/util/Date;)V
    .locals 14

    .line 474
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 480
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustomDateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 483
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustomDateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 487
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 489
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustomDateColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 492
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustomDateColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$mlstServiceYears(Lio/realm/RealmList;)V
    .locals 8

    .line 172
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 176
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v2, "mlstServiceYears"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p1, :cond_5

    .line 180
    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 181
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 183
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 184
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    if-eqz v3, :cond_3

    .line 185
    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 188
    :cond_2
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v3, v4}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 194
    :cond_5
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 195
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mlstServiceYearsColKey:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 197
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 198
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_8

    .line 200
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    .line 201
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    int-to-long v4, v1

    .line 202
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

    .line 205
    :cond_6
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_7

    goto :goto_4

    .line 209
    :cond_7
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    .line 211
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    .line 212
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 213
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

.method public realmSet$usingCustom1(Z)V
    .locals 8

    .line 301
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom1ColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    :cond_1
    move v6, p1

    .line 310
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 311
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom1ColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$usingCustom2(Z)V
    .locals 8

    .line 375
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 380
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom2ColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    :cond_1
    move v6, p1

    .line 384
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 385
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom2ColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$usingCustom3(Z)V
    .locals 8

    .line 449
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 454
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom3ColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    :cond_1
    move v6, p1

    .line 458
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 459
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom3ColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1352
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1353
    const-string v0, "Invalid object"

    return-object v0

    .line 1355
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceReportManager = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1356
    const-string v1, "{id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1358
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    const-string v3, "{mlstServiceYears:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    const-string v3, "RealmList<YearReport>["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    const-string v4, "{mCustom1:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$mCustom1()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$mCustom1()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    const-string v4, "{customItem1IsTime:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$customItem1IsTime()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    const-string v4, "{customItem1Caps:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$customItem1Caps()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    const-string v4, "{usingCustom1:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$usingCustom1()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    const-string v4, "{mCustom2:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$mCustom2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$mCustom2()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    const-string v4, "{customItem2Caps:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$customItem2Caps()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    const-string v4, "{usingCustom2:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$usingCustom2()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    const-string v4, "{mCustom3:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$mCustom3()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$mCustom3()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v5

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    const-string v4, "{customItem3Caps:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$customItem3Caps()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    const-string v4, "{usingCustom3:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$usingCustom3()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    const-string v4, "{mCustomDate:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$mCustomDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$mCustomDate()Ljava/util/Date;

    move-result-object v5

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    const-string v4, "{customItem2IsTime:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$customItem2IsTime()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    const-string v2, "{customItem3IsTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->realmGet$customItem3IsTime()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
