.class public Lpl/polidea/treeview/InMemoryTreeStateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpl/polidea/treeview/TreeStateManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "InMemoryTreeStateManager"


# instance fields
.field private final allNodes:Ljava/util/Map;

.field private final transient observers:Ljava/util/Set;

.field private final topSentinel:Lpl/polidea/treeview/InMemoryTreeNode;

.field private transient unmodifiableVisibleList:Ljava/util/List;

.field private visibleByDefault:Z

.field private transient visibleListCache:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->allNodes:Ljava/util/Map;

    .line 26
    new-instance v0, Lpl/polidea/treeview/InMemoryTreeNode;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v1, v2, v3}, Lpl/polidea/treeview/InMemoryTreeNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iput-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->topSentinel:Lpl/polidea/treeview/InMemoryTreeNode;

    .line 28
    iput-object v1, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->visibleListCache:Ljava/util/List;

    .line 29
    iput-object v1, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->unmodifiableVisibleList:Ljava/util/List;

    .line 30
    iput-boolean v3, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->visibleByDefault:Z

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->observers:Ljava/util/Set;

    return-void
.end method

.method private appendToSb(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 346
    invoke-virtual {p0, p2}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getNodeInfo(Ljava/lang/Object;)Lpl/polidea/treeview/TreeNodeInfo;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lpl/polidea/treeview/TreeNodeInfo;->getLevel()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 348
    new-array v1, v1, [C

    const/16 v2, 0x20

    .line 349
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 350
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Lpl/polidea/treeview/TreeNodeInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p0, p2}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getHierarchyDescription(Ljava/lang/Object;)[Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_0
    invoke-virtual {p0, p2}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getChildren(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 356
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 357
    invoke-direct {p0, p1, v0}, Lpl/polidea/treeview/InMemoryTreeStateManager;->appendToSb(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private expectNodeNotInTreeYet(Ljava/lang/Object;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->allNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/polidea/treeview/InMemoryTreeNode;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v1, Lpl/polidea/treeview/NodeAlreadyInTreeException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lpl/polidea/treeview/InMemoryTreeNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lpl/polidea/treeview/NodeAlreadyInTreeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private getChildrenVisibility(Lpl/polidea/treeview/InMemoryTreeNode;)Z
    .locals 1

    .line 102
    invoke-virtual {p1}, Lpl/polidea/treeview/InMemoryTreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    .line 103
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-boolean p1, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->visibleByDefault:Z

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 106
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/polidea/treeview/InMemoryTreeNode;

    invoke-virtual {p1}, Lpl/polidea/treeview/InMemoryTreeNode;->isVisible()Z

    move-result p1

    return p1
.end method

.method private getNodeFromTreeOrThrow(Ljava/lang/Object;)Lpl/polidea/treeview/InMemoryTreeNode;
    .locals 1

    if-eqz p1, :cond_1

    .line 55
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->allNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/polidea/treeview/InMemoryTreeNode;

    if-eqz v0, :cond_0

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lpl/polidea/treeview/NodeNotInTreeException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lpl/polidea/treeview/NodeNotInTreeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-instance p1, Lpl/polidea/treeview/NodeNotInTreeException;

    const-string v0, "(null)"

    invoke-direct {p1, v0}, Lpl/polidea/treeview/NodeNotInTreeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getNodeFromTreeOrThrowAllowRoot(Ljava/lang/Object;)Lpl/polidea/treeview/InMemoryTreeNode;
    .locals 0

    if-nez p1, :cond_0

    .line 64
    iget-object p1, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->topSentinel:Lpl/polidea/treeview/InMemoryTreeNode;

    return-object p1

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getNodeFromTreeOrThrow(Ljava/lang/Object;)Lpl/polidea/treeview/InMemoryTreeNode;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized internalDataSetChanged()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 34
    :try_start_0
    iput-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->visibleListCache:Ljava/util/List;

    .line 35
    iput-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->unmodifiableVisibleList:Ljava/util/List;

    .line 36
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->observers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 37
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 39
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setChildrenVisibility(Lpl/polidea/treeview/InMemoryTreeNode;ZZ)V
    .locals 2

    .line 185
    invoke-virtual {p1}, Lpl/polidea/treeview/InMemoryTreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/polidea/treeview/InMemoryTreeNode;

    .line 186
    invoke-virtual {v0, p2}, Lpl/polidea/treeview/InMemoryTreeNode;->setVisible(Z)V

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    .line 188
    invoke-direct {p0, v0, p2, v1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->setChildrenVisibility(Lpl/polidea/treeview/InMemoryTreeNode;ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized addAfterChild(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-direct {p0, p2}, Lpl/polidea/treeview/InMemoryTreeStateManager;->expectNodeNotInTreeYet(Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getNodeFromTreeOrThrowAllowRoot(Ljava/lang/Object;)Lpl/polidea/treeview/InMemoryTreeNode;

    move-result-object p1

    .line 137
    invoke-direct {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getChildrenVisibility(Lpl/polidea/treeview/InMemoryTreeNode;)Z

    move-result v0

    if-nez p3, :cond_0

    .line 140
    invoke-virtual {p1}, Lpl/polidea/treeview/InMemoryTreeNode;->getChildrenListSize()I

    move-result p3

    .line 139
    invoke-virtual {p1, p3, p2, v0}, Lpl/polidea/treeview/InMemoryTreeNode;->add(ILjava/lang/Object;Z)Lpl/polidea/treeview/InMemoryTreeNode;

    move-result-object p1

    .line 141
    iget-object p3, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->allNodes:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 143
    :cond_0
    invoke-virtual {p1, p3}, Lpl/polidea/treeview/InMemoryTreeNode;->indexOf(Ljava/lang/Object;)I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    .line 145
    invoke-virtual {p1}, Lpl/polidea/treeview/InMemoryTreeNode;->getChildrenListSize()I

    move-result p3

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 144
    :goto_0
    invoke-virtual {p1, p3, p2, v0}, Lpl/polidea/treeview/InMemoryTreeNode;->add(ILjava/lang/Object;Z)Lpl/polidea/treeview/InMemoryTreeNode;

    move-result-object p1

    .line 147
    iget-object p3, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->allNodes:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v0, :cond_2

    .line 150
    invoke-direct {p0}, Lpl/polidea/treeview/InMemoryTreeStateManager;->internalDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized collapseChildren(Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    .line 211
    :try_start_0
    invoke-direct {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getNodeFromTreeOrThrowAllowRoot(Ljava/lang/Object;)Lpl/polidea/treeview/InMemoryTreeNode;

    move-result-object p1

    .line 212
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->topSentinel:Lpl/polidea/treeview/InMemoryTreeNode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lpl/polidea/treeview/InMemoryTreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/polidea/treeview/InMemoryTreeNode;

    .line 214
    invoke-direct {p0, v0, v2, v1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->setChildrenVisibility(Lpl/polidea/treeview/InMemoryTreeNode;ZZ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 217
    :cond_0
    invoke-direct {p0, p1, v2, v1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->setChildrenVisibility(Lpl/polidea/treeview/InMemoryTreeNode;ZZ)V

    .line 219
    :cond_1
    invoke-direct {p0}, Lpl/polidea/treeview/InMemoryTreeStateManager;->internalDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized expandDirectChildren(Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    .line 195
    :try_start_0
    sget-object v0, Lpl/polidea/treeview/InMemoryTreeStateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expanding direct children of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getNodeFromTreeOrThrowAllowRoot(Ljava/lang/Object;)Lpl/polidea/treeview/InMemoryTreeNode;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    invoke-direct {p0, p1, v0, v1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->setChildrenVisibility(Lpl/polidea/treeview/InMemoryTreeNode;ZZ)V

    .line 198
    invoke-direct {p0}, Lpl/polidea/treeview/InMemoryTreeStateManager;->internalDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getChildren(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-direct {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getNodeFromTreeOrThrowAllowRoot(Ljava/lang/Object;)Lpl/polidea/treeview/InMemoryTreeNode;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lpl/polidea/treeview/InMemoryTreeNode;->getChildIdList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getHierarchyDescription(Ljava/lang/Object;)[Ljava/lang/Integer;
    .locals 6

    .line 331
    invoke-virtual {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getLevel(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 332
    new-array v1, v1, [Ljava/lang/Integer;

    .line 335
    invoke-virtual {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move v5, v0

    move-object v0, p1

    move-object p1, v2

    move v2, v5

    :goto_0
    if-ltz v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    .line 337
    invoke-virtual {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getChildren(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 339
    invoke-virtual {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getLevel(Ljava/lang/Object;)I
    .locals 0

    .line 326
    invoke-direct {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getNodeFromTreeOrThrow(Ljava/lang/Object;)Lpl/polidea/treeview/InMemoryTreeNode;

    move-result-object p1

    invoke-virtual {p1}, Lpl/polidea/treeview/InMemoryTreeNode;->getLevel()I

    move-result p1

    return p1
.end method

.method public declared-synchronized getNextSibling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    .line 224
    :try_start_0
    invoke-virtual {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    invoke-direct {p0, v0}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getNodeFromTreeOrThrowAllowRoot(Ljava/lang/Object;)Lpl/polidea/treeview/InMemoryTreeNode;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lpl/polidea/treeview/InMemoryTreeNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/polidea/treeview/InMemoryTreeNode;

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {v2}, Lpl/polidea/treeview/InMemoryTreeNode;->getId()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 231
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lpl/polidea/treeview/InMemoryTreeNode;->getId()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 235
    :cond_2
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized getNextVisible(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    .line 284
    :try_start_0
    invoke-direct {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getNodeFromTreeOrThrowAllowRoot(Ljava/lang/Object;)Lpl/polidea/treeview/InMemoryTreeNode;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lpl/polidea/treeview/InMemoryTreeNode;->isVisible()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 286
    monitor-exit p0

    return-object v2

    .line 288
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lpl/polidea/treeview/InMemoryTreeNode;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 289
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 290
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/polidea/treeview/InMemoryTreeNode;

    .line 291
    invoke-virtual {v1}, Lpl/polidea/treeview/InMemoryTreeNode;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    invoke-virtual {v1}, Lpl/polidea/treeview/InMemoryTreeNode;->getId()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 295
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getNextSibling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 297
    monitor-exit p0

    return-object p1

    .line 299
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Lpl/polidea/treeview/InMemoryTreeNode;->getParent()Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-nez p1, :cond_3

    .line 302
    monitor-exit p0

    return-object v2

    .line 304
    :cond_3
    :try_start_4
    invoke-virtual {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getNextSibling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    .line 306
    monitor-exit p0

    return-object v0

    .line 308
    :cond_4
    :try_start_5
    invoke-direct {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getNodeFromTreeOrThrow(Ljava/lang/Object;)Lpl/polidea/treeview/InMemoryTreeNode;

    move-result-object p1

    invoke-virtual {p1}, Lpl/polidea/treeview/InMemoryTreeNode;->getParent()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 309
    :goto_1
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized getNodeInfo(Ljava/lang/Object;)Lpl/polidea/treeview/TreeNodeInfo;
    .locals 6

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-direct {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getNodeFromTreeOrThrow(Ljava/lang/Object;)Lpl/polidea/treeview/InMemoryTreeNode;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lpl/polidea/treeview/InMemoryTreeNode;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/polidea/treeview/InMemoryTreeNode;

    invoke-virtual {v2}, Lpl/polidea/treeview/InMemoryTreeNode;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 84
    :goto_1
    new-instance v0, Lpl/polidea/treeview/TreeNodeInfo;

    move-object v4, v2

    invoke-virtual {v4}, Lpl/polidea/treeview/InMemoryTreeNode;->getLevel()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v3, v1

    .line 85
    invoke-virtual {v4}, Lpl/polidea/treeview/InMemoryTreeNode;->isVisible()Z

    move-result v4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lpl/polidea/treeview/TreeNodeInfo;-><init>(Ljava/lang/Object;IZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-direct {p0, p1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getNodeFromTreeOrThrowAllowRoot(Ljava/lang/Object;)Lpl/polidea/treeview/InMemoryTreeNode;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lpl/polidea/treeview/InMemoryTreeNode;->getParent()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getVisibleCount()I
    .locals 1

    monitor-enter p0

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getVisibleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getVisibleList()Ljava/util/List;
    .locals 2

    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->visibleListCache:Ljava/util/List;

    if-nez v0, :cond_1

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->allNodes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->visibleListCache:Ljava/util/List;

    const/4 v0, 0x0

    .line 268
    :goto_0
    invoke-virtual {p0, v0}, Lpl/polidea/treeview/InMemoryTreeStateManager;->getNextVisible(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 272
    :cond_0
    iget-object v1, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->visibleListCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 276
    :cond_1
    :goto_1
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->unmodifiableVisibleList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 277
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->visibleListCache:Ljava/util/List;

    .line 278
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->unmodifiableVisibleList:Ljava/util/List;

    .line 280
    :cond_2
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->unmodifiableVisibleList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public refresh()V
    .locals 0

    .line 377
    invoke-direct {p0}, Lpl/polidea/treeview/InMemoryTreeStateManager;->internalDataSetChanged()V

    return-void
.end method

.method public declared-synchronized registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 363
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 364
    invoke-direct {p0, v0, v1}, Lpl/polidea/treeview/InMemoryTreeStateManager;->appendToSb(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeStateManager;->observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
