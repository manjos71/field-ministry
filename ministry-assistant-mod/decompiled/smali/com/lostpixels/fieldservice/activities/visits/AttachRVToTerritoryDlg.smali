.class public Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;,
        Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TerritoryAdapter;
    }
.end annotation


# instance fields
.field personID:J

.field private shouldBeWhite:Z

.field treeView:Lpl/polidea/treeview/TreeViewList;

.field visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method static bridge synthetic -$$Nest$fgetshouldBeWhite(Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->shouldBeWhite:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$monClick(Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->onClick(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->shouldBeWhite:Z

    return-void
.end method

.method private onClick(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->treeView:Lpl/polidea/treeview/TreeViewList;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 61
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->treeView:Lpl/polidea/treeview/TreeViewList;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 62
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 69
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 70
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v3

    .line 73
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 76
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "PersonID"

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->personID:J

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->personID:J

    :cond_1
    :goto_0
    const v1, 0x7f0c0036

    const/4 v2, 0x0

    .line 83
    invoke-virtual {v5, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0903a4

    .line 84
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lpl/polidea/treeview/TreeViewList;

    iput-object v5, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->treeView:Lpl/polidea/treeview/TreeViewList;

    .line 91
    new-instance v5, Lpl/polidea/treeview/InMemoryTreeStateManager;

    invoke-direct {v5}, Lpl/polidea/treeview/InMemoryTreeStateManager;-><init>()V

    .line 92
    new-instance v6, Lpl/polidea/treeview/TreeBuilder;

    invoke-direct {v6, v5}, Lpl/polidea/treeview/TreeBuilder;-><init>(Lpl/polidea/treeview/TreeStateManager;)V

    .line 98
    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v10, 0x1

    move-object v12, v2

    const/4 v11, 0x1

    const-wide/16 v13, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 99
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isHidden()Z

    move-result v16

    if-eqz v16, :cond_2

    goto :goto_1

    .line 102
    :cond_2
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 103
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 104
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 105
    :cond_3
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getRegion()Ljava/lang/String;

    move-result-object v16

    :cond_4
    if-eqz v16, :cond_5

    .line 106
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_5
    const-wide/16 v16, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v8, v16

    const-wide/16 v16, 0x0

    goto :goto_3

    .line 107
    :goto_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f120562

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 108
    :goto_3
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    const/4 v10, 0x0

    const-wide/16 v18, 0x1

    if-nez v9, :cond_8

    .line 109
    new-instance v9, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;

    add-long v20, v13, v18

    invoke-direct {v9, v13, v14, v2, v8}, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;-><init>(JLcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V

    if-nez v12, :cond_7

    move-object v12, v9

    .line 112
    :cond_7
    invoke-virtual {v6, v9, v10}, Lpl/polidea/treeview/TreeBuilder;->sequentiallyAddNextNode(Ljava/lang/Object;I)V

    move-wide/from16 v13, v20

    .line 115
    :cond_8
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    const/4 v15, 0x2

    .line 117
    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 118
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_a

    .line 119
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v10, v20

    goto :goto_6

    .line 120
    :cond_a
    :goto_5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    const v10, 0x7f1204fe

    invoke-virtual {v15, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 121
    :goto_6
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_b

    .line 122
    new-instance v15, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;

    add-long v22, v13, v18

    invoke-direct {v15, v13, v14, v2, v10}, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;-><init>(JLcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-virtual {v6, v15, v10}, Lpl/polidea/treeview/TreeBuilder;->sequentiallyAddNextNode(Ljava/lang/Object;I)V

    move-wide/from16 v13, v22

    .line 125
    :cond_b
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    const/4 v15, 0x3

    .line 127
    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 128
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v22

    const v15, 0x7f12035c

    if-eqz v22, :cond_d

    .line 129
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_c

    goto :goto_8

    :cond_c
    move-object/from16 v2, v22

    goto :goto_9

    .line 130
    :cond_d
    :goto_8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    :goto_9
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v24

    if-nez v24, :cond_11

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v24, v7

    const/4 v7, 0x1

    if-le v15, v7, :cond_e

    :goto_a
    const/4 v7, 0x2

    goto :goto_e

    .line 145
    :cond_e
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ne v15, v7, :cond_10

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v7

    const/4 v15, 0x0

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v25

    cmp-long v7, v25, v16

    if-nez v7, :cond_f

    .line 146
    new-instance v7, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;

    add-long v25, v13, v18

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {v7, v13, v14, v10, v2}, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;-><init>(JLcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v6, v7, v2}, Lpl/polidea/treeview/TreeBuilder;->sequentiallyAddNextNode(Ljava/lang/Object;I)V

    move-object/from16 v20, v8

    move-wide/from16 v13, v25

    :goto_b
    const/4 v8, 0x0

    goto/16 :goto_13

    :cond_f
    :goto_c
    const/4 v2, 0x2

    goto :goto_d

    :cond_10
    const/4 v15, 0x0

    goto :goto_c

    :goto_d
    move-object/from16 v20, v8

    goto :goto_b

    :cond_11
    move-object/from16 v24, v7

    goto :goto_a

    .line 133
    :goto_e
    new-instance v15, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;

    add-long v26, v13, v18

    move-object/from16 v20, v8

    const/4 v8, 0x0

    invoke-direct {v15, v13, v14, v8, v2}, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;-><init>(JLcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V

    invoke-virtual {v6, v15, v7}, Lpl/polidea/treeview/TreeBuilder;->sequentiallyAddNextNode(Ljava/lang/Object;I)V

    .line 135
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide/from16 v13, v26

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/4 v15, 0x4

    .line 137
    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 138
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_13

    .line 139
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_12

    goto :goto_10

    :cond_12
    const v7, 0x7f12035c

    goto :goto_11

    .line 140
    :cond_13
    :goto_10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    const v7, 0x7f12035c

    invoke-virtual {v15, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 142
    :goto_11
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v25

    cmp-long v27, v25, v16

    if-nez v27, :cond_14

    .line 143
    new-instance v7, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;

    add-long v26, v13, v18

    invoke-direct {v7, v13, v14, v10, v15}, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;-><init>(JLcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V

    const/4 v10, 0x3

    invoke-virtual {v6, v7, v10}, Lpl/polidea/treeview/TreeBuilder;->sequentiallyAddNextNode(Ljava/lang/Object;I)V

    move-wide/from16 v13, v26

    goto :goto_12

    :cond_14
    const/4 v10, 0x3

    :goto_12
    const/4 v7, 0x2

    goto :goto_f

    :cond_15
    :goto_13
    move-object v2, v8

    move-object/from16 v8, v20

    move-object/from16 v7, v24

    goto/16 :goto_7

    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_17
    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_18
    :goto_14
    if-eqz v12, :cond_19

    .line 152
    invoke-interface {v5, v12}, Lpl/polidea/treeview/TreeStateManager;->getNextSibling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;

    .line 153
    invoke-interface {v5, v12}, Lpl/polidea/treeview/TreeStateManager;->collapseChildren(Ljava/lang/Object;)V

    goto :goto_14

    .line 156
    :cond_19
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->treeView:Lpl/polidea/treeview/TreeViewList;

    new-instance v6, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TerritoryAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v0, v7, v5, v11}, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TerritoryAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;Landroid/app/Activity;Lpl/polidea/treeview/TreeStateManager;I)V

    invoke-virtual {v2, v6}, Lpl/polidea/treeview/TreeViewList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->treeView:Lpl/polidea/treeview/TreeViewList;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lpl/polidea/treeview/TreeViewList;->setCollapsible(Z)V

    .line 158
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isLightTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 159
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->treeView:Lpl/polidea/treeview/TreeViewList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0802e2

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lpl/polidea/treeview/TreeViewList;->setCollapsedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->treeView:Lpl/polidea/treeview/TreeViewList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080235

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lpl/polidea/treeview/TreeViewList;->setExpandedDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_15

    .line 162
    :cond_1a
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->treeView:Lpl/polidea/treeview/TreeViewList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0802e3

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lpl/polidea/treeview/TreeViewList;->setCollapsedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->treeView:Lpl/polidea/treeview/TreeViewList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080236

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lpl/polidea/treeview/TreeViewList;->setExpandedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    :goto_15
    invoke-virtual {v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;

    invoke-direct {v2, v0, v3}, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;Lio/realm/Realm;)V

    const v5, 0x7f120054

    invoke-virtual {v1, v5, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$1;

    invoke-direct {v2, v0}, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;)V

    const v5, 0x7f12004b

    .line 204
    invoke-virtual {v1, v5, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 208
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v5, 0x7f12036b

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 210
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$3;

    invoke-direct {v2, v0}, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 217
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 223
    const-string v0, "PersonID"

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->personID:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 224
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
