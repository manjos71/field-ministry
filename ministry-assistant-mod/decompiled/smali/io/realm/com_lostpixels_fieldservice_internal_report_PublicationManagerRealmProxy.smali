.class public Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;
.super Lcom/lostpixels/fieldservice/internal/report/PublicationManager;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private awakeMapRealmList:Lio/realm/RealmList;

.field private columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

.field private magazineMapRealmList:Lio/realm/RealmList;

.field private marrBooksRealmList:Lio/realm/RealmList;

.field private marrBroschuresRealmList:Lio/realm/RealmList;

.field private marrMoviesRealmList:Lio/realm/RealmList;

.field private marrOtherRealmList:Lio/realm/RealmList;

.field private marrTractsRealmList:Lio/realm/RealmList;

.field private marrVideosRealmList:Lio/realm/RealmList;

.field private proxyState:Lio/realm/ProxyState;

.field private watchtowerMapRealmList:Lio/realm/RealmList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;-><init>()V

    .line 118
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;Lcom/lostpixels/fieldservice/internal/report/PublicationManager;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;
    .locals 11

    .line 896
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 898
    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    return-object v0

    .line 903
    :cond_0
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 904
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    move-object/from16 v5, p5

    invoke-direct {v1, v0, v5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 907
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->idColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$id()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 908
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrBooksColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addStringList(JLio/realm/RealmList;)V

    .line 909
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrVideosColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addStringList(JLio/realm/RealmList;)V

    .line 910
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrBroschuresColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addStringList(JLio/realm/RealmList;)V

    .line 911
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrTractsColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addStringList(JLio/realm/RealmList;)V

    .line 912
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrOtherColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addStringList(JLio/realm/RealmList;)V

    .line 913
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrMoviesColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addStringList(JLio/realm/RealmList;)V

    .line 914
    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->dateColKey:J

    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$date()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 918
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 919
    invoke-static {p0, p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;

    move-result-object p1

    .line 920
    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v6

    .line 924
    const-class v7, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 925
    invoke-virtual {p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v9

    .line 926
    invoke-virtual {v9}, Lio/realm/RealmList;->clear()V

    const/4 v10, 0x0

    .line 927
    :goto_0
    invoke-virtual {v6}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 928
    invoke-virtual {v6, v10}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 929
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    if-eqz v0, :cond_1

    .line 931
    invoke-virtual {v9, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 933
    :cond_1
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, v7}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    move-object v0, p0

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    move-result-object v1

    invoke-virtual {v9, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, p5

    goto :goto_0

    .line 938
    :cond_2
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 940
    invoke-virtual {p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v9

    .line 941
    invoke-virtual {v9}, Lio/realm/RealmList;->clear()V

    const/4 v10, 0x0

    .line 942
    :goto_2
    invoke-virtual {v6}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ge v10, v0, :cond_4

    .line 943
    invoke-virtual {v6, v10}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 944
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    if-eqz v0, :cond_3

    .line 946
    invoke-virtual {v9, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 948
    :cond_3
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, v7}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    move-object v0, p0

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    move-result-object v1

    invoke-virtual {v9, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 953
    :cond_4
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 955
    invoke-virtual {p1}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v6

    .line 956
    invoke-virtual {v6}, Lio/realm/RealmList;->clear()V

    .line 957
    :goto_4
    invoke-virtual {p2}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ge v8, v0, :cond_6

    .line 958
    invoke-virtual {p2, v8}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 959
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    if-eqz v0, :cond_5

    .line 961
    invoke-virtual {v6, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 963
    :cond_5
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, v7}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    move-object v0, p0

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    move-result-object v1

    invoke-virtual {v6, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    return-object p1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;Lcom/lostpixels/fieldservice/internal/report/PublicationManager;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;
    .locals 11

    move-object v7, p4

    .line 858
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

    .line 859
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 860
    iget-wide v2, v1, Lio/realm/BaseRealm;->threadId:J

    iget-wide v4, p0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 863
    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    .line 861
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_1
    sget-object v1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 868
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_2

    .line 870
    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    return-object v2

    :cond_2
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 876
    const-class v3, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 877
    iget-wide v5, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->idColKey:J

    .line 878
    invoke-interface {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$id()J

    move-result-wide v8

    invoke-virtual {v3, v5, v6, v8, v9}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v10, v5, v8

    if-nez v10, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 883
    :cond_3
    :try_start_0
    invoke-virtual {v3, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 884
    new-instance v2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;

    invoke-direct {v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;-><init>()V

    .line 885
    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    :cond_4
    move v1, p3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 888
    throw v0

    :goto_0
    if-eqz v1, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p5

    move-object v4, v7

    .line 892
    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static/range {p0 .. p5}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;Lcom/lostpixels/fieldservice/internal/report/PublicationManager;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v0

    return-object v0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;
    .locals 1

    .line 624
    new-instance v0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;
    .locals 9

    const/4 v0, 0x0

    if-gt p1, p2, :cond_9

    if-nez p0, :cond_0

    goto/16 :goto_7

    .line 1639
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez v1, :cond_1

    .line 1642
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;-><init>()V

    .line 1643
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1646
    :cond_1
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_2

    .line 1647
    iget-object p0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    return-object p0

    .line 1649
    :cond_2
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    .line 1650
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object v1, v2

    .line 1654
    :goto_0
    move-object v2, p0

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    check-cast v2, Lio/realm/Realm;

    .line 1655
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$id()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmSet$id(J)V

    .line 1657
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmSet$marrBooks(Lio/realm/RealmList;)V

    .line 1658
    invoke-interface {v1}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v2

    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1660
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmSet$marrVideos(Lio/realm/RealmList;)V

    .line 1661
    invoke-interface {v1}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v2

    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1663
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmSet$marrBroschures(Lio/realm/RealmList;)V

    .line 1664
    invoke-interface {v1}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v2

    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1666
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmSet$marrTracts(Lio/realm/RealmList;)V

    .line 1667
    invoke-interface {v1}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v2

    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1669
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmSet$marrOther(Lio/realm/RealmList;)V

    .line 1670
    invoke-interface {v1}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v2

    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1672
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v1, v2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmSet$marrMovies(Lio/realm/RealmList;)V

    .line 1673
    invoke-interface {v1}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v2

    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    if-ne p1, p2, :cond_3

    .line 1677
    invoke-interface {v1, v0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmSet$awakeMap(Lio/realm/RealmList;)V

    goto :goto_2

    .line 1679
    :cond_3
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v3

    .line 1680
    new-instance v4, Lio/realm/RealmList;

    invoke-direct {v4}, Lio/realm/RealmList;-><init>()V

    .line 1681
    invoke-interface {v1, v4}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmSet$awakeMap(Lio/realm/RealmList;)V

    add-int/lit8 v5, p1, 0x1

    .line 1683
    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    .line 1685
    invoke-virtual {v3, v7}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-static {v8, v5, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    move-result-object v8

    .line 1686
    invoke-virtual {v4, v8}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ne p1, p2, :cond_5

    .line 1692
    invoke-interface {v1, v0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmSet$watchtowerMap(Lio/realm/RealmList;)V

    goto :goto_4

    .line 1694
    :cond_5
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v3

    .line 1695
    new-instance v4, Lio/realm/RealmList;

    invoke-direct {v4}, Lio/realm/RealmList;-><init>()V

    .line 1696
    invoke-interface {v1, v4}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmSet$watchtowerMap(Lio/realm/RealmList;)V

    add-int/lit8 v5, p1, 0x1

    .line 1698
    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_6

    .line 1700
    invoke-virtual {v3, v7}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-static {v8, v5, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    move-result-object v8

    .line 1701
    invoke-virtual {v4, v8}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ne p1, p2, :cond_7

    .line 1707
    invoke-interface {v1, v0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmSet$magazineMap(Lio/realm/RealmList;)V

    goto :goto_6

    .line 1709
    :cond_7
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v0

    .line 1710
    new-instance v3, Lio/realm/RealmList;

    invoke-direct {v3}, Lio/realm/RealmList;-><init>()V

    .line 1711
    invoke-interface {v1, v3}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmSet$magazineMap(Lio/realm/RealmList;)V

    add-int/lit8 p1, p1, 0x1

    .line 1713
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v4

    :goto_5
    if-ge v2, v4, :cond_8

    .line 1715
    invoke-virtual {v0, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-static {v5, p1, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    move-result-object v5

    .line 1716
    invoke-virtual {v3, v5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1719
    :cond_8
    :goto_6
    invoke-interface {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$date()Ljava/util/Date;

    move-result-object p0

    invoke-interface {v1, p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmSet$date(Ljava/util/Date;)V

    return-object v1

    :cond_9
    :goto_7
    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 604
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    const-string v1, ""

    const-string v2, "PublicationManager"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 605
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v1, ""

    const-string v2, "id"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 606
    sget-object v1, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    const-string v2, ""

    const-string v3, "marrBooks"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedValueListProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Z)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 607
    const-string v3, "marrVideos"

    invoke-virtual {v0, v2, v3, v1, v4}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedValueListProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Z)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 608
    const-string v3, "marrBroschures"

    invoke-virtual {v0, v2, v3, v1, v4}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedValueListProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Z)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 609
    const-string v3, "marrTracts"

    invoke-virtual {v0, v2, v3, v1, v4}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedValueListProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Z)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 610
    const-string v3, "marrOther"

    invoke-virtual {v0, v2, v3, v1, v4}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedValueListProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Z)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 611
    const-string v3, "marrMovies"

    invoke-virtual {v0, v2, v3, v1, v4}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedValueListProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Z)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 612
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v3, "awakeMap"

    const-string v4, "AliasesMap"

    invoke-virtual {v0, v2, v3, v1, v4}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 613
    const-string v3, "watchtowerMap"

    invoke-virtual {v0, v2, v3, v1, v4}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 614
    const-string v3, "magazineMap"

    invoke-virtual {v0, v2, v3, v1, v4}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 615
    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, ""

    const-string v2, "date"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 616
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 620
    sget-object v0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;
    .locals 7

    .line 850
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 851
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v2, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 852
    new-instance p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;

    invoke-direct {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;-><init>()V

    .line 853
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Ljava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;
    .locals 12

    move-object/from16 v4, p4

    .line 1727
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 1728
    new-instance v6, Lio/realm/internal/objectstore/OsObjectBuilder;

    move-object/from16 v5, p5

    invoke-direct {v6, v0, v5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 1729
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->idColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 1730
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrBooksColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addStringList(JLio/realm/RealmList;)V

    .line 1731
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrVideosColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addStringList(JLio/realm/RealmList;)V

    .line 1732
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrBroschuresColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addStringList(JLio/realm/RealmList;)V

    .line 1733
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrTractsColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addStringList(JLio/realm/RealmList;)V

    .line 1734
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrOtherColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addStringList(JLio/realm/RealmList;)V

    .line 1735
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrMoviesColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addStringList(JLio/realm/RealmList;)V

    .line 1737
    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v7

    .line 1738
    const-class v8, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    .line 1739
    new-instance v10, Lio/realm/RealmList;

    invoke-direct {v10}, Lio/realm/RealmList;-><init>()V

    const/4 v11, 0x0

    .line 1740
    :goto_0
    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ge v11, v0, :cond_1

    .line 1741
    invoke-virtual {v7, v11}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 1742
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    if-eqz v0, :cond_0

    .line 1744
    invoke-virtual {v10, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1746
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, v8}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    const/4 v3, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    move-result-object v1

    invoke-virtual {v10, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, p5

    goto :goto_0

    .line 1749
    :cond_1
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->awakeMapColKey:J

    invoke-virtual {v6, v0, v1, v10}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    goto :goto_2

    .line 1751
    :cond_2
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->awakeMapColKey:J

    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v6, v0, v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    .line 1754
    :goto_2
    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1756
    new-instance v10, Lio/realm/RealmList;

    invoke-direct {v10}, Lio/realm/RealmList;-><init>()V

    const/4 v11, 0x0

    .line 1757
    :goto_3
    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ge v11, v0, :cond_4

    .line 1758
    invoke-virtual {v7, v11}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 1759
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    if-eqz v0, :cond_3

    .line 1761
    invoke-virtual {v10, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1763
    :cond_3
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, v8}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    const/4 v3, 0x1

    move-object v0, p0

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    move-result-object v1

    invoke-virtual {v10, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1766
    :cond_4
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->watchtowerMapColKey:J

    invoke-virtual {v6, v0, v1, v10}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    goto :goto_5

    .line 1768
    :cond_5
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->watchtowerMapColKey:J

    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v6, v0, v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    .line 1771
    :goto_5
    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 1773
    new-instance v10, Lio/realm/RealmList;

    invoke-direct {v10}, Lio/realm/RealmList;-><init>()V

    .line 1774
    :goto_6
    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ge v9, v0, :cond_7

    .line 1775
    invoke-virtual {v7, v9}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 1776
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    if-eqz v0, :cond_6

    .line 1778
    invoke-virtual {v10, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1780
    :cond_6
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, v8}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    const/4 v3, 0x1

    move-object v0, p0

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    move-result-object v1

    invoke-virtual {v10, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, p4

    goto :goto_6

    .line 1783
    :cond_7
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->magazineMapColKey:J

    invoke-virtual {v6, v0, v1, v10}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    goto :goto_8

    .line 1785
    :cond_8
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->magazineMapColKey:J

    new-instance p0, Lio/realm/RealmList;

    invoke-direct {p0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v6, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addObjectList(JLio/realm/RealmList;)V

    .line 1787
    :goto_8
    iget-wide p0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->dateColKey:J

    invoke-interface {p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, p0, p1, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDate(JLjava/util/Date;)V

    .line 1789
    invoke-virtual {v6}, Lio/realm/internal/objectstore/OsObjectBuilder;->updateExistingTopLevelObject()V

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

    .line 1868
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 1869
    :cond_1
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;

    .line 1871
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 1872
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    .line 1873
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1874
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 1875
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_0
    return v1

    .line 1876
    :cond_3
    invoke-virtual {v2}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v4

    invoke-virtual {v3}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v5

    if-eq v4, v5, :cond_4

    return v1

    .line 1877
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

    .line 1881
    :cond_5
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1882
    iget-object v3, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 1883
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 1885
    :cond_7
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 1854
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1855
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1856
    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1859
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

    .line 1860
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

    .line 123
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 127
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    .line 128
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 129
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 130
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 131
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 132
    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$awakeMap()Lio/realm/RealmList;
    .locals 4

    .line 389
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 391
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->awakeMapRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 394
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->awakeMapColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 395
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->awakeMapRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 3

    .line 573
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 574
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->dateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 577
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->dateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()J
    .locals 3

    .line 138
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 139
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$magazineMap()Lio/realm/RealmList;
    .locals 4

    .line 511
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 513
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->magazineMapRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 516
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->magazineMapColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 517
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->magazineMapRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$marrBooks()Lio/realm/RealmList;
    .locals 4

    .line 155
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 157
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->marrBooksRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 160
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrBooksColKey:J

    sget-object v3, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v0

    .line 161
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->marrBooksRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$marrBroschures()Lio/realm/RealmList;
    .locals 4

    .line 233
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 235
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->marrBroschuresRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 238
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrBroschuresColKey:J

    sget-object v3, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v0

    .line 239
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->marrBroschuresRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$marrMovies()Lio/realm/RealmList;
    .locals 4

    .line 350
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 352
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->marrMoviesRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 355
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrMoviesColKey:J

    sget-object v3, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v0

    .line 356
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->marrMoviesRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$marrOther()Lio/realm/RealmList;
    .locals 4

    .line 311
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 313
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->marrOtherRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 316
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrOtherColKey:J

    sget-object v3, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v0

    .line 317
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->marrOtherRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$marrTracts()Lio/realm/RealmList;
    .locals 4

    .line 272
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 274
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->marrTractsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 277
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrTractsColKey:J

    sget-object v3, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v0

    .line 278
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->marrTractsRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$marrVideos()Lio/realm/RealmList;
    .locals 4

    .line 194
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 196
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->marrVideosRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrVideosColKey:J

    sget-object v3, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v0

    .line 200
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->marrVideosRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    .line 1849
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$watchtowerMap()Lio/realm/RealmList;
    .locals 4

    .line 450
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 452
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->watchtowerMapRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    return-object v0

    .line 455
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->watchtowerMapColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 456
    new-instance v1, Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-direct {v1, v3, v0, v2}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->watchtowerMapRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmSet$awakeMap(Lio/realm/RealmList;)V
    .locals 8

    .line 402
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 403
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 406
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v2, "awakeMap"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p1, :cond_5

    .line 410
    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 411
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 413
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 414
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    if-eqz v3, :cond_3

    .line 415
    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 418
    :cond_2
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v3, v4}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 424
    :cond_5
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 425
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->awakeMapColKey:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 427
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 428
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_8

    .line 430
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 431
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    int-to-long v4, v1

    .line 432
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

    .line 435
    :cond_6
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_7

    goto :goto_4

    .line 439
    :cond_7
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    .line 441
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 442
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 443
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

    .line 582
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 588
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v2, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->dateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 591
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v8, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->dateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    return-void

    :cond_2
    move-object v12, p1

    .line 595
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez v12, :cond_3

    .line 597
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->dateColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 600
    :cond_3
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v0, v0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->dateColKey:J

    invoke-interface {p1, v0, v1, v12}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    .line 144
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object p1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 150
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string p2, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {p1, p2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$magazineMap(Lio/realm/RealmList;)V
    .locals 8

    .line 524
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 525
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 528
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v2, "magazineMap"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p1, :cond_5

    .line 532
    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 533
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 535
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 536
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    if-eqz v3, :cond_3

    .line 537
    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 540
    :cond_2
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v3, v4}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 538
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 546
    :cond_5
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 547
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->magazineMapColKey:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 549
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 550
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_8

    .line 552
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 553
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    int-to-long v4, v1

    .line 554
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

    .line 557
    :cond_6
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_7

    goto :goto_4

    .line 561
    :cond_7
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    .line 563
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 564
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 565
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

.method public realmSet$marrBooks(Lio/realm/RealmList;)V
    .locals 4

    .line 168
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "marrBooks"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 178
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrBooksColKey:J

    sget-object v3, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_2

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    .line 185
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_0

    .line 187
    :cond_3
    invoke-virtual {v0, v1}, Lio/realm/internal/OsList;->addString(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public realmSet$marrBroschures(Lio/realm/RealmList;)V
    .locals 4

    .line 246
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "marrBroschures"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 255
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 256
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrBroschuresColKey:J

    sget-object v3, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_2

    goto :goto_1

    .line 261
    :cond_2
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    .line 263
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_0

    .line 265
    :cond_3
    invoke-virtual {v0, v1}, Lio/realm/internal/OsList;->addString(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public realmSet$marrMovies(Lio/realm/RealmList;)V
    .locals 4

    .line 363
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 367
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "marrMovies"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 372
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 373
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrMoviesColKey:J

    sget-object v3, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_2

    goto :goto_1

    .line 378
    :cond_2
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    .line 380
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_0

    .line 382
    :cond_3
    invoke-virtual {v0, v1}, Lio/realm/internal/OsList;->addString(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public realmSet$marrOther(Lio/realm/RealmList;)V
    .locals 4

    .line 324
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 328
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "marrOther"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 333
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 334
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrOtherColKey:J

    sget-object v3, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_2

    goto :goto_1

    .line 339
    :cond_2
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    .line 341
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_0

    .line 343
    :cond_3
    invoke-virtual {v0, v1}, Lio/realm/internal/OsList;->addString(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public realmSet$marrTracts(Lio/realm/RealmList;)V
    .locals 4

    .line 285
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "marrTracts"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 294
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 295
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrTractsColKey:J

    sget-object v3, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_2

    goto :goto_1

    .line 300
    :cond_2
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    .line 302
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_0

    .line 304
    :cond_3
    invoke-virtual {v0, v1}, Lio/realm/internal/OsList;->addString(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public realmSet$marrVideos(Lio/realm/RealmList;)V
    .locals 4

    .line 207
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "marrVideos"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 216
    :cond_1
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 217
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrVideosColKey:J

    sget-object v3, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_2

    goto :goto_1

    .line 222
    :cond_2
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    .line 224
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_0

    .line 226
    :cond_3
    invoke-virtual {v0, v1}, Lio/realm/internal/OsList;->addString(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public realmSet$watchtowerMap(Lio/realm/RealmList;)V
    .locals 8

    .line 463
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 464
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 467
    :cond_0
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v2, "watchtowerMap"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p1, :cond_5

    .line 471
    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 472
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 474
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 475
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    if-eqz v3, :cond_3

    .line 476
    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 479
    :cond_2
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v3, v4}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 485
    :cond_5
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 486
    iget-object v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->columnInfo:Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    iget-wide v2, v2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->watchtowerMapColKey:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 488
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 489
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_8

    .line 491
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 492
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    int-to-long v4, v1

    .line 493
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

    .line 496
    :cond_6
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    if-nez p1, :cond_7

    goto :goto_4

    .line 500
    :cond_7
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    .line 502
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 503
    iget-object v4, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 504
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

    .line 1796
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1797
    const-string v0, "Invalid object"

    return-object v0

    .line 1799
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PublicationManager = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1800
    const-string v1, "{id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1802
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    const-string v3, "{marrBooks:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    const-string v3, "RealmList<String>["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    const-string v5, "{marrVideos:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    const-string v5, "{marrBroschures:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    const-string v5, "{marrTracts:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    const-string v5, "{marrOther:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1822
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    const-string v5, "{marrMovies:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1827
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1828
    const-string v3, "{awakeMap:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    const-string v3, "RealmList<AliasesMap>["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    const-string v5, "{watchtowerMap:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    const-string v5, "{magazineMap:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    const-string v2, "{date:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->realmGet$date()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->realmGet$date()Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "null"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1842
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
