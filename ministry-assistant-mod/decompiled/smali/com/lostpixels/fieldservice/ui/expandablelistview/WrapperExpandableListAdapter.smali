.class public Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# instance fields
.field private final mGroupExpandedMap:Landroid/util/SparseBooleanArray;

.field private final mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/BaseExpandableListAdapter;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 16
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mGroupExpandedMap:Landroid/util/SparseBooleanArray;

    .line 19
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-interface {v0, p1, p2}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-interface {v0, p1, p2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide p1

    return-wide p1
.end method

.method public getChildType(II)I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->getChildType(II)I

    move-result p1

    return p1
.end method

.method public getChildTypeCount()I
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->getChildTypeCount()I

    move-result v0

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 99
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result p1

    return p1
.end method

.method public getCombinedChildId(JJ)J
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/BaseExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getCombinedGroupId(J)J
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->getGroupType(I)I

    move-result p1

    return p1
.end method

.method public getGroupTypeCount()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->getGroupTypeCount()I

    move-result v0

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p3, :cond_1

    const v0, 0x7f09021b

    .line 84
    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 85
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 86
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p3, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mGroupExpandedMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 94
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public hasStableIds()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-interface {v0, p1, p2}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isGroupExpanded(I)Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mGroupExpandedMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public onGroupCollapsed(I)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mGroupExpandedMap:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 126
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mGroupExpandedMap:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 120
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
