.class public Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$BitmapWorkerTask;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnInitListener;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;
    }
.end annotation


# static fields
.field private static mbTrackedHasTerritoryCard:Z = false

.field private static mbTrackedTerritoryCardClosed:Z = false

.field private static mbTrackedTerritoryCardTapped:Z = false


# instance fields
.field private addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

.field private btnAddAddress:Landroid/view/View;

.field private fabAddMenu:Lcom/lostpixels/fieldservice/ui/Fab;

.field private fabMenu:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

.field private initListener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnInitListener;

.field private listener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

.field private mAddStreetsFabs:Landroid/view/View;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mHeaderView:Landroid/view/View;

.field mScrollListener:Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;

.field private mSeparatedAdapter:Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;

.field private mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field private mTerritoryCardView:Landroid/view/View;

.field private mbIsDirty:Z

.field private mbStartFromHighestFloor:Z

.field private mbTerritoryCardClosed:Z

.field private mbTerritoryCardSet:Z

.field private miMoreButton:I

.field private miSavedIndex:I

.field private miSavedTop:I

.field private miTmpAddressIx:J

.field private miTmpStreetIx:J

.field private miTmpVisitIx:J

.field private miTrashCan:I

.field private mlstStreets:Landroid/widget/ListView;

.field realm:Lio/realm/Realm;

.field private time:J

.field private viewEmptyList:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetaddHandler(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->listener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDayFormat(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mDayFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeaderView(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mHeaderView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTerritoryCardView(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mTerritoryCardView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmiTmpStreetIx(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miTmpStreetIx:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmiTmpVisitIx(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miTmpVisitIx:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmlstStreets(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Landroid/widget/ListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mlstStreets:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettime(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->time:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmbTerritoryCardClosed(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTerritoryCardClosed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmiTmpAddressIx(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miTmpAddressIx:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmiTmpStreetIx(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miTmpStreetIx:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmiTmpVisitIx(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miTmpVisitIx:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtime(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->time:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmbTrackedTerritoryCardClosed()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTrackedTerritoryCardClosed:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmbTrackedTerritoryCardTapped()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTrackedTerritoryCardTapped:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmbTrackedTerritoryCardClosed(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTrackedTerritoryCardClosed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmbTrackedTerritoryCardTapped(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTrackedTerritoryCardTapped:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "cc "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mDayFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miSavedTop:I

    const/4 v1, -0x1

    .line 104
    iput v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miSavedIndex:I

    const/4 v1, 0x1

    .line 107
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbIsDirty:Z

    .line 108
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTerritoryCardSet:Z

    .line 109
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbStartFromHighestFloor:Z

    .line 110
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTerritoryCardClosed:Z

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->fabAddMenu:Lcom/lostpixels/fieldservice/ui/Fab;

    const-wide/16 v0, 0x0

    .line 118
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->time:J

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 127
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 128
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 133
    :cond_1
    :goto_0
    div-int/lit8 v0, v0, 0x2

    .line 134
    div-int/lit8 p0, p0, 0x2

    .line 138
    :goto_1
    div-int v2, v0, v1

    if-le v2, p2, :cond_2

    div-int v2, p0, v1

    if-le v2, p1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    return v1
.end method

.method private createStreetList()V
    .locals 20

    move-object/from16 v1, p0

    .line 543
    new-instance v0, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    invoke-interface {v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;->isEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0c013d

    goto :goto_0

    :cond_0
    const v3, 0x7f0c013e

    :goto_0
    const v4, 0x7f09056d

    invoke-direct {v0, v2, v3, v4}, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mSeparatedAdapter:Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;

    .line 545
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$6;

    invoke-direct {v2, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$6;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)V

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;->setOnButtonTapListner(Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$OnButtonTapListener;)V

    .line 557
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 558
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    invoke-interface {v2, v11}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;->onShouldAddStreet(Lcom/lostpixels/fieldservice/internal/ministry/Street;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 563
    :cond_1
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getShowAddress()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    if-nez v12, :cond_4

    .line 565
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getShowAddress()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_3
    move v13, v0

    .line 568
    new-instance v14, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;

    invoke-direct {v14}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;-><init>()V

    .line 571
    const-string v0, "^\\d*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 572
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v4, v17

    :cond_5
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 574
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    invoke-interface {v2, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;->onShouldAddAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    if-nez v12, :cond_8

    .line 581
    :try_start_0
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 582
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 583
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v13, :cond_7

    .line 584
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_7

    goto :goto_4

    :catch_0
    nop

    goto :goto_4

    :cond_7
    if-nez v13, :cond_8

    .line 586
    rem-int/lit8 v2, v2, 0x2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v9, :cond_8

    goto :goto_4

    .line 597
    :cond_8
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v2

    .line 599
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v9, :cond_9

    goto :goto_5

    .line 611
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 612
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-nez v4, :cond_a

    .line 614
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 615
    :cond_a
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    invoke-interface {v2, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;->onShouldAddVisit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 616
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    :goto_5
    if-eqz v4, :cond_c

    .line 603
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    move-object v3, v0

    .line 604
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;

    move-object v5, v2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object v7, v5

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getId()J

    move-result-wide v5

    move-object/from16 v18, v7

    const/4 v7, 0x0

    move-object/from16 v19, v3

    const v3, 0x7f0c013f

    move-object/from16 v9, v18

    invoke-direct/range {v0 .. v7}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;Landroid/app/Activity;ILjava/util/ArrayList;JZ)V

    invoke-virtual {v14, v0}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    move-object/from16 v4, v17

    goto :goto_6

    :cond_c
    move-object/from16 v19, v0

    move-object v9, v2

    .line 608
    :goto_6
    invoke-virtual/range {v19 .. v19}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getId()J

    move-result-wide v2

    invoke-direct {v1, v9, v0, v2, v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->getVisitAdapter(Ljava/util/List;Ljava/lang/String;J)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    :cond_d
    :goto_7
    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_e
    if-nez v4, :cond_f

    .line 622
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 625
    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    invoke-interface {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 626
    :cond_10
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getId()J

    move-result-wide v5

    const/4 v7, 0x0

    const v3, 0x7f0c013f

    invoke-direct/range {v0 .. v7}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;Landroid/app/Activity;ILjava/util/ArrayList;JZ)V

    invoke-virtual {v14, v0}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    .line 629
    :cond_11
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_12

    if-nez v12, :cond_15

    .line 631
    :cond_12
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 632
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    const-string v2, ")"

    const-string v3, " ("

    if-nez v12, :cond_13

    if-eqz v13, :cond_13

    .line 634
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v3, 0x7f1203df

    .line 635
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_13
    if-nez v12, :cond_14

    if-nez v13, :cond_14

    .line 639
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v3, 0x7f120477

    .line 640
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 641
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 643
    :cond_14
    :goto_8
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mSeparatedAdapter:Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v14, v11}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;Ljava/lang/Object;)V

    :cond_15
    move v0, v13

    const/4 v9, 0x1

    goto/16 :goto_1

    .line 649
    :cond_16
    iget-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbIsDirty:Z

    if-nez v0, :cond_17

    .line 650
    invoke-direct {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->saveListPos()V

    .line 652
    :cond_17
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mlstStreets:Landroid/widget/ListView;

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mSeparatedAdapter:Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 654
    iget-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbIsDirty:Z

    if-nez v0, :cond_18

    .line 655
    invoke-direct {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->restoreListPos()V

    .line 659
    :cond_18
    iget-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTerritoryCardSet:Z

    if-eqz v0, :cond_19

    .line 660
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mlstStreets:Landroid/widget/ListView;

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mScrollListener:Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 668
    :cond_19
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mlstStreets:Landroid/widget/ListView;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$7;

    invoke-direct {v2, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$7;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 689
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mlstStreets:Landroid/widget/ListView;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$8;

    invoke-direct {v2, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$8;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 716
    iput-boolean v10, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbIsDirty:Z

    return-void
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 151
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 152
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 153
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 156
    invoke-static {v0, p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 159
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 160
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getVisitAdapter(Ljava/util/List;Ljava/lang/String;J)Landroid/widget/BaseAdapter;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 467
    new-instance v10, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    invoke-interface {v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0c003e

    goto :goto_0

    :cond_0
    const v2, 0x7f0c003f

    :goto_0
    const v3, 0x7f09056d

    invoke-direct {v10, v0, v2, v3}, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;-><init>(Landroid/content/Context;II)V

    .line 469
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$5;

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$5;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)V

    invoke-virtual {v10, v0}, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;->setOnButtonTapListner(Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$OnButtonTapListener;)V

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v11, 0x0

    if-nez v2, :cond_2

    .line 492
    iget-boolean v2, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbStartFromHighestFloor:Z

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v9, :cond_4

    .line 494
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    const-string v3, " - "

    :goto_3
    move-object v12, v3

    goto :goto_5

    :cond_4
    :goto_4
    const-string v3, ""

    goto :goto_3

    .line 496
    :goto_5
    iget-boolean v3, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbStartFromHighestFloor:Z

    if-eqz v3, :cond_5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_5
    const/4 v3, 0x0

    :goto_6
    move-object v4, v0

    .line 497
    :goto_7
    iget-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbStartFromHighestFloor:Z

    if-eqz v0, :cond_6

    if-gez v3, :cond_7

    :cond_6
    if-nez v0, :cond_c

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_c

    .line 498
    :cond_7
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 499
    iget-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbStartFromHighestFloor:Z

    if-eqz v0, :cond_8

    add-int/lit8 v3, v3, -0x1

    :goto_8
    move v14, v3

    goto :goto_9

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 504
    :goto_9
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v0

    if-eq v2, v0, :cond_a

    .line 505
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2, v11}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;

    .line 507
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c013f

    const/4 v7, 0x0

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;Landroid/app/Activity;ILjava/util/ArrayList;JZ)V

    .line 508
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 506
    invoke-virtual {v10, v15, v0, v2}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;Ljava/lang/Object;)V

    .line 511
    :cond_9
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v0

    .line 512
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v2

    move v2, v0

    .line 515
    :cond_a
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    invoke-interface {v0, v13}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;->onShouldAddVisit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 516
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move v3, v14

    goto :goto_7

    .line 520
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2, v11}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;

    .line 522
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c013f

    const/4 v7, 0x1

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;Landroid/app/Activity;ILjava/util/ArrayList;JZ)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 521
    invoke-virtual {v10, v8, v0, v2}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;Ljava/lang/Object;)V

    return-object v10

    .line 523
    :cond_d
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    invoke-interface {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2, v11}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;

    .line 525
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c013f

    const/4 v7, 0x1

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;Landroid/app/Activity;ILjava/util/ArrayList;JZ)V

    const/4 v1, 0x0

    .line 524
    invoke-virtual {v10, v8, v0, v1}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;Ljava/lang/Object;)V

    :cond_e
    return-object v10
.end method

.method private restoreListPos()V
    .locals 3

    .line 537
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miSavedIndex:I

    if-lez v0, :cond_0

    .line 538
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mlstStreets:Landroid/widget/ListView;

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miSavedTop:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    :cond_0
    return-void
.end method

.method private saveListPos()V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mlstStreets:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miSavedIndex:I

    .line 532
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mlstStreets:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miSavedTop:I

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 415
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 416
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->realm:Lio/realm/Realm;

    .line 417
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    if-eqz v0, :cond_2

    .line 418
    move-object v1, p1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->listener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    if-eqz v0, :cond_1

    .line 425
    move-object v0, p1

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnInitListener;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->initListener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnInitListener;

    .line 430
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    if-eqz v0, :cond_0

    .line 431
    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    return-void

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet OnAddVisitListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet OnInitListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet OnListItemClickListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->fabMenu:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->fabMenu:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    invoke-virtual {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->closeMenu()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 174
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const p3, 0x7f0c0087

    .line 175
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 176
    :cond_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    const v0, 0x7f0c0151

    .line 177
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090249

    .line 178
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v0, 0x7f09017b

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090244

    .line 180
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mTerritoryCardView:Landroid/view/View;

    const v2, 0x7f09039c

    .line 182
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mlstStreets:Landroid/widget/ListView;

    const v2, 0x7f090019

    .line 183
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->viewEmptyList:Landroid/widget/TextView;

    const v2, 0x7f09009c

    .line 184
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mAddStreetsFabs:Landroid/view/View;

    const v2, 0x7f090216

    .line 186
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/ui/Fab;

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->fabAddMenu:Lcom/lostpixels/fieldservice/ui/Fab;

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getFabColor(Landroid/content/Context;)I

    move-result v2

    .line 188
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->fabAddMenu:Lcom/lostpixels/fieldservice/ui/Fab;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lcom/lostpixels/fieldservice/ui/Fab;->setColor(I)V

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080082

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 191
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->fabAddMenu:Lcom/lostpixels/fieldservice/ui/Fab;

    invoke-virtual {v3, v2}, Lcom/lostpixels/fieldservice/ui/Fab;->setDrawable(Landroid/graphics/Bitmap;)V

    const v2, 0x7f090217

    .line 193
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->fabMenu:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    .line 194
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->fabAddMenu:Lcom/lostpixels/fieldservice/ui/Fab;

    invoke-virtual {v2, v3}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->bindAncherView(Landroid/view/View;)V

    .line 195
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->fabMenu:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$1;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)V

    invoke-virtual {v2, v3}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->setOnFABMenuSelectedListener(Lcom/hlab/fabrevealmenu/listeners/OnFABMenuSelectedListener;)V

    .line 215
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->viewEmptyList:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->viewEmptyList:Landroid/widget/TextView;

    const v3, 0x7f080295

    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v2, 0x7f0900e2

    .line 218
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->btnAddAddress:Landroid/view/View;

    .line 219
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->btnAddAddress:Landroid/view/View;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$2;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mAddStreetsFabs:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mlstStreets:Landroid/widget/ListView;

    const v3, 0x7f09020b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 233
    const-string v3, "reverseBuildings"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbStartFromHighestFloor:Z

    .line 235
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f040027

    const/4 v5, 0x1

    .line 237
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 238
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    iput v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miTrashCan:I

    const v4, 0x7f040020

    .line 239
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 240
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    iput v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miMoreButton:I

    .line 242
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 243
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$3;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_2

    .line 333
    const-string v0, "StreetIx"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miTmpStreetIx:J

    .line 334
    const-string v0, "VisitIx"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miTmpVisitIx:J

    .line 335
    const-string v0, "AddressIx"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miTmpAddressIx:J

    .line 336
    const-string v0, "CardClosed"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTerritoryCardClosed:Z

    .line 341
    :cond_2
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTerritoryCardSet:Z

    .line 342
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-eqz p3, :cond_7

    .line 344
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getTerritoryCard(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 345
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTerritoryCardClosed:Z

    if-nez v0, :cond_6

    .line 347
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTrackedHasTerritoryCard:Z

    if-nez v0, :cond_3

    .line 348
    sput-boolean v5, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTrackedHasTerritoryCard:Z

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/MinistryAssistant;->hasPermissionToTrack(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 352
    const-string v1, "item_id"

    const-string v2, "Has_territory_card"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v1, "item_name"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v1, "content_type"

    const-string v2, "TerritoryCard"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->getTracker()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    const-string v2, "select_content"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 359
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mHeaderView:Landroid/view/View;

    .line 360
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mlstStreets:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 361
    iput-boolean v5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTerritoryCardSet:Z

    .line 362
    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 363
    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const p3, 0x7f080383

    .line 372
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 364
    :cond_5
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 368
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$BitmapWorkerTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x43160000    # 150.0f

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->pxFromDp(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, p2, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$BitmapWorkerTask;-><init>(Landroid/widget/ImageView;I)V

    .line 369
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 375
    :cond_6
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mTerritoryCardView:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 380
    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    invoke-interface {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;->isEditMode()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 381
    invoke-virtual {p0, v5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->setEditMode(Z)V

    .line 383
    :cond_8
    const-string p2, "TerritoryListFragment.onCreateView"

    invoke-static {p2}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 439
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->listener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    .line 441
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    .line 442
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->initListener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnInitListener;

    .line 443
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 458
    const-string v0, "StreetIx"

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miTmpStreetIx:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 459
    const-string v0, "VisitIx"

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miTmpVisitIx:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 460
    const-string v0, "AddressIx"

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->miTmpAddressIx:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 461
    const-string v0, "CardClosed"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTerritoryCardClosed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 462
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 389
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 391
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbTerritoryCardSet:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 392
    new-instance p1, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;

    sget-object v0, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnViewType;->HEADER:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnViewType;

    invoke-direct {p1, v0}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;-><init>(Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnViewType;)V

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mTerritoryCardView:Landroid/view/View;

    .line 393
    invoke-virtual {p1, v0}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->header(Landroid/view/View;)Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;

    move-result-object p1

    .line 394
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->pxFromDp(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->minHeaderTranslation(I)Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;

    move-result-object p1

    .line 395
    invoke-virtual {p1, p2}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->isSnappable(Z)Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;

    move-result-object p1

    .line 396
    invoke-virtual {p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->build()Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mScrollListener:Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->setListDirty()V

    .line 400
    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    return-void
.end method

.method public setEditMode(Z)V
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mAddStreetsFabs:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 407
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 409
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 410
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->fabAddMenu:Lcom/lostpixels/fieldservice/ui/Fab;

    const v1, 0x7f120579

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12057a

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CreateAddressFab"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/ui/OverlayHelper;->showTapTargetPrompt(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setListDirty()V
    .locals 1

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mbIsDirty:Z

    return-void
.end method

.method public setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-void
.end method

.method public update(Z)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mlstStreets:Landroid/widget/ListView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 450
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->createStreetList()V

    return-void

    .line 451
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->mSeparatedAdapter:Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;

    if-eqz p1, :cond_2

    .line 452
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method
