.class public Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/stepstone/stepper/Step;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;,
        Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$CheckedVisitArrayAdapter;,
        Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$VisitViewHolder;
    }
.end annotation


# instance fields
.field allUpToDate:Z

.field private emptyView:Landroid/widget/TextView;

.field private isAddNew:Z

.field private mlstItems:Ljava/util/ArrayList;

.field private mlstLocations:Landroid/widget/ListView;

.field numLocationsAToUpdate:I

.field realm:Lio/realm/Realm;

.field private territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;


# direct methods
.method public static synthetic $r8$lambda$fOye08cKauPZP5AGeULWND63Ymw(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;Landroid/view/View;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->selectNoItems()V

    return-void
.end method

.method public static synthetic $r8$lambda$xjuJxlMyie7uHLD14zcSaG2UHZc(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;Landroid/view/View;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->selectAllItems()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmlstItems(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->mlstItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmlstLocations(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;)Landroid/widget/ListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->mlstLocations:Landroid/widget/ListView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->allUpToDate:Z

    .line 49
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->numLocationsAToUpdate:I

    .line 53
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->isAddNew:Z

    return-void
.end method

.method private createStreetList(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Z)V
    .locals 18

    move-object/from16 v1, p0

    .line 262
    new-instance v7, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0c0098

    invoke-direct {v7, v0, v2}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;I)V

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    .line 264
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->mlstItems:Ljava/util/ArrayList;

    const/4 v9, 0x0

    .line 268
    iput-boolean v9, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->allUpToDate:Z

    .line 269
    iput v9, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->numLocationsAToUpdate:I

    const/4 v5, 0x0

    .line 271
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 272
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 275
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    invoke-direct {v0, v5}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;-><init>(I)V

    .line 277
    new-instance v11, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;

    invoke-direct {v11}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;-><init>()V

    .line 279
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    move-object v14, v0

    move-object v4, v13

    .line 281
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 282
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 289
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v0

    .line 291
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    goto :goto_2

    .line 305
    :cond_0
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-nez v4, :cond_1

    .line 307
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 309
    :cond_1
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->hasLocationId()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->hasLocationHashChanged(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->hasLocationId()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p2, :cond_4

    .line 310
    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v6, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    invoke-direct {v6, v0, v9}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Z)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->numLocationsAToUpdate:I

    add-int/2addr v0, v3

    iput v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->numLocationsAToUpdate:I

    goto/16 :goto_4

    .line 313
    :cond_4
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->hasLocationId()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p2, :cond_7

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->hasLocationHashChanged(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 314
    iput-boolean v3, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->allUpToDate:Z

    goto :goto_4

    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    .line 294
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move-object v2, v0

    .line 295
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$CheckedVisitArrayAdapter;

    move-object v3, v2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object v6, v3

    const v3, 0x7f0c0126

    move-object/from16 v16, v6

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$CheckedVisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;Landroid/app/Activity;ILjava/util/ArrayList;IZ)V

    invoke-virtual {v11, v0}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    .line 297
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->mlstItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v14, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    invoke-direct {v14, v5}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;-><init>(I)V

    move-object/from16 v17, v14

    move-object v14, v13

    goto :goto_3

    :cond_6
    move-object/from16 v16, v0

    move-object/from16 v17, v14

    move-object v14, v4

    .line 301
    :goto_3
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v3

    move v4, v5

    const/4 v5, 0x1

    move/from16 v6, p2

    move-object v0, v1

    move-object/from16 v1, v16

    invoke-direct/range {v0 .. v6}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->getVisitAdapter(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/widget/BaseAdapter;

    move-result-object v1

    move v5, v4

    invoke-virtual {v11, v1}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    move-object v4, v14

    move-object/from16 v14, v17

    :cond_7
    :goto_4
    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_8
    if-eqz v4, :cond_9

    .line 321
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 322
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$CheckedVisitArrayAdapter;

    .line 323
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0126

    move-object/from16 v1, p0

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$CheckedVisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;Landroid/app/Activity;ILjava/util/ArrayList;IZ)V

    invoke-virtual {v11, v0}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_5

    :cond_9
    move-object/from16 v1, p0

    .line 327
    :goto_5
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 329
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v11}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 330
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->mlstItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 336
    :cond_b
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->mlstLocations:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 338
    iget-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->allUpToDate:Z

    if-eqz v0, :cond_c

    iget v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->numLocationsAToUpdate:I

    if-nez v0, :cond_c

    .line 339
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->emptyView:Landroid/widget/TextView;

    const v2, 0x7f080119

    invoke-virtual {v0, v9, v2, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 340
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->emptyView:Landroid/widget/TextView;

    const v2, 0x7f120023

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_c
    return-void
.end method

.method private getStreetName(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)Ljava/lang/String;
    .locals 8

    .line 172
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 173
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 174
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getId()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 175
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 179
    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method private getVisitAdapter(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/widget/BaseAdapter;
    .locals 16

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 219
    new-instance v9, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c003d

    invoke-direct {v9, v0, v1}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;I)V

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    new-instance v10, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    move/from16 v5, p4

    invoke-direct {v10, v5}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;-><init>(I)V

    if-eqz v7, :cond_1

    .line 224
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, " - "

    :goto_0
    move-object v11, v1

    goto :goto_2

    :cond_1
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 226
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    move-object v4, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 227
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 228
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v13}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$CheckedVisitArrayAdapter;

    .line 230
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0126

    const/16 p1, 0x1

    move/from16 v6, p6

    move-object v14, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$CheckedVisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;Landroid/app/Activity;ILjava/util/ArrayList;IZ)V

    move-object v2, v1

    .line 229
    invoke-virtual {v9, v14, v0}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    const/4 v1, 0x1

    goto :goto_4

    :cond_2
    const/16 p1, 0x1

    move-object/from16 v2, p0

    .line 234
    :goto_4
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v0

    .line 235
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v3

    goto :goto_5

    :cond_3
    const/16 p1, 0x1

    move-object/from16 v2, p0

    .line 238
    :goto_5
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->hasLocationId()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p6, :cond_4

    invoke-virtual {v15, v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->hasLocationHashChanged(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->hasLocationId()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p6, :cond_6

    .line 239
    :cond_5
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    invoke-direct {v5, v15, v13}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget v3, v2, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->numLocationsAToUpdate:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->numLocationsAToUpdate:I

    goto :goto_6

    .line 242
    :cond_6
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->hasLocationId()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez p6, :cond_7

    invoke-virtual {v15, v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->hasLocationHashChanged(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v14, 0x1

    .line 243
    iput-boolean v14, v2, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->allUpToDate:Z

    :cond_7
    :goto_6
    move/from16 v5, p4

    goto/16 :goto_3

    :cond_8
    const/4 v14, 0x1

    move-object/from16 v2, p0

    .line 248
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v13}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$CheckedVisitArrayAdapter;

    .line 250
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0126

    move-object/from16 v1, p0

    move/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$CheckedVisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;Landroid/app/Activity;ILjava/util/ArrayList;IZ)V

    move-object v2, v1

    .line 249
    invoke-virtual {v9, v7, v0}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    const/4 v1, 0x1

    :cond_9
    if-eqz v1, :cond_a

    .line 255
    iget-object v0, v2, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->mlstItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v9
.end method

.method private selectAllItems()V
    .locals 9

    .line 107
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->mlstItems:Ljava/util/ArrayList;

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

    .line 108
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

    .line 109
    invoke-virtual {v7, v8}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->setChecked(Z)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->mlstLocations:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private selectNoItems()V
    .locals 8

    .line 117
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->mlstItems:Ljava/util/ArrayList;

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

    .line 118
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

    .line 119
    invoke-virtual {v7, v2}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->setChecked(Z)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->mlstLocations:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getLocations()Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;
    .locals 12

    .line 157
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;)V

    .line 158
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->mlstItems:Ljava/util/ArrayList;

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

    .line 159
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :cond_1
    :goto_0
    if-ge v7, v6, :cond_0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    .line 160
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 161
    iget-object v9, v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;->visits:Ljava/util/List;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->getVisit()Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v9, v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;->streets:Ljava/util/List;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->getVisit()Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->getStreetName(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 129
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->realm:Lio/realm/Realm;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 67
    iget-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->isAddNew:Z

    if-eqz p3, :cond_0

    const p3, 0x7f0c010b

    goto :goto_0

    :cond_0
    const p3, 0x7f0c010a

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 68
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    const p2, 0x7f090397

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->mlstLocations:Landroid/widget/ListView;

    const p2, 0x7f0900fb

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$$ExternalSyntheticLambda0;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900fa

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$$ExternalSyntheticLambda1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0905fa

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->emptyView:Landroid/widget/TextView;

    .line 76
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->mlstLocations:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 77
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->mlstLocations:Landroid/widget/ListView;

    new-instance p3, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$1;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;)V

    invoke-virtual {p2, p3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->isAddNew:Z

    invoke-direct {p0, p2, p3}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->createStreetList(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Z)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 135
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public onSelected()V
    .locals 0

    return-void
.end method

.method public setAddNew()V
    .locals 1

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->isAddNew:Z

    return-void
.end method

.method public setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-void
.end method

.method public verifyStep()Lcom/stepstone/stepper/VerificationError;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
