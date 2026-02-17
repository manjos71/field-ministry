.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->merge(Landroid/content/Context;Ljava/util/List;Ljava/util/List;JZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$bFixHouseholder:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$iTerritoryMergeId:J

.field final synthetic val$realm:Lio/realm/Realm;

.field final synthetic val$rhsPersons:Ljava/util/List;

.field final synthetic val$rhsTerritories:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;Ljava/util/List;Landroid/content/Context;Ljava/util/List;JZ)V
    .locals 0

    .line 1489
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$realm:Lio/realm/Realm;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$rhsPersons:Ljava/util/List;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$rhsTerritories:Ljava/util/List;

    iput-wide p6, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$iTerritoryMergeId:J

    iput-boolean p8, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$bFixHouseholder:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 15

    .line 1495
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$realm:Lio/realm/Realm;

    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    .line 1496
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$rhsPersons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1498
    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1499
    invoke-virtual {v6, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->merge(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1512
    :cond_1
    invoke-virtual {v2, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 1513
    invoke-virtual {v2, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setBibleStudy(Z)V

    .line 1514
    invoke-virtual {v2, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setMagazineRoute(Z)V

    .line 1516
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3, v4, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addPerson(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)J

    .line 1517
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Lcom/lostpixels/fieldservice/internal/ministry/Person;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    .line 1520
    :goto_1
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addSuburbIfNew(Landroid/content/Context;Ljava/lang/String;)V

    .line 1521
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addCityIfNew(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1524
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    .line 1525
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$rhsTerritories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 1526
    iget-object v6, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v7, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getRegion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addSuburbIfNew(Landroid/content/Context;Ljava/lang/String;)V

    .line 1529
    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 1530
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$iTerritoryMergeId:J

    const-wide/16 v12, -0x1

    cmp-long v14, v8, v10

    if-nez v14, :cond_5

    cmp-long v8, v10, v12

    if-eqz v8, :cond_5

    move-object v2, v7

    :cond_5
    cmp-long v8, v10, v12

    if-eqz v8, :cond_6

    .line 1533
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$iTerritoryMergeId:J

    cmp-long v12, v8, v10

    if-nez v12, :cond_4

    :cond_6
    iget-object v8, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v8, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->merge(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_3

    .line 1540
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 1541
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 1542
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 1543
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-eqz v14, :cond_a

    iget-boolean v10, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$bFixHouseholder:Z

    if-eqz v10, :cond_a

    const/4 v7, 0x1

    goto :goto_4

    :cond_b
    if-nez v2, :cond_c

    .line 1551
    iget-object v6, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v7, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$realm:Lio/realm/Realm;

    invoke-virtual {v6, v7, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    goto :goto_5

    .line 1553
    :cond_c
    iget-object v6, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$context:Landroid/content/Context;

    iget-object v8, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2, v6, v8, v5, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->importMerge(Landroid/content/Context;Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Z)Z

    .line 1554
    :goto_5
    iget-object v6, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    goto/16 :goto_2

    :cond_d
    return-void
.end method
