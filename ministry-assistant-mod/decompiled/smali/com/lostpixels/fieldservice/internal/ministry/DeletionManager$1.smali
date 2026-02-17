.class Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->merge(Lio/realm/Realm;Ljava/util/ArrayList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

.field final synthetic val$lstDeletedItems:Ljava/util/ArrayList;

.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;Lio/realm/Realm;Ljava/util/ArrayList;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$lstDeletedItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 19

    move-object/from16 v1, p0

    .line 413
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v2

    .line 415
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 416
    iget-object v3, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$lstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_15

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    .line 418
    iget v0, v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    const/4 v8, 0x4

    const/4 v9, 0x1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v15, v3

    move/from16 v16, v4

    goto/16 :goto_f

    .line 534
    :pswitch_0
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v0

    const/4 v8, 0x6

    iget-object v6, v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->sString:Ljava/lang/String;

    invoke-virtual {v0, v8, v6}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->deletePublicationNoSync(ILjava/lang/String;)V

    goto :goto_1

    .line 540
    :pswitch_1
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v0

    iget-object v6, v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->sString:Ljava/lang/String;

    invoke-virtual {v0, v8, v6}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->deletePublicationNoSync(ILjava/lang/String;)V

    goto :goto_1

    .line 537
    :pswitch_2
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v0

    const/4 v8, 0x3

    iget-object v6, v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->sString:Ljava/lang/String;

    invoke-virtual {v0, v8, v6}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->deletePublicationNoSync(ILjava/lang/String;)V

    goto :goto_1

    .line 531
    :pswitch_3
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v0

    const/4 v8, 0x5

    iget-object v6, v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->sString:Ljava/lang/String;

    invoke-virtual {v0, v8, v6}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->deletePublicationNoSync(ILjava/lang/String;)V

    goto :goto_1

    .line 527
    :pswitch_4
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v0

    iget-object v6, v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->sString:Ljava/lang/String;

    .line 528
    invoke-virtual {v0, v9, v6}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->deletePublicationNoSync(ILjava/lang/String;)V

    goto :goto_1

    .line 524
    :pswitch_5
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v0

    iget-object v6, v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->sString:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->deletePublicationNoSync(ILjava/lang/String;)V

    goto :goto_1

    .line 518
    :pswitch_6
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v6, v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->sString:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removeSuburbNoSync(Ljava/lang/String;)V

    goto :goto_1

    .line 521
    :pswitch_7
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v6, v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->sString:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removeScripture(Ljava/lang/String;)V

    goto :goto_1

    .line 515
    :pswitch_8
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v6, v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->sString:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removeCitiesNoSync(Ljava/lang/String;)V

    goto :goto_1

    .line 493
    :pswitch_9
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 494
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v10

    iget-wide v12, v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_1

    .line 495
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    iget-object v6, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0, v6, v9}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->-$$Nest$mpersonExistInTerritory(Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 500
    invoke-virtual {v9, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 501
    invoke-virtual {v9, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setBibleStudy(Z)V

    .line 502
    invoke-virtual {v9, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setMagazineRoute(Z)V

    .line 503
    invoke-virtual {v9, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setFavorite(Z)V

    .line 504
    invoke-virtual {v9, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPriority(I)V

    .line 505
    invoke-virtual {v0, v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    goto/16 :goto_1

    .line 507
    :cond_2
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v6, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removePersonNoSync(Lio/realm/Realm;J)V

    goto/16 :goto_1

    .line 421
    :pswitch_a
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 422
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 423
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 424
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 425
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v15

    move-object/from16 v17, v10

    iget-wide v9, v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    cmp-long v18, v15, v9

    if-nez v18, :cond_3

    .line 426
    invoke-virtual {v12, v14}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->removeVisitNoSync(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    const/4 v8, 0x1

    goto :goto_6

    :cond_3
    move-object/from16 v10, v17

    const/4 v9, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v17, v10

    :goto_6
    if-eqz v8, :cond_5

    goto :goto_7

    :cond_5
    move-object/from16 v10, v17

    const/4 v9, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v17, v10

    :goto_7
    if-eqz v8, :cond_7

    goto :goto_8

    :cond_7
    move-object/from16 v10, v17

    const/4 v9, 0x1

    goto :goto_3

    :cond_8
    :goto_8
    if-eqz v8, :cond_9

    goto/16 :goto_1

    :cond_9
    const/4 v9, 0x1

    goto :goto_2

    .line 444
    :pswitch_b
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v8, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 445
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 446
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 447
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getId()J

    move-result-wide v13

    move-object v15, v3

    move/from16 v16, v4

    iget-wide v3, v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    cmp-long v17, v13, v3

    if-nez v17, :cond_a

    .line 448
    invoke-virtual {v10, v12}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->removeAddressNoDelete(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    const/4 v8, 0x1

    goto :goto_c

    :cond_a
    move-object v3, v15

    move/from16 v4, v16

    goto :goto_b

    :cond_b
    move-object v15, v3

    move/from16 v16, v4

    :goto_c
    if-eqz v8, :cond_c

    goto :goto_d

    :cond_c
    move-object v3, v15

    move/from16 v4, v16

    goto :goto_a

    :cond_d
    move-object v15, v3

    move/from16 v16, v4

    :goto_d
    if-eqz v8, :cond_e

    goto/16 :goto_f

    :cond_e
    move-object v3, v15

    move/from16 v4, v16

    goto :goto_9

    :pswitch_c
    move-object v15, v3

    move/from16 v16, v4

    .line 462
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 463
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 464
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getId()J

    move-result-wide v10

    iget-wide v12, v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_10

    .line 465
    invoke-virtual {v4, v9}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->removeStreetNoSync(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    const/4 v3, 0x1

    :cond_11
    if-eqz v3, :cond_f

    goto :goto_f

    :pswitch_d
    move-object v15, v3

    move/from16 v16, v4

    .line 475
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 476
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v8

    iget-wide v10, v6, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    cmp-long v4, v8, v10

    if-nez v4, :cond_12

    .line 477
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryCard()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 480
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->-$$Nest$fgetcontext(Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getMinistryAssistantDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 481
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 487
    :cond_13
    :goto_e
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2, v0, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removeTerritoryNoSync(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    :cond_14
    :goto_f
    move v0, v7

    move-object v3, v15

    move/from16 v4, v16

    goto/16 :goto_0

    .line 545
    :cond_15
    iget-object v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->val$realm:Lio/realm/Realm;

    iget-object v2, v1, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->-$$Nest$fgetcontext(Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateNumberOfStudies(Lio/realm/Realm;Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
