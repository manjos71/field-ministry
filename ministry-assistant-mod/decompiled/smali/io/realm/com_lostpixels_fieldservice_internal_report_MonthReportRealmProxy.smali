.class public Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;
.super Lcom/lostpixels/fieldservice/internal/report/MonthReport;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

.field private mlstDailyItemsRealmList:Lio/realm/RealmList;

.field private mlstSchoolInfoRealmList:Lio/realm/RealmList;

.field private proxyState:Lio/realm/ProxyState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;-><init>()V

    .line 111
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MonthReport;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;
    .locals 8

    .line 895
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 897
    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    return-object v0

    .line 902
    :cond_0
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 903
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 906
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastReportModifiedColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 907
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastGoalModifiedColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mLastGoalModified()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 908
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastMonthModifiedColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mLastMonthModified()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 909
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastSchoolModifiedColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mLastSchoolModified()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 910
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mbHasBeenSentColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mbHasBeenSent()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 911
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->idColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 912
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->meProfileMonthColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$meProfileMonth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 916
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 917
    invoke-static {p0, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;

    move-result-object p1

    .line 918
    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    const/4 v6, 0x0

    .line 922
    const-class v7, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    if-nez v2, :cond_1

    .line 923
    invoke-virtual {p1, v6}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmSet$moMonthReport(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    :goto_0
    move-object v0, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    goto :goto_1

    .line 925
    :cond_1
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    if-eqz v0, :cond_2

    .line 927
    invoke-virtual {p1, v0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmSet$moMonthReport(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    goto :goto_0

    .line 929
    :cond_2
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, v7}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    move-object v0, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmSet$moMonthReport(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 933
    :goto_1
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p0

    const/4 p3, 0x0

    if-eqz p0, :cond_4

    .line 935
    invoke-virtual {p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p4

    .line 936
    invoke-virtual {p4}, Lio/realm/RealmList;->clear()V

    const/4 p5, 0x0

    .line 937
    :goto_2
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v1

    if-ge p5, v1, :cond_4

    .line 938
    invoke-virtual {p0, p5}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 939
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    if-eqz v1, :cond_3

    .line 941
    invoke-virtual {p4, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 943
    :cond_3
    invoke-virtual {v0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1, v7}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v1

    invoke-virtual {p4, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    .line 948
    :cond_4
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    if-nez v2, :cond_5

    .line 950
    invoke-virtual {p1, v6}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmSet$moMonthGoal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    goto :goto_4

    .line 952
    :cond_5
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    if-eqz p0, :cond_6

    .line 954
    invoke-virtual {p1, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmSet$moMonthGoal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    goto :goto_4

    .line 956
    :cond_6
    invoke-virtual {v0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p0

    invoke-virtual {p0, v7}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmSet$moMonthGoal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 960
    :goto_4
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 962
    invoke-virtual {p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object p2

    .line 963
    invoke-virtual {p2}, Lio/realm/RealmList;->clear()V

    .line 964
    :goto_5
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result p4

    if-ge p3, p4, :cond_8

    .line 965
    invoke-virtual {p0, p3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 966
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    if-eqz p4, :cond_7

    .line 968
    invoke-virtual {p2, p4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 970
    :cond_7
    invoke-virtual {v0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p4

    const-class p5, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;

    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    move-result-object p4

    invoke-virtual {p2, p4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_8
    return-object p1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MonthReport;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;
    .locals 11

    move-object v7, p4

    .line 857
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

    .line 858
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 859
    iget-wide v2, v1, Lio/realm/BaseRealm;->threadId:J

    iget-wide v4, p0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 862
    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    .line 860
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_1
    sget-object v1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 867
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_2

    .line 869
    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    return-object v2

    :cond_2
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 875
    const-class v3, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 876
    iget-wide v5, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->idColKey:J

    .line 877
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$id()J

    move-result-wide v8

    invoke-virtual {v3, v5, v6, v8, v9}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v10, v5, v8

    if-nez v10, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 882
    :cond_3
    :try_start_0
    invoke-virtual {v3, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 883
    new-instance v2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;

    invoke-direct {v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;-><init>()V

    .line 884
    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    :cond_4
    move v1, p3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 887
    throw v0

    :goto_0
    if-eqz v1, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p5

    move-object v4, v7

    .line 891
    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static/range {p0 .. p5}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MonthReport;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v0

    return-object v0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;
    .locals 1

    .line 549
    new-instance v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/MonthReport;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;
    .locals 9

    const/4 v0, 0x0

    if-gt p1, p2, :cond_7

    if-nez p0, :cond_0

    goto/16 :goto_5

    .line 1404
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez v1, :cond_1

    .line 1407
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;-><init>()V

    .line 1408
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1411
    :cond_1
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_2

    .line 1412
    iget-object p0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    return-object p0

    .line 1414
    :cond_2
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    .line 1415
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object v1, v2

    .line 1419
    :goto_0
    move-object v2, p0

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    check-cast v2, Lio/realm/Realm;

    .line 1422
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmSet$moMonthReport(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    const/4 v2, 0x0

    if-ne p1, p2, :cond_3

    .line 1426
    invoke-interface {v1, v0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmSet$mlstDailyItems(Lio/realm/RealmList;)V

    goto :goto_2

    .line 1428
    :cond_3
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v4

    .line 1429
    new-instance v5, Lio/realm/RealmList;

    invoke-direct {v5}, Lio/realm/RealmList;-><init>()V

    .line 1430
    invoke-interface {v1, v5}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmSet$mlstDailyItems(Lio/realm/RealmList;)V

    .line 1432
    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    .line 1434
    invoke-virtual {v4, v7}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-static {v8, v3, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v8

    .line 1435
    invoke-virtual {v5, v8}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1438
    :cond_4
    :goto_2
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmSet$mLastReportModified(Ljava/util/Date;)V

    .line 1441
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v4

    invoke-static {v4, v3, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmSet$moMonthGoal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 1442
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mLastGoalModified()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmSet$mLastGoalModified(Ljava/util/Date;)V

    .line 1443
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mLastMonthModified()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmSet$mLastMonthModified(Ljava/util/Date;)V

    if-ne p1, p2, :cond_5

    .line 1447
    invoke-interface {v1, v0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmSet$mlstSchoolInfo(Lio/realm/RealmList;)V

    goto :goto_4

    .line 1449
    :cond_5
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object p1

    .line 1450
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    .line 1451
    invoke-interface {v1, v0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmSet$mlstSchoolInfo(Lio/realm/RealmList;)V

    .line 1453
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v4

    :goto_3
    if-ge v2, v4, :cond_6

    .line 1455
    invoke-virtual {p1, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-static {v5, v3, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    move-result-object v5

    .line 1456
    invoke-virtual {v0, v5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1459
    :cond_6
    :goto_4
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mLastSchoolModified()Ljava/util/Date;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmSet$mLastSchoolModified(Ljava/util/Date;)V

    .line 1460
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mbHasBeenSent()Z

    move-result p1

    invoke-interface {v1, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmSet$mbHasBeenSent(Z)V

    .line 1461
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$id()J

    move-result-wide p1

    invoke-interface {v1, p1, p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmSet$id(J)V

    .line 1462
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$meProfileMonth()I

    move-result p0

    invoke-interface {v1, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmSet$meProfileMonth(I)V

    return-object v1

    :cond_7
    :goto_5
    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 11

    .line 529
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    const-string v1, ""

    const-string v2, "MonthReport"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 530
    sget-object v7, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v8, ""

    const-string v1, "moMonthReport"

    const-string v9, "ServiceSession"

    invoke-virtual {v0, v8, v1, v7, v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 531
    sget-object v10, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v1, "mlstDailyItems"

    invoke-virtual {v0, v8, v1, v10, v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 532
    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    const-string v1, ""

    const-string v2, "mLastReportModified"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 533
    const-string v1, "moMonthGoal"

    invoke-virtual {v0, v8, v1, v7, v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 534
    const-string v1, ""

    const-string v2, "mLastGoalModified"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 535
    const-string v1, ""

    const-string v2, "mLastMonthModified"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 536
    const-string v1, "mlstSchoolInfo"

    const-string v2, "SchoolInfoItem"

    invoke-virtual {v0, v8, v1, v10, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 537
    const-string v1, ""

    const-string v2, "mLastSchoolModified"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 538
    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v6, 0x1

    const-string v1, ""

    const-string v2, "mbHasBeenSent"

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 539
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, ""

    const-string v2, "id"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 540
    const-string v1, ""

    const-string v2, "meProfileMonth"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 541
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 545
    sget-object v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;
    .locals 7

    .line 849
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 850
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v2, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 851
    new-instance p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;

    invoke-direct {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;-><init>()V

    .line 852
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;
    .locals 10

    .line 1470
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 1471
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 1473
    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v4

    .line 1474
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    if-nez v4, :cond_0

    .line 1475
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthReportColKey:J

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addNull(J)V

    :goto_0
    move-object v2, p0

    move-object v6, p4

    move-object v7, p5

    goto :goto_1

    .line 1477
    :cond_0
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    if-eqz v2, :cond_1

    .line 1479
    iget-wide v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthReportColKey:J

    invoke-virtual {v1, v3, v4, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObject(JLio/realm/RealmModel;)V

    goto :goto_0

    .line 1481
    :cond_1
    iget-wide v8, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthReportColKey:J

    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p0

    invoke-virtual {v1, v8, v9, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObject(JLio/realm/RealmModel;)V

    .line 1485
    :goto_1
    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object p0

    const/4 p4, 0x0

    if-eqz p0, :cond_4

    .line 1487
    new-instance p5, Lio/realm/RealmList;

    invoke-direct {p5}, Lio/realm/RealmList;-><init>()V

    const/4 v8, 0x0

    .line 1488
    :goto_2
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v3

    if-ge v8, v3, :cond_3

    .line 1489
    invoke-virtual {p0, v8}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 1490
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    if-eqz v3, :cond_2

    .line 1492
    invoke-virtual {p5, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1494
    :cond_2
    invoke-virtual {v2}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    check-cast v3, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    const/4 v5, 0x1

    invoke-static/range {v2 .. v7}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    invoke-virtual {p5, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1497
    :cond_3
    iget-wide v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mlstDailyItemsColKey:J

    invoke-virtual {v1, v3, v4, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    goto :goto_4

    .line 1499
    :cond_4
    iget-wide v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mlstDailyItemsColKey:J

    new-instance p0, Lio/realm/RealmList;

    invoke-direct {p0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v1, v3, v4, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    .line 1501
    :goto_4
    iget-wide v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastReportModifiedColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, v3, v4, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 1503
    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1505
    iget-wide v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthGoalColKey:J

    invoke-virtual {v1, v3, v4}, Lio/realm/internal/objectstore/OsObjectBuilder;->addNull(J)V

    goto :goto_5

    .line 1507
    :cond_5
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    if-eqz p0, :cond_6

    .line 1509
    iget-wide v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthGoalColKey:J

    invoke-virtual {v1, v3, v4, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObject(JLio/realm/RealmModel;)V

    goto :goto_5

    .line 1511
    :cond_6
    iget-wide v8, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthGoalColKey:J

    invoke-virtual {v2}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    const/4 v5, 0x1

    invoke-static/range {v2 .. v7}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p0

    invoke-virtual {v1, v8, v9, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObject(JLio/realm/RealmModel;)V

    .line 1514
    :goto_5
    iget-wide v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastGoalModifiedColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mLastGoalModified()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, v3, v4, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 1515
    iget-wide v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastMonthModifiedColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mLastMonthModified()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, v3, v4, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 1517
    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 1519
    new-instance p5, Lio/realm/RealmList;

    invoke-direct {p5}, Lio/realm/RealmList;-><init>()V

    .line 1520
    :goto_6
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ge p4, v0, :cond_8

    .line 1521
    invoke-virtual {p0, p4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 1522
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    if-eqz v0, :cond_7

    .line 1524
    invoke-virtual {p5, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1526
    :cond_7
    invoke-virtual {v2}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v3, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {v0, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;

    const/4 v5, 0x1

    invoke-static/range {v2 .. v7}, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    move-result-object v0

    invoke-virtual {p5, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    .line 1529
    :cond_8
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mlstSchoolInfoColKey:J

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    goto :goto_8

    .line 1531
    :cond_9
    iget-wide p4, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mlstSchoolInfoColKey:J

    new-instance p0, Lio/realm/RealmList;

    invoke-direct {p0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v1, p4, p5, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    .line 1533
    :goto_8
    iget-wide p4, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastSchoolModifiedColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mLastSchoolModified()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p4, p5, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 1534
    iget-wide p4, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mbHasBeenSentColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$mbHasBeenSent()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p4, p5, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addBoolean(JLjava/lang/Boolean;)V

    .line 1535
    iget-wide p4, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->idColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p4, p5, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 1536
    iget-wide p0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->meProfileMonthColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxyInterface;->realmGet$meProfileMonth()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 1538
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

    .line 1617
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 1618
    :cond_1
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;

    .line 1620
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 1621
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    .line 1622
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1623
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 1624
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_0
    return v1

    .line 1625
    :cond_3
    invoke-virtual {v2}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v4

    invoke-virtual {v3}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v5

    if-eq v4, v5, :cond_4

    return v1

    .line 1626
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

    .line 1630
    :cond_5
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1631
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 1632
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 1634
    :cond_7
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 1603
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1604
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1605
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1608
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

    .line 1609
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

    .line 116
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 120
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    .line 121
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 122
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 123
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 124
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 125
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$id()J
    .locals 3

    .line 491
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 492
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$mLastGoalModified()Ljava/util/Date;
    .locals 3

    .line 309
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 310
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastGoalModifiedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 313
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastGoalModifiedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mLastMonthModified()Ljava/util/Date;
    .locals 3

    .line 342
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 343
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastMonthModifiedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 346
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastMonthModifiedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mLastReportModified()Ljava/util/Date;
    .locals 3

    .line 234
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 235
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastReportModifiedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 238
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastReportModifiedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mLastSchoolModified()Ljava/util/Date;
    .locals 3

    .line 436
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 437
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastSchoolModifiedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 440
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastSchoolModifiedColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mbHasBeenSent()Z
    .locals 3

    .line 469
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 470
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mbHasBeenSentColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$meProfileMonth()I
    .locals 3

    .line 509
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 510
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->meProfileMonthColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$mlstDailyItems()Lio/realm/RealmList;
    .locals 4

    .line 172
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 174
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->mlstDailyItemsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mlstDailyItemsColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 178
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->mlstDailyItemsRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$mlstSchoolInfo()Lio/realm/RealmList;
    .locals 4

    .line 374
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 376
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->mlstSchoolInfoRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 379
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mlstSchoolInfoColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 380
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->mlstSchoolInfoRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 7

    .line 266
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 267
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthGoalColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthGoalColKey:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-class v2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    return-object v0
.end method

.method public realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 7

    .line 130
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 131
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthReportColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthReportColKey:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-class v2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    .line 1598
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmSet$id(J)V
    .locals 0

    .line 497
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 502
    :cond_0
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 503
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string p2, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {p1, p2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$mLastGoalModified(Ljava/util/Date;)V
    .locals 14

    .line 318
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 324
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastGoalModifiedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 327
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastGoalModifiedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 331
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 333
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastGoalModifiedColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 336
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastGoalModifiedColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$mLastMonthModified(Ljava/util/Date;)V
    .locals 14

    .line 351
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 357
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastMonthModifiedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 360
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastMonthModifiedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 364
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 366
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastMonthModifiedColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 369
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastMonthModifiedColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$mLastReportModified(Ljava/util/Date;)V
    .locals 14

    .line 243
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 249
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastReportModifiedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 252
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastReportModifiedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 256
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 258
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastReportModifiedColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 261
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastReportModifiedColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$mLastSchoolModified(Ljava/util/Date;)V
    .locals 14

    .line 445
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 451
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastSchoolModifiedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 454
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastSchoolModifiedColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 458
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 460
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastSchoolModifiedColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 463
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastSchoolModifiedColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$mbHasBeenSent(Z)V
    .locals 8

    .line 475
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 480
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mbHasBeenSentColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    :cond_1
    move v6, p1

    .line 484
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 485
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mbHasBeenSentColKey:J

    invoke-interface {p1, v0, v1, v6}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$meProfileMonth(I)V
    .locals 9

    .line 515
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 520
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->meProfileMonthColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 525
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->meProfileMonthColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$mlstDailyItems(Lio/realm/RealmList;)V
    .locals 8

    .line 185
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 186
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 189
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v2, "mlstDailyItems"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p1, :cond_5

    .line 193
    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 194
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 196
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 197
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    if-eqz v3, :cond_3

    .line 198
    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 201
    :cond_2
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v3, v4}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 207
    :cond_5
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 208
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mlstDailyItemsColKey:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 210
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 211
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_8

    .line 213
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 214
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    int-to-long v4, v1

    .line 215
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

    .line 218
    :cond_6
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_7

    goto :goto_4

    .line 222
    :cond_7
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    .line 224
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 225
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 226
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

.method public realmSet$mlstSchoolInfo(Lio/realm/RealmList;)V
    .locals 8

    .line 387
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 388
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 391
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v2, "mlstSchoolInfo"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p1, :cond_5

    .line 395
    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 396
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 398
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 399
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    if-eqz v3, :cond_3

    .line 400
    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 403
    :cond_2
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v3, v4}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 401
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 409
    :cond_5
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 410
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mlstSchoolInfoColKey:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 412
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 413
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_8

    .line 415
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 416
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    int-to-long v4, v1

    .line 417
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

    .line 420
    :cond_6
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_7

    goto :goto_4

    .line 424
    :cond_7
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    .line 426
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 427
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 428
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

.method public realmSet$moMonthGoal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 10

    .line 275
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 276
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 277
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v1

    const-string v2, "moMonthGoal"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 283
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 284
    new-array v1, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, p1, v1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 286
    :cond_2
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 289
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthGoalColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 292
    :cond_3
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 293
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v3, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthGoalColKey:J

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

    .line 297
    :cond_4
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_5

    .line 299
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthGoalColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 302
    :cond_5
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 303
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthGoalColKey:J

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

.method public realmSet$moMonthReport(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 10

    .line 139
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 140
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v1

    const-string v2, "moMonthReport"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 147
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 148
    new-array v1, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, p1, v1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 150
    :cond_2
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 153
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthReportColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 156
    :cond_3
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 157
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v3, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthReportColKey:J

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

    .line 161
    :cond_4
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_5

    .line 163
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthReportColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 166
    :cond_5
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 167
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthReportColKey:J

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

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1545
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1546
    const-string v0, "Invalid object"

    return-object v0

    .line 1548
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MonthReport = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1549
    const-string v1, "{moMonthReport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v1

    const-string v2, "ServiceSession"

    const-string v3, "null"

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    const-string v5, "{mlstDailyItems:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    const-string v5, "RealmList<ServiceSession>["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    const-string v6, "{mLastReportModified:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$mLastReportModified()Ljava/util/Date;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v3

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    const-string v6, "{moMonthGoal:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    const-string v2, "{mLastGoalModified:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$mLastGoalModified()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$mLastGoalModified()Ljava/util/Date;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    const-string v2, "{mLastMonthModified:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$mLastMonthModified()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$mLastMonthModified()Ljava/util/Date;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v3

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    const-string v2, "{mlstSchoolInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    const-string v2, "RealmList<SchoolInfoItem>["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    const-string v2, "{mLastSchoolModified:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$mLastSchoolModified()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$mLastSchoolModified()Ljava/util/Date;

    move-result-object v3

    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    const-string v2, "{mbHasBeenSent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$mbHasBeenSent()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    const-string v2, "{id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$id()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    const-string v2, "{meProfileMonth:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->realmGet$meProfileMonth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
