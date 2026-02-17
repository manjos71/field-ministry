.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->resetTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

.field final synthetic val$bChecked:[Z

.field final synthetic val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;[ZLcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;->val$bChecked:[Z

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 556
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;->val$bChecked:[Z

    const/16 v2, 0xe

    aget-boolean v3, v1, v2

    const/16 v4, 0xf

    .line 557
    aget-boolean v1, v1, v4

    .line 559
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 560
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 561
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 562
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v9

    .line 563
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;->val$bChecked:[Z

    const/4 v11, 0x0

    aget-boolean v11, v10, v11

    const/4 v12, 0x3

    if-eqz v11, :cond_3

    if-ne v9, v12, :cond_3

    .line 564
    invoke-virtual {v8, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset(ZZ)V

    goto :goto_0

    :cond_3
    const/4 v11, 0x1

    .line 565
    aget-boolean v13, v10, v11

    const/4 v14, 0x2

    if-eqz v13, :cond_4

    if-ne v9, v14, :cond_4

    .line 566
    invoke-virtual {v8, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset(ZZ)V

    goto :goto_0

    .line 567
    :cond_4
    aget-boolean v13, v10, v14

    const/16 v14, 0x9

    if-eqz v13, :cond_5

    if-ne v9, v14, :cond_5

    .line 570
    invoke-virtual {v8, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset(ZZ)V

    goto :goto_0

    .line 571
    :cond_5
    aget-boolean v12, v10, v12

    if-eqz v12, :cond_6

    if-ne v9, v11, :cond_6

    .line 572
    invoke-virtual {v8, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset(ZZ)V

    goto :goto_0

    :cond_6
    const/4 v11, 0x4

    .line 573
    aget-boolean v12, v10, v11

    if-eqz v12, :cond_7

    if-nez v9, :cond_7

    .line 574
    invoke-virtual {v8, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset(ZZ)V

    goto :goto_0

    :cond_7
    const/4 v12, 0x5

    .line 575
    aget-boolean v12, v10, v12

    const/16 v13, 0x8

    if-eqz v12, :cond_8

    if-ne v9, v13, :cond_8

    .line 577
    invoke-virtual {v8, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset(ZZ)V

    goto :goto_0

    :cond_8
    const/4 v12, 0x6

    .line 578
    aget-boolean v12, v10, v12

    const/4 v15, 0x7

    if-eqz v12, :cond_9

    if-ne v9, v15, :cond_9

    .line 580
    invoke-virtual {v8, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset(ZZ)V

    goto :goto_0

    .line 581
    :cond_9
    aget-boolean v12, v10, v15

    const/16 v15, 0xa

    if-eqz v12, :cond_a

    if-ne v9, v15, :cond_a

    .line 584
    invoke-virtual {v8, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset(ZZ)V

    goto :goto_0

    .line 585
    :cond_a
    aget-boolean v12, v10, v13

    const/16 v13, 0xb

    if-eqz v12, :cond_b

    if-ne v9, v13, :cond_b

    .line 587
    invoke-virtual {v8, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset(ZZ)V

    goto :goto_0

    .line 588
    :cond_b
    aget-boolean v12, v10, v14

    const/16 v14, 0xd

    if-eqz v12, :cond_c

    if-ne v9, v14, :cond_c

    .line 589
    invoke-virtual {v8, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset(ZZ)V

    goto/16 :goto_0

    .line 590
    :cond_c
    aget-boolean v10, v10, v15

    if-eqz v10, :cond_d

    if-ne v9, v11, :cond_d

    .line 591
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v10

    const-wide/16 v15, 0x0

    cmp-long v12, v10, v15

    if-eqz v12, :cond_d

    .line 592
    invoke-virtual {v8, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset(ZZ)V

    goto/16 :goto_0

    .line 593
    :cond_d
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;->val$bChecked:[Z

    aget-boolean v11, v10, v13

    if-eqz v11, :cond_e

    if-ne v9, v2, :cond_e

    .line 594
    invoke-virtual {v8, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset(ZZ)V

    goto/16 :goto_0

    :cond_e
    const/16 v11, 0xc

    .line 595
    aget-boolean v11, v10, v11

    if-eqz v11, :cond_f

    if-ne v9, v4, :cond_f

    .line 596
    invoke-virtual {v8, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset(ZZ)V

    goto/16 :goto_0

    .line 597
    :cond_f
    aget-boolean v11, v10, v14

    const/16 v12, 0x10

    if-eqz v11, :cond_10

    if-ne v9, v12, :cond_10

    .line 598
    invoke-virtual {v8, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset(ZZ)V

    goto/16 :goto_0

    .line 599
    :cond_10
    aget-boolean v10, v10, v12

    if-eqz v10, :cond_2

    const/16 v10, 0x11

    if-ne v9, v10, :cond_2

    .line 600
    invoke-virtual {v8, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset(ZZ)V

    goto/16 :goto_0

    .line 605
    :cond_11
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setDateCreated(Ljava/util/Date;)V

    .line 606
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setLastUpdated()V

    .line 608
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->-$$Nest$fgetmTerritoryInfoCache(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 609
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->-$$Nest$fgetmTerritoryInfoCache(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 610
    :cond_12
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->-$$Nest$fgetmTerritoriesList(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 611
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updateTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void
.end method
