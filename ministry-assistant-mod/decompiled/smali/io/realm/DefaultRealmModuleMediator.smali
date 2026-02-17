.class Lio/realm/DefaultRealmModuleMediator;
.super Lio/realm/internal/RealmProxyMediator;
.source "SourceFile"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field private static final MODEL_CLASSES:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 30
    const-class v1, Lcom/lostpixels/fieldservice/realm/RealmString;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v1, Lcom/lostpixels/fieldservice/realm/RealmInteger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DefaultRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/realm/internal/RealmProxyMediator;-><init>()V

    return-void
.end method


# virtual methods
.method public copyOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/RealmModel;
    .locals 8

    .line 408
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 410
    :goto_0
    const-class v1, Lcom/lostpixels/fieldservice/realm/RealmString;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy$RealmStringColumnInfo;

    .line 412
    move-object v4, p2

    check-cast v4, Lcom/lostpixels/fieldservice/realm/RealmString;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy$RealmStringColumnInfo;Lcom/lostpixels/fieldservice/realm/RealmString;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/realm/RealmString;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    :cond_1
    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 414
    const-class p1, Lcom/lostpixels/fieldservice/realm/RealmInteger;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 415
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy$RealmIntegerColumnInfo;

    .line 416
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/realm/RealmInteger;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy$RealmIntegerColumnInfo;Lcom/lostpixels/fieldservice/realm/RealmInteger;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/realm/RealmInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 418
    :cond_2
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 419
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    .line 420
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/YearReport;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 422
    :cond_3
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 423
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    .line 424
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 426
    :cond_4
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 427
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    .line 428
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 430
    :cond_5
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 431
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy$ScriptureColumnInfo;

    .line 432
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy$ScriptureColumnInfo;Lcom/lostpixels/fieldservice/internal/report/Scripture;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/Scripture;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 434
    :cond_6
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 435
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;

    .line 436
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 438
    :cond_7
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 439
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    .line 440
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;Lcom/lostpixels/fieldservice/internal/report/PublicationManager;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 442
    :cond_8
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 443
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    .line 444
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MonthReport;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 446
    :cond_9
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 447
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;

    .line 448
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 450
    :cond_a
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 451
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerManagerRealmProxy$MinistryPlannerManagerColumnInfo;

    .line 452
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerManagerRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerManagerRealmProxy$MinistryPlannerManagerColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 454
    :cond_b
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 455
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    .line 456
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 458
    :cond_c
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 459
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy$VisitTypeItemColumnInfo;

    .line 460
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy$VisitTypeItemColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 462
    :cond_d
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 463
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    .line 464
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 466
    :cond_e
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 467
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    .line 468
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Visit;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 470
    :cond_f
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 471
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;

    .line 472
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Territory;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 474
    :cond_10
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 475
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    .line 476
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Street;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 478
    :cond_11
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 479
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;

    .line 480
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Person;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 482
    :cond_12
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 483
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;

    .line 484
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 486
    :cond_13
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 487
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_LatLngExRealmProxy$LatLngExColumnInfo;

    .line 488
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_LatLngExRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_LatLngExRealmProxy$LatLngExColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 490
    :cond_14
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 491
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    .line 492
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 494
    :cond_15
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 495
    invoke-virtual {v1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    .line 496
    move-object v3, p2

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static/range {v1 .. v6}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;Lcom/lostpixels/fieldservice/internal/ministry/Address;ZLjava/util/Map;Ljava/util/Set;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 498
    :cond_16
    invoke-static {v0}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public createColumnInfo(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 85
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->checkClass(Ljava/lang/Class;)V

    .line 87
    const-class v0, Lcom/lostpixels/fieldservice/realm/RealmString;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy$RealmStringColumnInfo;

    move-result-object p1

    return-object p1

    .line 90
    :cond_0
    const-class v0, Lcom/lostpixels/fieldservice/realm/RealmInteger;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy$RealmIntegerColumnInfo;

    move-result-object p1

    return-object p1

    .line 93
    :cond_1
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    move-result-object p1

    return-object p1

    .line 96
    :cond_2
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    move-result-object p1

    return-object p1

    .line 99
    :cond_3
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    move-result-object p1

    return-object p1

    .line 102
    :cond_4
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy$ScriptureColumnInfo;

    move-result-object p1

    return-object p1

    .line 105
    :cond_5
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;

    move-result-object p1

    return-object p1

    .line 108
    :cond_6
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 109
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    move-result-object p1

    return-object p1

    .line 111
    :cond_7
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 112
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    move-result-object p1

    return-object p1

    .line 114
    :cond_8
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 115
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy$MinistryPlannerYearColumnInfo;

    move-result-object p1

    return-object p1

    .line 117
    :cond_9
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 118
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerManagerRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerManagerRealmProxy$MinistryPlannerManagerColumnInfo;

    move-result-object p1

    return-object p1

    .line 120
    :cond_a
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 121
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    move-result-object p1

    return-object p1

    .line 123
    :cond_b
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 124
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy$VisitTypeItemColumnInfo;

    move-result-object p1

    return-object p1

    .line 126
    :cond_c
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 127
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    move-result-object p1

    return-object p1

    .line 129
    :cond_d
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 130
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    move-result-object p1

    return-object p1

    .line 132
    :cond_e
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 133
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;

    move-result-object p1

    return-object p1

    .line 135
    :cond_f
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 136
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    move-result-object p1

    return-object p1

    .line 138
    :cond_10
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 139
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;

    move-result-object p1

    return-object p1

    .line 141
    :cond_11
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 142
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;

    move-result-object p1

    return-object p1

    .line 144
    :cond_12
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 145
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_LatLngExRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_LatLngExRealmProxy$LatLngExColumnInfo;

    move-result-object p1

    return-object p1

    .line 147
    :cond_13
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 148
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy$AliasesMapColumnInfo;

    move-result-object p1

    return-object p1

    .line 150
    :cond_14
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 151
    invoke-static {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    move-result-object p1

    return-object p1

    .line 153
    :cond_15
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;
    .locals 3

    .line 985
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 987
    const-class v1, Lcom/lostpixels/fieldservice/realm/RealmString;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 988
    check-cast p1, Lcom/lostpixels/fieldservice/realm/RealmString;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/realm/RealmString;IILjava/util/Map;)Lcom/lostpixels/fieldservice/realm/RealmString;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 990
    :cond_0
    const-class v1, Lcom/lostpixels/fieldservice/realm/RealmInteger;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 991
    check-cast p1, Lcom/lostpixels/fieldservice/realm/RealmInteger;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/realm/RealmInteger;IILjava/util/Map;)Lcom/lostpixels/fieldservice/realm/RealmInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 993
    :cond_1
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 994
    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/YearReport;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 996
    :cond_2
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 997
    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 999
    :cond_3
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1000
    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1002
    :cond_4
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1003
    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/Scripture;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/Scripture;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1005
    :cond_5
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1006
    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1008
    :cond_6
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1009
    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1011
    :cond_7
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1012
    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/MonthReport;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1014
    :cond_8
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1015
    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1017
    :cond_9
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1018
    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerManagerRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1020
    :cond_a
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1021
    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1023
    :cond_b
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1024
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1026
    :cond_c
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1027
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1029
    :cond_d
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1030
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/Visit;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1032
    :cond_e
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1033
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/Territory;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1035
    :cond_f
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1036
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/Street;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1038
    :cond_10
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1039
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/Person;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1041
    :cond_11
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1042
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1044
    :cond_12
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1045
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_LatLngExRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1047
    :cond_13
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1048
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1050
    :cond_14
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1051
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {p1, v2, p2, p3}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->createDetachedCopy(Lcom/lostpixels/fieldservice/internal/ministry/Address;IILjava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    .line 1053
    :cond_15
    invoke-static {v0}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public getClazzImpl(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 231
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->checkClassName(Ljava/lang/String;)V

    .line 233
    const-string v0, "RealmString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-class p1, Lcom/lostpixels/fieldservice/realm/RealmString;

    return-object p1

    .line 236
    :cond_0
    const-string v0, "RealmInteger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const-class p1, Lcom/lostpixels/fieldservice/realm/RealmInteger;

    return-object p1

    .line 239
    :cond_1
    const-string v0, "YearReport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    return-object p1

    .line 242
    :cond_2
    const-string v0, "ServiceSession"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    return-object p1

    .line 245
    :cond_3
    const-string v0, "ServiceReportManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 246
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    return-object p1

    .line 248
    :cond_4
    const-string v0, "Scripture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 249
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    return-object p1

    .line 251
    :cond_5
    const-string v0, "SchoolInfoItem"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 252
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    return-object p1

    .line 254
    :cond_6
    const-string v0, "PublicationManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    return-object p1

    .line 257
    :cond_7
    const-string v0, "MonthReport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 258
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    return-object p1

    .line 260
    :cond_8
    const-string v0, "MinistryPlannerYear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 261
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    return-object p1

    .line 263
    :cond_9
    const-string v0, "MinistryPlannerManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 264
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    return-object p1

    .line 266
    :cond_a
    const-string v0, "MinistryPlannerItem"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 267
    const-class p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    return-object p1

    .line 269
    :cond_b
    const-string v0, "VisitTypeItem"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 270
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    return-object p1

    .line 272
    :cond_c
    const-string v0, "VisitInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 273
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    return-object p1

    .line 275
    :cond_d
    const-string v0, "Visit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 276
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    return-object p1

    .line 278
    :cond_e
    const-string v0, "Territory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 279
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-object p1

    .line 281
    :cond_f
    const-string v0, "Street"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 282
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    return-object p1

    .line 284
    :cond_10
    const-string v0, "Person"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 285
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    return-object p1

    .line 287
    :cond_11
    const-string v0, "MinistryManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 288
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    return-object p1

    .line 290
    :cond_12
    const-string v0, "LatLngEx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 291
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    return-object p1

    .line 293
    :cond_13
    const-string v0, "AliasesMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 294
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    return-object p1

    .line 296
    :cond_14
    const-string v0, "Address"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 297
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    return-object p1

    .line 299
    :cond_15
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/String;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public getExpectedObjectSchemaInfoMap()Ljava/util/Map;
    .locals 3

    .line 57
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 58
    const-class v1, Lcom/lostpixels/fieldservice/realm/RealmString;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-class v1, Lcom/lostpixels/fieldservice/realm/RealmInteger;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerManagerRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_LatLngExRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getModelClasses()Ljava/util/Set;
    .locals 1

    .line 401
    sget-object v0, Lio/realm/DefaultRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    return-object v0
.end method

.method public getSimpleClassNameImpl(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .line 158
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->checkClass(Ljava/lang/Class;)V

    .line 160
    const-class v0, Lcom/lostpixels/fieldservice/realm/RealmString;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string p1, "RealmString"

    return-object p1

    .line 163
    :cond_0
    const-class v0, Lcom/lostpixels/fieldservice/realm/RealmInteger;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const-string p1, "RealmInteger"

    return-object p1

    .line 166
    :cond_1
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    const-string p1, "YearReport"

    return-object p1

    .line 169
    :cond_2
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    const-string p1, "ServiceSession"

    return-object p1

    .line 172
    :cond_3
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    const-string p1, "ServiceReportManager"

    return-object p1

    .line 175
    :cond_4
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    const-string p1, "Scripture"

    return-object p1

    .line 178
    :cond_5
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    const-string p1, "SchoolInfoItem"

    return-object p1

    .line 181
    :cond_6
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 182
    const-string p1, "PublicationManager"

    return-object p1

    .line 184
    :cond_7
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 185
    const-string p1, "MonthReport"

    return-object p1

    .line 187
    :cond_8
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 188
    const-string p1, "MinistryPlannerYear"

    return-object p1

    .line 190
    :cond_9
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 191
    const-string p1, "MinistryPlannerManager"

    return-object p1

    .line 193
    :cond_a
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 194
    const-string p1, "MinistryPlannerItem"

    return-object p1

    .line 196
    :cond_b
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 197
    const-string p1, "VisitTypeItem"

    return-object p1

    .line 199
    :cond_c
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 200
    const-string p1, "VisitInfo"

    return-object p1

    .line 202
    :cond_d
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 203
    const-string p1, "Visit"

    return-object p1

    .line 205
    :cond_e
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 206
    const-string p1, "Territory"

    return-object p1

    .line 208
    :cond_f
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 209
    const-string p1, "Street"

    return-object p1

    .line 211
    :cond_10
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 212
    const-string p1, "Person"

    return-object p1

    .line 214
    :cond_11
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 215
    const-string p1, "MinistryManager"

    return-object p1

    .line 217
    :cond_12
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 218
    const-string p1, "LatLngEx"

    return-object p1

    .line 220
    :cond_13
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 221
    const-string p1, "AliasesMap"

    return-object p1

    .line 223
    :cond_14
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 224
    const-string p1, "Address"

    return-object p1

    .line 226
    :cond_15
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public hasPrimaryKeyImpl(Ljava/lang/Class;)Z
    .locals 1

    .line 304
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    .line 305
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    .line 306
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    .line 307
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    .line 309
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    .line 310
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 311
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 312
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 313
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 316
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isEmbedded(Ljava/lang/Class;)Z
    .locals 2

    .line 1058
    const-class v0, Lcom/lostpixels/fieldservice/realm/RealmString;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1061
    :cond_0
    const-class v0, Lcom/lostpixels/fieldservice/realm/RealmInteger;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1064
    :cond_1
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1067
    :cond_2
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 1070
    :cond_3
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 1073
    :cond_4
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 1076
    :cond_5
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 1079
    :cond_6
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 1082
    :cond_7
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    .line 1085
    :cond_8
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    .line 1088
    :cond_9
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 1091
    :cond_a
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    .line 1094
    :cond_b
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 1097
    :cond_c
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 1100
    :cond_d
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 1103
    :cond_e
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 1106
    :cond_f
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    .line 1109
    :cond_10
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 1112
    :cond_11
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 1115
    :cond_12
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 1118
    :cond_13
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 1121
    :cond_14
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    .line 1124
    :cond_15
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;
    .locals 7

    .line 322
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 324
    :try_start_0
    move-object v2, p2

    check-cast v2, Lio/realm/BaseRealm;

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 325
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->checkClass(Ljava/lang/Class;)V

    .line 327
    const-class p2, Lcom/lostpixels/fieldservice/realm/RealmString;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 328
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_0

    .line 330
    :cond_0
    :try_start_1
    const-class p2, Lcom/lostpixels/fieldservice/realm/RealmInteger;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 331
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 333
    :cond_1
    :try_start_2
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 334
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 336
    :cond_2
    :try_start_3
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 337
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 339
    :cond_3
    :try_start_4
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 340
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 342
    :cond_4
    :try_start_5
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 343
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 345
    :cond_5
    :try_start_6
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 346
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 348
    :cond_6
    :try_start_7
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 349
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 351
    :cond_7
    :try_start_8
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 352
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 354
    :cond_8
    :try_start_9
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 355
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 357
    :cond_9
    :try_start_a
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 358
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerManagerRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerManagerRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 360
    :cond_a
    :try_start_b
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 361
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 363
    :cond_b
    :try_start_c
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 364
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 366
    :cond_c
    :try_start_d
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 367
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 369
    :cond_d
    :try_start_e
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 370
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 372
    :cond_e
    :try_start_f
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 373
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 375
    :cond_f
    :try_start_10
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 376
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 378
    :cond_10
    :try_start_11
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 379
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 381
    :cond_11
    :try_start_12
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 382
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 384
    :cond_12
    :try_start_13
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 385
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_LatLngExRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_LatLngExRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 387
    :cond_13
    :try_start_14
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 388
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 390
    :cond_14
    :try_start_15
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 391
    new-instance p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;

    invoke-direct {p2}, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 395
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p1

    .line 393
    :cond_15
    :try_start_16
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 395
    :goto_0
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 396
    throw p1
.end method

.method public transformerApplied()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateEmbeddedObject(Lio/realm/Realm;Lio/realm/RealmModel;Lio/realm/RealmModel;Ljava/util/Map;Ljava/util/Set;)V
    .locals 0

    .line 1131
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 1133
    const-class p2, Lcom/lostpixels/fieldservice/realm/RealmString;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    .line 1135
    const-class p2, Lcom/lostpixels/fieldservice/realm/RealmInteger;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    .line 1137
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    .line 1139
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    .line 1141
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    .line 1143
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 1145
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 1147
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 1149
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    .line 1151
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 1153
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 1155
    const-class p2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 1157
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 1159
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 1161
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 1163
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1165
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1167
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 1169
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1171
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1173
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1175
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1176
    const-string p1, "com.lostpixels.fieldservice.internal.ministry.Address"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1178
    :cond_0
    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    .line 1174
    :cond_1
    const-string p1, "com.lostpixels.fieldservice.internal.ministry.AliasesMap"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1172
    :cond_2
    const-string p1, "com.lostpixels.fieldservice.internal.ministry.LatLngEx"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1170
    :cond_3
    const-string p1, "com.lostpixels.fieldservice.internal.ministry.MinistryManager"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1168
    :cond_4
    const-string p1, "com.lostpixels.fieldservice.internal.ministry.Person"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1166
    :cond_5
    const-string p1, "com.lostpixels.fieldservice.internal.ministry.Street"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1164
    :cond_6
    const-string p1, "com.lostpixels.fieldservice.internal.ministry.Territory"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1162
    :cond_7
    const-string p1, "com.lostpixels.fieldservice.internal.ministry.Visit"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1160
    :cond_8
    const-string p1, "com.lostpixels.fieldservice.internal.ministry.VisitInfo"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1158
    :cond_9
    const-string p1, "com.lostpixels.fieldservice.internal.ministry.VisitTypeItem"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1156
    :cond_a
    const-string p1, "com.lostpixels.fieldservice.internal.report.MinistryPlannerItem"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1154
    :cond_b
    const-string p1, "com.lostpixels.fieldservice.internal.report.MinistryPlannerManager"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1152
    :cond_c
    const-string p1, "com.lostpixels.fieldservice.internal.report.MinistryPlannerYear"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1150
    :cond_d
    const-string p1, "com.lostpixels.fieldservice.internal.report.MonthReport"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1148
    :cond_e
    const-string p1, "com.lostpixels.fieldservice.internal.report.PublicationManager"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1146
    :cond_f
    const-string p1, "com.lostpixels.fieldservice.internal.report.SchoolInfoItem"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1144
    :cond_10
    const-string p1, "com.lostpixels.fieldservice.internal.report.Scripture"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1142
    :cond_11
    const-string p1, "com.lostpixels.fieldservice.internal.report.ServiceReportManager"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1140
    :cond_12
    const-string p1, "com.lostpixels.fieldservice.internal.report.ServiceSession"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1138
    :cond_13
    const-string p1, "com.lostpixels.fieldservice.internal.report.YearReport"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1136
    :cond_14
    const-string p1, "com.lostpixels.fieldservice.realm.RealmInteger"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1134
    :cond_15
    const-string p1, "com.lostpixels.fieldservice.realm.RealmString"

    invoke-static {p1}, Lio/realm/internal/RealmProxyMediator;->getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method
