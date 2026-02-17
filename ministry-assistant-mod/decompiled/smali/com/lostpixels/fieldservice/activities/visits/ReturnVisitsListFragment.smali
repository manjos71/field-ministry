.class public Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;,
        Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;,
        Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;,
        Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;
    }
.end annotation


# instance fields
.field private listener:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

.field final lstSections:Ljava/util/List;

.field private mlwSectionList:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

.field realm:Lio/realm/Realm;

.field private tagListener:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

.field private time:J


# direct methods
.method public static synthetic $r8$lambda$T1ZAImdTIaLZkhJkvKMT_lm4NdU(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->time:J

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x3e8

    const/4 v0, 0x0

    cmp-long v1, p1, p3

    if-gez v1, :cond_0

    return v0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p1, p2, p5, p6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 175
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->listener:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;->onPersonClicked(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return v0

    .line 173
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Person is null 1. ID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->listener:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmlwSectionList(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;)Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->mlwSectionList:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettagListener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;)Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->tagListener:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->lstSections:Ljava/util/List;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->mlwSectionList:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->time:J

    return-void
.end method

.method private populatePersonList()V
    .locals 6

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getPersonList()Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getGroupList()Ljava/util/List;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->lstSections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 155
    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 156
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 157
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->lstSections:Ljava/util/List;

    new-instance v5, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;

    invoke-direct {v5, v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->lstSections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;

    iget-object v4, v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;->items:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    :cond_1
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->lstSections:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;Landroid/content/Context;Ljava/util/List;)V

    .line 164
    new-instance v1, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;-><init>(Landroid/widget/BaseExpandableListAdapter;)V

    .line 165
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->mlwSectionList:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->setAdapter(Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;)V

    .line 167
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->mlwSectionList:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->mlwSectionList:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public notifyData()V
    .locals 6

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getPersonList()Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getGroupList()Ljava/util/List;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->lstSections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 137
    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 138
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 139
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->lstSections:Ljava/util/List;

    new-instance v5, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;

    invoke-direct {v5, v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->lstSections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;

    iget-object v4, v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;->items:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->mlwSectionList:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 114
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 115
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->realm:Lio/realm/Realm;

    .line 116
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    if-eqz v0, :cond_0

    .line 117
    move-object v0, p1

    check-cast v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->listener:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    .line 118
    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->tagListener:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet OnListFragmentListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->time:J

    .line 186
    instance-of p1, p2, Landroid/widget/ExpandableListView;

    if-eqz p1, :cond_1

    .line 187
    check-cast p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    if-nez p3, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iget-wide p1, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 192
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->realm:Lio/realm/Realm;

    iget-wide v0, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    .line 193
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->listener:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    invoke-interface {p2, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;->onPersonLongClicked(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return-void

    .line 195
    :cond_1
    instance-of p1, p2, Lcom/lostpixels/fieldservice/ui/sectionlistview/SectionListView;

    if-eqz p1, :cond_2

    .line 196
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 197
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->realm:Lio/realm/Realm;

    iget-wide v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    .line 198
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->listener:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    invoke-interface {p2, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;->onPersonLongClicked(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return-void

    .line 199
    :cond_2
    instance-of p1, p2, Landroid/widget/ListView;

    if-eqz p1, :cond_3

    .line 200
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 201
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->realm:Lio/realm/Realm;

    iget-wide v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    .line 202
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->listener:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    invoke-interface {p2, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;->onPersonLongClicked(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 65
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p3

    const-string v0, "Start ReturnVisitsList"

    invoke-virtual {p3, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const p3, 0x7f0c0087

    const/4 v0, 0x0

    .line 69
    :try_start_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0110

    .line 72
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090040

    .line 74
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->mlwSectionList:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    const v2, 0x7f090016

    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090014

    .line 76
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0900e9

    .line 77
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 78
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->realm:Lio/realm/Realm;

    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v5

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    .line 79
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x8

    .line 80
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->mlwSectionList:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 83
    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$1;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$2;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->populatePersonList()V

    .line 100
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->listener:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    invoke-interface {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;->onListInitDone()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 104
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    :catch_2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->listener:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    .line 128
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method
