.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;)V
    .locals 0

    .line 2430
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddPublication(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ILjava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    .line 2433
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;-><init>()V

    move-object/from16 v2, p4

    .line 2434
    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setInfo(Ljava/lang/String;)V

    .line 2435
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setVisitDate(Ljava/util/Date;)V

    move-object/from16 v2, p1

    .line 2436
    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setPublications(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2437
    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setVisitType(I)V

    .line 2438
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$2500(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object v3

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v4, v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$2400(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object v4

    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v5, v5, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v3

    .line 2439
    new-instance v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1$1;

    invoke-direct {v4, v0, v3, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;)V

    invoke-static {v4}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    .line 2445
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setUpdated()V

    .line 2447
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 2449
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2450
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$2700(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$2600(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    move-object/from16 v5, p2

    invoke-virtual {v1, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 2451
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2452
    const-string v3, "ReportDensity"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/16 v19, 0x1

    goto :goto_0

    :cond_0
    const/16 v19, 0x0

    .line 2455
    :goto_0
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v4, v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v6, 0x7f12035a

    .line 2457
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v4, v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    .line 2459
    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$2800(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object v4

    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v6, v6, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v7, v3

    move-object v3, v4

    move-object v4, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x1

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v13, v12

    const/4 v12, 0x0

    move-object v14, v13

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v20, v16

    const/16 v16, 0x0

    move-object/from16 v2, v20

    invoke-static/range {v3 .. v19}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getReport(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZZZZZZZZZZZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 2455
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2460
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2463
    :cond_1
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setLastUpdated()V

    .line 2464
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mupdateStatistics(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    .line 2465
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    .line 2466
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 2467
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2468
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->updateInfoWindow()V

    .line 2470
    :cond_2
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    return-void
.end method
