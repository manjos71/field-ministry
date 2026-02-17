.class public Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/stepstone/stepper/Step;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$CheckedVisitArrayAdapter;,
        Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$VisitViewHolder;
    }
.end annotation


# instance fields
.field private mlstItems:Ljava/util/ArrayList;

.field private mlstStreets:Landroid/widget/ListView;

.field realm:Lio/realm/Realm;

.field private territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;


# direct methods
.method public static synthetic $r8$lambda$Ya64aLYoM6aMR-TF-MEUNGS81SM(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->selectNoItems()V

    return-void
.end method

.method public static synthetic $r8$lambda$sNBaVhSYNUlc-IjymxL_ibJ8w4s(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->selectAllItems()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmlstItems(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->mlstItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmlstStreets(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;)Landroid/widget/ListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->mlstStreets:Landroid/widget/ListView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private createStreetList(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 18

    move-object/from16 v1, p0

    .line 216
    new-instance v6, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0c0098

    invoke-direct {v6, v0, v2}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;I)V

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->mlstItems:Ljava/util/ArrayList;

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 223
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 224
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 227
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    invoke-direct {v0, v5}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;-><init>(I)V

    .line 229
    new-instance v10, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;

    invoke-direct {v10}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;-><init>()V

    .line 231
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    move-object v13, v0

    move-object v4, v12

    .line 233
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 234
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 241
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v15

    .line 243
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    :cond_0
    move-object/from16 v16, v9

    goto :goto_3

    .line 258
    :cond_1
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-nez v4, :cond_2

    .line 260
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 262
    :cond_2
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-eqz v3, :cond_5

    .line 264
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    iget-object v14, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->realm:Lio/realm/Realm;

    move-object/from16 v16, v9

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v8

    invoke-virtual {v3, v14, v8, v9}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 265
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isInterested()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 266
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 269
    :cond_4
    :goto_2
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v8, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    invoke-direct {v8, v0, v2}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Z)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    move-object/from16 v16, v9

    goto :goto_5

    :goto_3
    if-eqz v4, :cond_6

    .line 246
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 247
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$CheckedVisitArrayAdapter;

    const/4 v3, 0x1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v8, 0x1

    const v3, 0x7f0c0126

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$CheckedVisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;Landroid/app/Activity;ILjava/util/ArrayList;I)V

    invoke-virtual {v10, v0}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    .line 249
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->mlstItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v13, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    invoke-direct {v13, v5}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;-><init>(I)V

    move-object v4, v12

    goto :goto_4

    :cond_6
    const/4 v8, 0x1

    .line 254
    :goto_4
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v15, v0, v5, v8}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->getVisitAdapter(Ljava/util/List;Ljava/lang/String;IZ)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    :cond_7
    :goto_5
    move-object/from16 v9, v16

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v16, v9

    if-eqz v4, :cond_9

    .line 278
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 279
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$CheckedVisitArrayAdapter;

    .line 280
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0126

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$CheckedVisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;Landroid/app/Activity;ILjava/util/ArrayList;I)V

    invoke-virtual {v10, v0}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    .line 284
    :cond_9
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 286
    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v10}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 287
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->mlstItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 293
    :cond_b
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->mlstStreets:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private getVisitAdapter(Ljava/util/List;Ljava/lang/String;IZ)Landroid/widget/BaseAdapter;
    .locals 18

    move-object/from16 v6, p2

    .line 172
    new-instance v7, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c003d

    invoke-direct {v7, v0, v1}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;I)V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v8, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    move/from16 v5, p3

    invoke-direct {v8, v5}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;-><init>(I)V

    if-eqz v6, :cond_1

    .line 177
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, " - "

    :goto_0
    move-object v9, v1

    goto :goto_2

    :cond_1
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 179
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    move-object v4, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v12, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 180
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 181
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v11}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$CheckedVisitArrayAdapter;

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0126

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$CheckedVisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;Landroid/app/Activity;ILjava/util/ArrayList;I)V

    move-object v2, v1

    .line 182
    invoke-virtual {v7, v14, v0}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    const/4 v1, 0x1

    goto :goto_4

    :cond_2
    move-object/from16 v2, p0

    .line 187
    :goto_4
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v0

    .line 188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v3

    goto :goto_5

    :cond_3
    move-object/from16 v2, p0

    .line 191
    :goto_5
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-eqz v3, :cond_6

    .line 192
    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    iget-object v5, v2, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->realm:Lio/realm/Realm;

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v14

    invoke-virtual {v3, v5, v14, v15}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 193
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isInterested()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 194
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_6

    :cond_4
    const/4 v12, 0x0

    .line 196
    :cond_5
    :goto_6
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    invoke-direct {v5, v13, v12}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move/from16 v5, p3

    goto/16 :goto_3

    :cond_7
    move-object/from16 v2, p0

    .line 203
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v11}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$CheckedVisitArrayAdapter;

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0126

    move-object/from16 v1, p0

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$CheckedVisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;Landroid/app/Activity;ILjava/util/ArrayList;I)V

    move-object v2, v1

    .line 204
    invoke-virtual {v7, v6, v0}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    const/4 v1, 0x1

    :cond_8
    if-eqz v1, :cond_9

    .line 210
    iget-object v0, v2, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->mlstItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v7
.end method

.method private selectAllItems()V
    .locals 9

    .line 103
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->mlstItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    .line 104
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    const/4 v8, 0x1

    .line 105
    invoke-virtual {v7, v8}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->setChecked(Z)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->mlstStreets:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private selectNoItems()V
    .locals 8

    .line 113
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->mlstItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    .line 114
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    .line 115
    invoke-virtual {v7, v2}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->setChecked(Z)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->mlstStreets:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getPersonsToKeep()Ljava/util/List;
    .locals 13

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->mlstItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    .line 155
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    .line 156
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->realm:Lio/realm/Realm;

    invoke-static {v9}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v9

    iget-object v10, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->realm:Lio/realm/Realm;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->getVisit()Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v9

    .line 157
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 158
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v9, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 161
    invoke-virtual {v9, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setBibleStudy(Z)V

    .line 162
    invoke-virtual {v9, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setMagazineRoute(Z)V

    .line 163
    invoke-virtual {v9, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setFavorite(Z)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->realm:Lio/realm/Realm;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0109

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 65
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    const p2, 0x7f0900fb

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$$ExternalSyntheticLambda0;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900fa

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$$ExternalSyntheticLambda1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09066d

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->mlstStreets:Landroid/widget/ListView;

    .line 72
    new-instance p3, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$1;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;)V

    invoke-virtual {p2, p3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-direct {p0, p2}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->createStreetList(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 131
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 132
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public onSelected()V
    .locals 0

    return-void
.end method

.method public setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-void
.end method

.method public verifyStep()Lcom/stepstone/stepper/VerificationError;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
