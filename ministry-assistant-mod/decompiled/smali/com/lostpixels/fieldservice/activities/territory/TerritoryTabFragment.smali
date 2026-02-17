.class public Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$AddNewTerritoryListner;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryDateComparator;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;
    }
.end annotation


# instance fields
.field private listener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$AddNewTerritoryListner;

.field private mEmptyText:Landroid/widget/TextView;

.field private mTerritoriesList:Landroid/widget/ListView;

.field private mTerritoryInfoCache:Ljava/util/HashMap;

.field private mbIsDirty:Z

.field private mbIsLightTheme:Z

.field private meTerritoryDisplayType:I

.field private miSavedIndex:I

.field private miSavedTop:I

.field realm:Lio/realm/Realm;

.field private time:J


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$AddNewTerritoryListner;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->listener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$AddNewTerritoryListner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTerritoriesList(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)Landroid/widget/ListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTerritoryInfoCache(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoryInfoCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmbIsLightTheme(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsLightTheme:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettime(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->time:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mresetTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->resetTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 86
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsDirty:Z

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->miSavedTop:I

    const/4 v1, -0x1

    .line 107
    iput v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->miSavedIndex:I

    const-wide/16 v1, 0x0

    .line 108
    iput-wide v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->time:J

    .line 110
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoryInfoCache:Ljava/util/HashMap;

    .line 112
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->meTerritoryDisplayType:I

    return-void
.end method

.method private populateTerritoryListCity()V
    .locals 11

    .line 295
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 296
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mEmptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f120255

    .line 297
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    .line 299
    new-instance v1, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumTerritoryComparator;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumTerritoryComparator;-><init>()V

    .line 301
    new-instance v2, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0c0098

    invoke-direct {v2, v3, v4}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;I)V

    .line 304
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 306
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Lcom/lostpixels/fieldservice/utils/comparators/CaseInsensitiveComparator;

    invoke-direct {v5}, Lcom/lostpixels/fieldservice/utils/comparators/CaseInsensitiveComparator;-><init>()V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 307
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 308
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 309
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 315
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const v6, 0x7f0c014d

    if-eqz v5, :cond_6

    .line 316
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 317
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 318
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 319
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 320
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 321
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isHidden()Z

    move-result v10

    if-nez v10, :cond_3

    .line 322
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 323
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 325
    :cond_4
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 328
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 329
    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 330
    new-instance v7, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v7, p0, v9, v6, v8}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;Landroid/app/Activity;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v5, v7}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_1

    .line 334
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 335
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v0, 0x7f120480

    .line 336
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, p0, v4, v6, v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;Landroid/app/Activity;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 341
    :cond_7
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsDirty:Z

    if-nez v0, :cond_8

    .line 342
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->saveListPos()V

    .line 343
    :cond_8
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 344
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsDirty:Z

    if-nez v0, :cond_9

    .line 345
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->restoreListPos()V

    :cond_9
    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsDirty:Z

    .line 347
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$3;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 364
    const-string v0, "CreateTerritoryTab"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    return-void
.end method

.method private populateTerritoryListDate()V
    .locals 4

    .line 368
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 369
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mEmptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f120255

    .line 370
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 376
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isHidden()Z

    move-result v3

    if-nez v3, :cond_1

    .line 377
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 382
    :cond_2
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryDateComparator;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryDateComparator;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 384
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c014d

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;Landroid/app/Activity;ILjava/util/ArrayList;)V

    .line 387
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->saveListPos()V

    .line 388
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 389
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->restoreListPos()V

    .line 390
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$4;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$4;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 401
    const-string v0, "CreateTerritoryTab"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    return-void
.end method

.method private populateTerritoryListHidden()V
    .locals 11

    .line 405
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 406
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mEmptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f12025d

    .line 407
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    .line 410
    new-instance v1, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumTerritoryComparator;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumTerritoryComparator;-><init>()V

    .line 412
    new-instance v2, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0c0098

    invoke-direct {v2, v3, v4}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;I)V

    .line 415
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    .line 416
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 417
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Lcom/lostpixels/fieldservice/utils/comparators/CaseInsensitiveComparator;

    invoke-direct {v5}, Lcom/lostpixels/fieldservice/utils/comparators/CaseInsensitiveComparator;-><init>()V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 418
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 419
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 420
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isHidden()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 421
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 426
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 427
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const v6, 0x7f0c014d

    if-eqz v5, :cond_7

    .line 428
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 429
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 430
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 431
    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 432
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 433
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getRegion()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isHidden()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 434
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 435
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 437
    :cond_5
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 440
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 441
    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 442
    new-instance v7, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v7, p0, v9, v6, v8}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;Landroid/app/Activity;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v5, v7}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_1

    .line 446
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 447
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v0, 0x7f120480

    .line 448
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, p0, v4, v6, v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;Landroid/app/Activity;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 453
    :cond_8
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsDirty:Z

    if-nez v0, :cond_9

    .line 454
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->saveListPos()V

    .line 455
    :cond_9
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 456
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsDirty:Z

    if-nez v0, :cond_a

    .line 457
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->restoreListPos()V

    :cond_a
    const/4 v0, 0x0

    .line 458
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsDirty:Z

    .line 459
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$5;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$5;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 474
    const-string v0, "CreateTerritoryTab"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    return-void
.end method

.method private populateTerritoryListName()V
    .locals 4

    .line 478
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 479
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mEmptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f120255

    .line 480
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    .line 484
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 486
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isHidden()Z

    move-result v3

    if-nez v3, :cond_1

    .line 487
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    :cond_2
    new-instance v0, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumTerritoryComparator;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumTerritoryComparator;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 494
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c014d

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;Landroid/app/Activity;ILjava/util/ArrayList;)V

    .line 497
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsDirty:Z

    if-nez v1, :cond_3

    .line 498
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->saveListPos()V

    .line 499
    :cond_3
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 500
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsDirty:Z

    if-nez v0, :cond_4

    .line 501
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->restoreListPos()V

    :cond_4
    const/4 v0, 0x0

    .line 502
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsDirty:Z

    .line 503
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$6;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$6;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 512
    const-string v0, "CreateTerritoryTab"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    return-void
.end method

.method private populateTerritoryListNeighbourhood()V
    .locals 11

    .line 222
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 223
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mEmptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f120255

    .line 224
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    .line 226
    new-instance v1, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumTerritoryComparator;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumTerritoryComparator;-><init>()V

    .line 228
    new-instance v2, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0c0098

    invoke-direct {v2, v3, v4}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;I)V

    .line 231
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 233
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Lcom/lostpixels/fieldservice/utils/comparators/CaseInsensitiveComparator;

    invoke-direct {v5}, Lcom/lostpixels/fieldservice/utils/comparators/CaseInsensitiveComparator;-><init>()V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 234
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 235
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 236
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 242
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const v6, 0x7f0c014d

    if-eqz v5, :cond_6

    .line 243
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 244
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 245
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 246
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 247
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 248
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getRegion()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isHidden()Z

    move-result v10

    if-nez v10, :cond_3

    .line 249
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 250
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 252
    :cond_4
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 255
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 256
    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 257
    new-instance v7, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v7, p0, v9, v6, v8}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;Landroid/app/Activity;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v5, v7}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_1

    .line 261
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 262
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v0, 0x7f120480

    .line 263
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, p0, v4, v6, v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;Landroid/app/Activity;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v0, v1}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 268
    :cond_7
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsDirty:Z

    if-nez v0, :cond_8

    .line 269
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->saveListPos()V

    .line 270
    :cond_8
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 271
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsDirty:Z

    if-nez v0, :cond_9

    .line 272
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->restoreListPos()V

    :cond_9
    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsDirty:Z

    .line 274
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$2;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 291
    const-string v0, "CreateTerritoryTab"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    return-void
.end method

.method private resetTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 4

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 517
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 519
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 520
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x11

    .line 521
    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    .line 522
    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x5

    .line 523
    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x10

    .line 524
    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xe

    .line 525
    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x12

    .line 526
    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f12046e

    .line 527
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f120434

    .line 528
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f12016f

    .line 529
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f12053b

    .line 530
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f12045d

    .line 531
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f120363

    .line 532
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f120472

    .line 533
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f12054d

    .line 534
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f120485

    .line 535
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 539
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 542
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    .line 543
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 545
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 546
    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$7;

    invoke-direct {v3, p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$7;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;[Z)V

    invoke-virtual {v2, v1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 553
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$8;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;[ZLcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    const p1, 0x7f1204ae

    invoke-virtual {v2, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f12004b

    const/4 v0, 0x0

    .line 614
    invoke-virtual {v2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f1201db

    .line 615
    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 616
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private restoreListPos()V
    .locals 3

    .line 914
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->miSavedIndex:I

    if-lez v0, :cond_0

    .line 915
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->miSavedTop:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    :cond_0
    return-void
.end method

.method private saveListPos()V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->miSavedIndex:I

    .line 909
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 910
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->miSavedTop:I

    return-void
.end method


# virtual methods
.method protected createLongClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 8

    .line 622
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 626
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 628
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 629
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/4 v4, 0x0

    aget-object v5, v0, v4

    const v6, 0x7f080201

    invoke-direct {v3, v5, v6, v4}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getTerritoryCard(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 633
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 635
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/4 v5, 0x2

    aget-object v6, v0, v5

    const v7, 0x7f080203

    invoke-direct {v3, v6, v7, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v5, 0x7f1204d0

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080202

    const/4 v7, 0x5

    invoke-direct {v3, v5, v6, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    :cond_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getURL()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 641
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v5, 0x7f12047f

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0800b9

    const/16 v7, 0xa

    invoke-direct {v3, v5, v6, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_1
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v5, 0x7f1201bc

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080314

    const/4 v7, 0x4

    invoke-direct {v3, v5, v6, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v5, 0x7f1201c0

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080341

    const/4 v7, 0x3

    invoke-direct {v3, v5, v6, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isHidden()Z

    move-result v3

    const/16 v5, 0x8

    if-nez v3, :cond_2

    .line 648
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v6, 0x7f12040b

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080258

    invoke-direct {v3, v6, v7, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 650
    :cond_2
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v6, 0x7f1204ec

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080244

    invoke-direct {v3, v6, v7, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :goto_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isReturned()Z

    move-result v3

    const/16 v5, 0x9

    if-nez v3, :cond_3

    .line 654
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v6, 0x7f120441

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08024c

    invoke-direct {v3, v6, v7, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 656
    :cond_3
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v6, 0x7f120526

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080243

    invoke-direct {v3, v6, v7, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    :goto_1
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v5, 0x7f1204ae

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0802ff

    const/4 v7, 0x6

    invoke-direct {v3, v5, v6, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/4 v5, 0x1

    aget-object v0, v0, v5

    const v6, 0x7f080146

    invoke-direct {v3, v0, v6, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120582

    .line 663
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 664
    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsLightTheme:Z

    if-eqz v3, :cond_4

    .line 665
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_2

    .line 667
    :cond_4
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 669
    :goto_2
    new-instance v3, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 670
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 671
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 672
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;

    invoke-direct {v2, p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;Landroidx/appcompat/app/AlertDialog;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 883
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 884
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public getTerritoryStatistics(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoryInfoCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoryInfoCache:Ljava/util/HashMap;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoryInfoCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;

    if-nez v0, :cond_1

    .line 214
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->calcStatsObject(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoryInfoCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    .line 890
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->updateList()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 891
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 892
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    .line 895
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->updateList()V

    .line 896
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetLatestTerritory()V

    .line 897
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetMinistryStatistics()V

    .line 898
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetOldVisits()V

    .line 899
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetPinnedVisits()V

    .line 900
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetScheduledVisits()V

    .line 901
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetVisitsAboutNow()V

    .line 904
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 151
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 152
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    .line 153
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$AddNewTerritoryListner;

    if-eqz v0, :cond_0

    .line 154
    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$AddNewTerritoryListner;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->listener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$AddNewTerritoryListner;

    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet AddNewTerritoryListner"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 169
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f090059

    if-ne p1, p2, :cond_0

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->time:J

    .line 171
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 172
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    iget p2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {p1, p2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->createLongClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 124
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const p3, 0x7f0c0087

    .line 125
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const p3, 0x7f0c0154

    .line 126
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const p3, 0x7f1200a4

    .line 129
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "selectedTheme"

    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 130
    const-string p3, "light"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsLightTheme:Z

    const p2, 0x7f090059

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    const p2, 0x7f090018

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mEmptyText:Landroid/widget/TextView;

    .line 134
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 135
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mEmptyText:Landroid/widget/TextView;

    new-instance p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$1;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->listener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$AddNewTerritoryListner;

    .line 164
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoryInfoCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 204
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public setDisplayType(I)V
    .locals 1

    .line 116
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->meTerritoryDisplayType:I

    if-eq v0, p1, :cond_0

    .line 117
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->meTerritoryDisplayType:I

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mbIsDirty:Z

    :cond_0
    return-void
.end method

.method public updateList()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->mTerritoriesList:Landroid/widget/ListView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->meTerritoryDisplayType:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->populateTerritoryListHidden()V

    return-void

    .line 185
    :cond_2
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->populateTerritoryListName()V

    return-void

    .line 188
    :cond_3
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->populateTerritoryListDate()V

    return-void

    .line 194
    :cond_4
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->populateTerritoryListCity()V

    return-void

    .line 182
    :cond_5
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->populateTerritoryListNeighbourhood()V

    return-void
.end method
