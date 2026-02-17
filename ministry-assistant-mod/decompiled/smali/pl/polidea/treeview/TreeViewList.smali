.class public Lpl/polidea/treeview/TreeViewList;
.super Landroid/widget/ListView;
.source "SourceFile"


# static fields
.field private static final DEFAULT_COLLAPSED_RESOURCE:I

.field private static final DEFAULT_EXPANDED_RESOURCE:I


# instance fields
.field private collapsedDrawable:Landroid/graphics/drawable/Drawable;

.field private collapsible:Z

.field private expandedDrawable:Landroid/graphics/drawable/Drawable;

.field private handleTrackballPress:Z

.field private indentWidth:I

.field private indicatorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private indicatorGravity:I

.field private rowBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget v0, Lpl/polidea/treeview/R$drawable;->collapsed:I

    sput v0, Lpl/polidea/treeview/TreeViewList;->DEFAULT_COLLAPSED_RESOURCE:I

    .line 29
    sget v0, Lpl/polidea/treeview/R$drawable;->expanded:I

    sput v0, Lpl/polidea/treeview/TreeViewList;->DEFAULT_EXPANDED_RESOURCE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    sget v0, Lpl/polidea/treeview/R$style;->treeViewListStyle:I

    invoke-direct {p0, p1, p2, v0}, Lpl/polidea/treeview/TreeViewList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 37
    iput p3, p0, Lpl/polidea/treeview/TreeViewList;->indentWidth:I

    .line 38
    iput p3, p0, Lpl/polidea/treeview/TreeViewList;->indicatorGravity:I

    .line 54
    invoke-direct {p0, p1, p2}, Lpl/polidea/treeview/TreeViewList;->parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lpl/polidea/treeview/TreeViewList;)Lpl/polidea/treeview/AbstractTreeViewAdapter;
    .locals 0

    .line 27
    iget-object p0, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    return-object p0
.end method

.method private parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 58
    sget-object v0, Lpl/polidea/treeview/R$styleable;->TreeViewList:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 60
    sget v0, Lpl/polidea/treeview/R$styleable;->TreeViewList_src_expanded:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lpl/polidea/treeview/TreeViewList;->expandedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lpl/polidea/treeview/TreeViewList;->DEFAULT_EXPANDED_RESOURCE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lpl/polidea/treeview/TreeViewList;->expandedDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    :cond_0
    sget v0, Lpl/polidea/treeview/R$styleable;->TreeViewList_src_collapsed:I

    .line 66
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lpl/polidea/treeview/TreeViewList;->collapsedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lpl/polidea/treeview/TreeViewList;->DEFAULT_COLLAPSED_RESOURCE:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lpl/polidea/treeview/TreeViewList;->collapsedDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    :cond_1
    sget p1, Lpl/polidea/treeview/R$styleable;->TreeViewList_indent_width:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lpl/polidea/treeview/TreeViewList;->indentWidth:I

    .line 73
    sget p1, Lpl/polidea/treeview/R$styleable;->TreeViewList_indicator_gravity:I

    const/16 v0, 0x13

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lpl/polidea/treeview/TreeViewList;->indicatorGravity:I

    .line 75
    sget p1, Lpl/polidea/treeview/R$styleable;->TreeViewList_indicator_background:I

    .line 76
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lpl/polidea/treeview/TreeViewList;->indicatorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    sget p1, Lpl/polidea/treeview/R$styleable;->TreeViewList_row_background:I

    .line 78
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lpl/polidea/treeview/TreeViewList;->rowBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    sget p1, Lpl/polidea/treeview/R$styleable;->TreeViewList_collapsible:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lpl/polidea/treeview/TreeViewList;->collapsible:Z

    .line 80
    sget p1, Lpl/polidea/treeview/R$styleable;->TreeViewList_handle_trackball_press:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lpl/polidea/treeview/TreeViewList;->handleTrackballPress:Z

    return-void
.end method

.method private syncAdapter()V
    .locals 2

    .line 96
    iget-object v0, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    iget-object v1, p0, Lpl/polidea/treeview/TreeViewList;->collapsedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->setCollapsedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    iget-object v1, p0, Lpl/polidea/treeview/TreeViewList;->expandedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->setExpandedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    iget v1, p0, Lpl/polidea/treeview/TreeViewList;->indicatorGravity:I

    invoke-virtual {v0, v1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->setIndicatorGravity(I)V

    .line 99
    iget-object v0, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    iget v1, p0, Lpl/polidea/treeview/TreeViewList;->indentWidth:I

    invoke-virtual {v0, v1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->setIndentWidth(I)V

    .line 100
    iget-object v0, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    iget-object v1, p0, Lpl/polidea/treeview/TreeViewList;->indicatorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->setIndicatorBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v0, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    iget-object v1, p0, Lpl/polidea/treeview/TreeViewList;->rowBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->setRowBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v0, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    iget-boolean v1, p0, Lpl/polidea/treeview/TreeViewList;->collapsible:Z

    invoke-virtual {v0, v1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->setCollapsible(Z)V

    .line 103
    iget-boolean v0, p0, Lpl/polidea/treeview/TreeViewList;->handleTrackballPress:Z

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lpl/polidea/treeview/TreeViewList$1;

    invoke-direct {v0, p0}, Lpl/polidea/treeview/TreeViewList$1;-><init>(Lpl/polidea/treeview/TreeViewList;)V

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getCollapsedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 171
    iget-object v0, p0, Lpl/polidea/treeview/TreeViewList;->collapsedDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExpandedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 167
    iget-object v0, p0, Lpl/polidea/treeview/TreeViewList;->expandedDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndentWidth()I
    .locals 1

    .line 183
    iget v0, p0, Lpl/polidea/treeview/TreeViewList;->indentWidth:I

    return v0
.end method

.method public getIndicatorBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 179
    iget-object v0, p0, Lpl/polidea/treeview/TreeViewList;->indicatorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndicatorGravity()I
    .locals 1

    .line 187
    iget v0, p0, Lpl/polidea/treeview/TreeViewList;->indicatorGravity:I

    return v0
.end method

.method public getRowBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 175
    iget-object v0, p0, Lpl/polidea/treeview/TreeViewList;->rowBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 27
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lpl/polidea/treeview/TreeViewList;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 86
    instance-of v0, p1, Lpl/polidea/treeview/AbstractTreeViewAdapter;

    if-eqz v0, :cond_0

    .line 90
    check-cast p1, Lpl/polidea/treeview/AbstractTreeViewAdapter;

    iput-object p1, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    .line 91
    invoke-direct {p0}, Lpl/polidea/treeview/TreeViewList;->syncAdapter()V

    .line 92
    iget-object p1, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 87
    :cond_0
    new-instance p1, Lpl/polidea/treeview/TreeConfigurationException;

    const-string v0, "The adapter is not of TreeViewAdapter type"

    invoke-direct {p1, v0}, Lpl/polidea/treeview/TreeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCollapsedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lpl/polidea/treeview/TreeViewList;->collapsedDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-direct {p0}, Lpl/polidea/treeview/TreeViewList;->syncAdapter()V

    .line 126
    iget-object p1, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    invoke-virtual {p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->refresh()V

    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lpl/polidea/treeview/TreeViewList;->collapsible:Z

    .line 156
    invoke-direct {p0}, Lpl/polidea/treeview/TreeViewList;->syncAdapter()V

    .line 157
    iget-object p1, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    invoke-virtual {p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->refresh()V

    return-void
.end method

.method public setExpandedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lpl/polidea/treeview/TreeViewList;->expandedDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    invoke-direct {p0}, Lpl/polidea/treeview/TreeViewList;->syncAdapter()V

    .line 120
    iget-object p1, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    invoke-virtual {p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->refresh()V

    return-void
.end method

.method public setHandleTrackballPress(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lpl/polidea/treeview/TreeViewList;->handleTrackballPress:Z

    .line 162
    invoke-direct {p0}, Lpl/polidea/treeview/TreeViewList;->syncAdapter()V

    .line 163
    iget-object p1, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    invoke-virtual {p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->refresh()V

    return-void
.end method

.method public setIndentWidth(I)V
    .locals 0

    .line 143
    iput p1, p0, Lpl/polidea/treeview/TreeViewList;->indentWidth:I

    .line 144
    invoke-direct {p0}, Lpl/polidea/treeview/TreeViewList;->syncAdapter()V

    .line 145
    iget-object p1, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    invoke-virtual {p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->refresh()V

    return-void
.end method

.method public setIndicatorBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lpl/polidea/treeview/TreeViewList;->indicatorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    invoke-direct {p0}, Lpl/polidea/treeview/TreeViewList;->syncAdapter()V

    .line 139
    iget-object p1, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    invoke-virtual {p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->refresh()V

    return-void
.end method

.method public setIndicatorGravity(I)V
    .locals 0

    .line 149
    iput p1, p0, Lpl/polidea/treeview/TreeViewList;->indicatorGravity:I

    .line 150
    invoke-direct {p0}, Lpl/polidea/treeview/TreeViewList;->syncAdapter()V

    .line 151
    iget-object p1, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    invoke-virtual {p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->refresh()V

    return-void
.end method

.method public setRowBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lpl/polidea/treeview/TreeViewList;->rowBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-direct {p0}, Lpl/polidea/treeview/TreeViewList;->syncAdapter()V

    .line 132
    iget-object p1, p0, Lpl/polidea/treeview/TreeViewList;->treeAdapter:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    invoke-virtual {p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->refresh()V

    return-void
.end method
