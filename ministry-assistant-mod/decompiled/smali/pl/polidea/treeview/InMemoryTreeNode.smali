.class Lpl/polidea/treeview/InMemoryTreeNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private childIdListCache:Ljava/util/List;

.field private final children:Ljava/util/List;

.field private final id:Ljava/lang/Object;

.field private final level:I

.field private final parent:Ljava/lang/Object;

.field private visible:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lpl/polidea/treeview/InMemoryTreeNode;->visible:Z

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lpl/polidea/treeview/InMemoryTreeNode;->children:Ljava/util/List;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lpl/polidea/treeview/InMemoryTreeNode;->childIdListCache:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lpl/polidea/treeview/InMemoryTreeNode;->id:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lpl/polidea/treeview/InMemoryTreeNode;->parent:Ljava/lang/Object;

    .line 27
    iput p3, p0, Lpl/polidea/treeview/InMemoryTreeNode;->level:I

    .line 28
    iput-boolean p4, p0, Lpl/polidea/treeview/InMemoryTreeNode;->visible:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized add(ILjava/lang/Object;Z)Lpl/polidea/treeview/InMemoryTreeNode;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 65
    :try_start_0
    iput-object v0, p0, Lpl/polidea/treeview/InMemoryTreeNode;->childIdListCache:Ljava/util/List;

    .line 67
    new-instance v0, Lpl/polidea/treeview/InMemoryTreeNode;

    .line 68
    invoke-virtual {p0}, Lpl/polidea/treeview/InMemoryTreeNode;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lpl/polidea/treeview/InMemoryTreeNode;->getLevel()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lpl/polidea/treeview/InMemoryTreeNode;->getId()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-direct {v0, p2, v1, v2, p3}, Lpl/polidea/treeview/InMemoryTreeNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 69
    iget-object p2, p0, Lpl/polidea/treeview/InMemoryTreeNode;->children:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getChildIdList()Ljava/util/List;
    .locals 3

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeNode;->childIdListCache:Ljava/util/List;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lpl/polidea/treeview/InMemoryTreeNode;->childIdListCache:Ljava/util/List;

    .line 44
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/polidea/treeview/InMemoryTreeNode;

    .line 45
    iget-object v2, p0, Lpl/polidea/treeview/InMemoryTreeNode;->childIdListCache:Ljava/util/List;

    invoke-virtual {v1}, Lpl/polidea/treeview/InMemoryTreeNode;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 48
    :cond_0
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeNode;->childIdListCache:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1

    .line 80
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeNode;->children:Ljava/util/List;

    return-object v0
.end method

.method public getChildrenListSize()I
    .locals 1

    .line 60
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getId()Ljava/lang/Object;
    .locals 1

    .line 105
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeNode;->id:Ljava/lang/Object;

    return-object v0
.end method

.method getLevel()I
    .locals 1

    .line 113
    iget v0, p0, Lpl/polidea/treeview/InMemoryTreeNode;->level:I

    return v0
.end method

.method getParent()Ljava/lang/Object;
    .locals 1

    .line 109
    iget-object v0, p0, Lpl/polidea/treeview/InMemoryTreeNode;->parent:Ljava/lang/Object;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 32
    invoke-virtual {p0}, Lpl/polidea/treeview/InMemoryTreeNode;->getChildIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isVisible()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lpl/polidea/treeview/InMemoryTreeNode;->visible:Z

    return v0
.end method

.method public setVisible(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lpl/polidea/treeview/InMemoryTreeNode;->visible:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InMemoryTreeNode [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/polidea/treeview/InMemoryTreeNode;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/polidea/treeview/InMemoryTreeNode;->getParent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Lpl/polidea/treeview/InMemoryTreeNode;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lpl/polidea/treeview/InMemoryTreeNode;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/polidea/treeview/InMemoryTreeNode;->children:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", childIdListCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/polidea/treeview/InMemoryTreeNode;->childIdListCache:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
