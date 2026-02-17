.class public Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final mlstAdapters:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->mlstAdapters:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->mlstAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 5

    .line 25
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->mlstAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/widget/Adapter;

    .line 26
    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 6

    .line 60
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->mlstAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/widget/Adapter;

    .line 61
    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    if-ge p1, v5, :cond_0

    .line 65
    invoke-interface {v4, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result p1

    add-int/2addr v2, p1

    return v2

    :cond_0
    sub-int/2addr p1, v5

    .line 71
    invoke-interface {v4}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->mlstAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/widget/Adapter;

    .line 47
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 50
    invoke-interface {v3, p1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p1, v4

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->mlstAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/widget/Adapter;

    .line 97
    invoke-interface {v4}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    return v2
.end method

.method public isEnabled(I)Z
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->mlstAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/widget/BaseAdapter;

    .line 82
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 85
    invoke-virtual {v3, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p1

    return p1

    :cond_0
    sub-int/2addr p1, v4

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
