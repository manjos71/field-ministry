.class public Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final headers:Landroid/widget/ArrayAdapter;

.field private mbEnableClick:Z

.field public final objects:Ljava/util/ArrayList;

.field public final sections:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    .line 29
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->objects:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->mbEnableClick:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    .line 35
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->objects:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->mbEnableClick:Z

    return-void
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSection(Ljava/lang/String;Landroid/widget/Adapter;Ljava/lang/Object;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p1, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 92
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 145
    invoke-super {p0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderItem(I)Ljava/lang/Object;
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 75
    iget-object v3, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 76
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 59
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 63
    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int/2addr p1, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 175
    iget-object v4, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    .line 176
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-nez p1, :cond_0

    return-wide v2

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 180
    invoke-interface {v1, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    sub-int/2addr p1, v4

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 107
    iget-object v4, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Adapter;

    .line 108
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/2addr v4, v1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ge p1, v4, :cond_1

    sub-int/2addr p1, v1

    .line 113
    invoke-interface {v3, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result p1

    add-int/2addr v2, p1

    return v2

    :cond_1
    sub-int/2addr p1, v4

    .line 119
    invoke-interface {v3}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getNumSections()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 153
    iget-object v4, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Adapter;

    .line 154
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-nez p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v2, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 159
    const-string p2, "Header"

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    return-object p1

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 163
    invoke-interface {v3, p1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int/2addr p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 100
    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEnabled(I)Z
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 130
    iget-object v3, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    .line 131
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/2addr v3, v2

    if-nez p1, :cond_0

    .line 134
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->mbEnableClick:Z

    return p1

    :cond_0
    if-ge p1, v3, :cond_1

    .line 135
    check-cast v1, Landroid/widget/BaseAdapter;

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p1

    return p1

    :cond_1
    sub-int/2addr p1, v3

    goto :goto_0

    :cond_2
    return v2
.end method
