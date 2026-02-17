.class public abstract Lpl/polidea/treeview/AbstractTreeViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ListAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractTreeViewAdapter"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private collapsedDrawable:Landroid/graphics/drawable/Drawable;

.field private collapsible:Z

.field private expandedDrawable:Landroid/graphics/drawable/Drawable;

.field private indentWidth:I

.field private indicatorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final indicatorClickListener:Landroid/view/View$OnClickListener;

.field private indicatorGravity:I

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final numberOfLevels:I

.field private rowBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final treeStateManager:Lpl/polidea/treeview/TreeStateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lpl/polidea/treeview/TreeStateManager;I)V
    .locals 1

    .line 86
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->indentWidth:I

    .line 35
    iput v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->indicatorGravity:I

    .line 41
    new-instance v0, Lpl/polidea/treeview/AbstractTreeViewAdapter$1;

    invoke-direct {v0, p0}, Lpl/polidea/treeview/AbstractTreeViewAdapter$1;-><init>(Lpl/polidea/treeview/AbstractTreeViewAdapter;)V

    iput-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->indicatorClickListener:Landroid/view/View$OnClickListener;

    .line 87
    iput-object p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->activity:Landroid/app/Activity;

    .line 88
    iput-object p2, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->treeStateManager:Lpl/polidea/treeview/TreeStateManager;

    .line 89
    const-string p2, "layout_inflater"

    .line 90
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 91
    iput p3, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->numberOfLevels:I

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->collapsedDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-object p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->expandedDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    iput-object p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->rowBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    iput-object p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->indicatorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private calculateIndentWidth()V
    .locals 2

    .line 75
    iget-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->expandedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getIndentWidth()I

    move-result v0

    iget-object v1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->expandedDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->indentWidth:I

    .line 79
    :cond_0
    iget-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->collapsedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 80
    invoke-direct {p0}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getIndentWidth()I

    move-result v0

    iget-object v1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->collapsedDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 80
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->indentWidth:I

    :cond_1
    return-void
.end method

.method private getDrawableOrDefaultBackground(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    return-object p1
.end method

.method private getIndentWidth()I
    .locals 1

    .line 316
    iget v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->indentWidth:I

    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected calculateIndentation(Lpl/polidea/treeview/TreeNodeInfo;)I
    .locals 2

    .line 265
    invoke-direct {p0}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getIndentWidth()I

    move-result v0

    invoke-virtual {p1}, Lpl/polidea/treeview/TreeNodeInfo;->getLevel()I

    move-result p1

    iget-boolean v1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->collapsible:Z

    add-int/2addr p1, v1

    mul-int v0, v0, p1

    return v0
.end method

.method protected expandCollapse(Ljava/lang/Object;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->treeStateManager:Lpl/polidea/treeview/TreeStateManager;

    invoke-interface {v0, p1}, Lpl/polidea/treeview/TreeStateManager;->getNodeInfo(Ljava/lang/Object;)Lpl/polidea/treeview/TreeNodeInfo;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lpl/polidea/treeview/TreeNodeInfo;->isWithChildren()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {v0}, Lpl/polidea/treeview/TreeNodeInfo;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->treeStateManager:Lpl/polidea/treeview/TreeStateManager;

    invoke-interface {v0, p1}, Lpl/polidea/treeview/TreeStateManager;->collapseChildren(Ljava/lang/Object;)V

    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->treeStateManager:Lpl/polidea/treeview/TreeStateManager;

    invoke-interface {v0, p1}, Lpl/polidea/treeview/TreeStateManager;->expandDirectChildren(Ljava/lang/Object;)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 54
    iget-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public abstract getBackgroundDrawable(Lpl/polidea/treeview/TreeNodeInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public getCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->treeStateManager:Lpl/polidea/treeview/TreeStateManager;

    invoke-interface {v0}, Lpl/polidea/treeview/TreeStateManager;->getVisibleCount()I

    move-result v0

    return v0
.end method

.method protected getDrawable(Lpl/polidea/treeview/TreeNodeInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 269
    invoke-virtual {p1}, Lpl/polidea/treeview/TreeNodeInfo;->isWithChildren()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->collapsible:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p1}, Lpl/polidea/treeview/TreeNodeInfo;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 273
    iget-object p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->expandedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 275
    :cond_1
    iget-object p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->collapsedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 270
    :cond_2
    :goto_0
    iget-object p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->indicatorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getDrawableOrDefaultBackground(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getTreeId(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getTreeNodeInfo(I)Lpl/polidea/treeview/TreeNodeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/polidea/treeview/TreeNodeInfo;->getLevel()I

    move-result p1

    return p1
.end method

.method protected getManager()Lpl/polidea/treeview/TreeStateManager;
    .locals 1

    .line 58
    iget-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->treeStateManager:Lpl/polidea/treeview/TreeStateManager;

    return-object v0
.end method

.method public abstract getNewChildView(Lpl/polidea/treeview/TreeNodeInfo;)Landroid/view/View;
.end method

.method public getTreeId(I)Ljava/lang/Object;
    .locals 1

    .line 119
    iget-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->treeStateManager:Lpl/polidea/treeview/TreeStateManager;

    invoke-interface {v0}, Lpl/polidea/treeview/TreeStateManager;->getVisibleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getTreeListItemWrapperId()I
    .locals 1

    .line 157
    sget v0, Lpl/polidea/treeview/R$layout;->tree_list_item_wrapper:I

    return v0
.end method

.method public getTreeNodeInfo(I)Lpl/polidea/treeview/TreeNodeInfo;
    .locals 1

    .line 123
    iget-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->treeStateManager:Lpl/polidea/treeview/TreeStateManager;

    invoke-virtual {p0, p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getTreeId(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lpl/polidea/treeview/TreeStateManager;->getNodeInfo(Ljava/lang/Object;)Lpl/polidea/treeview/TreeNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 163
    sget-object p3, Lpl/polidea/treeview/AbstractTreeViewAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating a view based on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0, p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getTreeNodeInfo(I)Lpl/polidea/treeview/TreeNodeInfo;

    move-result-object p1

    if-nez p2, :cond_0

    .line 167
    const-string p2, "Creating the view a new"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object p2, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 169
    invoke-virtual {p0}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getTreeListItemWrapperId()I

    move-result p3

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 170
    invoke-virtual {p0, p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getNewChildView(Lpl/polidea/treeview/TreeNodeInfo;)Landroid/view/View;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, p1, v0}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->populateTreeItem(Landroid/widget/LinearLayout;Landroid/view/View;Lpl/polidea/treeview/TreeNodeInfo;Z)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1

    .line 173
    :cond_0
    const-string v0, "Reusing the view"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    check-cast p2, Landroid/widget/LinearLayout;

    .line 175
    sget p3, Lpl/polidea/treeview/R$id;->treeview_list_item_frame:I

    .line 176
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 178
    invoke-virtual {p0, p3, p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->updateView(Landroid/view/View;Lpl/polidea/treeview/TreeNodeInfo;)Landroid/view/View;

    .line 179
    invoke-virtual {p0, p2, p3, p1, v0}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->populateTreeItem(Landroid/widget/LinearLayout;Landroid/view/View;Lpl/polidea/treeview/TreeNodeInfo;Z)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 138
    iget v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->numberOfLevels:I

    return v0
.end method

.method public handleItemClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 321
    invoke-virtual {p0, p2}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->expandCollapse(Ljava/lang/Object;)V

    return-void
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 143
    invoke-virtual {p0}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final populateTreeItem(Landroid/widget/LinearLayout;Landroid/view/View;Lpl/polidea/treeview/TreeNodeInfo;Z)Landroid/widget/LinearLayout;
    .locals 4

    .line 232
    invoke-virtual {p0, p3}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getBackgroundDrawable(Lpl/polidea/treeview/TreeNodeInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->rowBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getDrawableOrDefaultBackground(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 236
    invoke-virtual {p0, p3}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->calculateIndentation(Lpl/polidea/treeview/TreeNodeInfo;)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 237
    sget v1, Lpl/polidea/treeview/R$id;->treeview_list_item_image_layout:I

    .line 238
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 239
    iget v3, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->indicatorGravity:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 240
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    sget v0, Lpl/polidea/treeview/R$id;->treeview_list_item_image:I

    .line 242
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 243
    invoke-virtual {p0, p3}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getDrawable(Lpl/polidea/treeview/TreeNodeInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->indicatorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getDrawableOrDefaultBackground(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 246
    invoke-virtual {p3}, Lpl/polidea/treeview/TreeNodeInfo;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 247
    invoke-virtual {p3}, Lpl/polidea/treeview/TreeNodeInfo;->isWithChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->collapsible:Z

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->indicatorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :goto_0
    invoke-virtual {p3}, Lpl/polidea/treeview/TreeNodeInfo;->getId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 253
    sget v0, Lpl/polidea/treeview/R$id;->treeview_list_item_frame:I

    .line 254
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 255
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz p4, :cond_2

    .line 258
    invoke-virtual {v0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    :cond_2
    invoke-virtual {p3}, Lpl/polidea/treeview/TreeNodeInfo;->getId()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method public refresh()V
    .locals 1

    .line 312
    iget-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->treeStateManager:Lpl/polidea/treeview/TreeStateManager;

    invoke-interface {v0}, Lpl/polidea/treeview/TreeStateManager;->refresh()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->treeStateManager:Lpl/polidea/treeview/TreeStateManager;

    invoke-interface {v0, p1}, Lpl/polidea/treeview/TreeStateManager;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public setCollapsedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->collapsedDrawable:Landroid/graphics/drawable/Drawable;

    .line 285
    invoke-direct {p0}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->calculateIndentWidth()V

    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0

    .line 308
    iput-boolean p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->collapsible:Z

    return-void
.end method

.method public setExpandedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->expandedDrawable:Landroid/graphics/drawable/Drawable;

    .line 290
    invoke-direct {p0}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->calculateIndentWidth()V

    return-void
.end method

.method public setIndentWidth(I)V
    .locals 0

    .line 294
    iput p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->indentWidth:I

    .line 295
    invoke-direct {p0}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->calculateIndentWidth()V

    return-void
.end method

.method public setIndicatorBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->indicatorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIndicatorGravity(I)V
    .locals 0

    .line 280
    iput p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->indicatorGravity:I

    return-void
.end method

.method public setRowBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->rowBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter;->treeStateManager:Lpl/polidea/treeview/TreeStateManager;

    invoke-interface {v0, p1}, Lpl/polidea/treeview/TreeStateManager;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public abstract updateView(Landroid/view/View;Lpl/polidea/treeview/TreeNodeInfo;)Landroid/view/View;
.end method
