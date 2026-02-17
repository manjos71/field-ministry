.class public Lpl/polidea/treeview/TreeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TreeBuilder"


# instance fields
.field private lastAddedId:Ljava/lang/Object;

.field private lastLevel:I

.field private final manager:Lpl/polidea/treeview/TreeStateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lpl/polidea/treeview/TreeStateManager;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lpl/polidea/treeview/TreeBuilder;->lastAddedId:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lpl/polidea/treeview/TreeBuilder;->lastLevel:I

    .line 25
    iput-object p1, p0, Lpl/polidea/treeview/TreeBuilder;->manager:Lpl/polidea/treeview/TreeStateManager;

    return-void
.end method

.method private addNodeToParentOneLevelDown(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    .line 113
    const-string v0, "Trying to add new id "

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance p1, Lpl/polidea/treeview/TreeConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to top level with level != 0 ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lpl/polidea/treeview/TreeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 117
    iget-object v1, p0, Lpl/polidea/treeview/TreeBuilder;->manager:Lpl/polidea/treeview/TreeStateManager;

    invoke-interface {v1, p1}, Lpl/polidea/treeview/TreeStateManager;->getLevel(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v2, p3, -0x1

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 118
    :cond_2
    new-instance v1, Lpl/polidea/treeview/TreeConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " <"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "> to "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lpl/polidea/treeview/TreeBuilder;->manager:Lpl/polidea/treeview/TreeStateManager;

    .line 120
    invoke-interface {p2, p1}, Lpl/polidea/treeview/TreeStateManager;->getLevel(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">. The difference in levels up is bigger than 1."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lpl/polidea/treeview/TreeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_3
    :goto_1
    iget-object v0, p0, Lpl/polidea/treeview/TreeBuilder;->manager:Lpl/polidea/treeview/TreeStateManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lpl/polidea/treeview/TreeStateManager;->addAfterChild(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    invoke-direct {p0, p2, p3}, Lpl/polidea/treeview/TreeBuilder;->setLastAdded(Ljava/lang/Object;I)V

    return-void
.end method

.method private findParentAtLevel(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .line 90
    iget-object v0, p0, Lpl/polidea/treeview/TreeBuilder;->manager:Lpl/polidea/treeview/TreeStateManager;

    invoke-interface {v0, p1}, Lpl/polidea/treeview/TreeStateManager;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 92
    iget-object v0, p0, Lpl/polidea/treeview/TreeBuilder;->manager:Lpl/polidea/treeview/TreeStateManager;

    invoke-interface {v0, p1}, Lpl/polidea/treeview/TreeStateManager;->getLevel(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    iget-object v0, p0, Lpl/polidea/treeview/TreeBuilder;->manager:Lpl/polidea/treeview/TreeStateManager;

    invoke-interface {v0, p1}, Lpl/polidea/treeview/TreeStateManager;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method private setLastAdded(Ljava/lang/Object;I)V
    .locals 0

    .line 128
    iput-object p1, p0, Lpl/polidea/treeview/TreeBuilder;->lastAddedId:Ljava/lang/Object;

    .line 129
    iput p2, p0, Lpl/polidea/treeview/TreeBuilder;->lastLevel:I

    return-void
.end method


# virtual methods
.method public declared-synchronized sequentiallyAddNextNode(Ljava/lang/Object;I)V
    .locals 3

    monitor-enter p0

    .line 67
    :try_start_0
    sget-object v0, Lpl/polidea/treeview/TreeBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding sequentiall node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lpl/polidea/treeview/TreeBuilder;->lastAddedId:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0, p1, p2}, Lpl/polidea/treeview/TreeBuilder;->addNodeToParentOneLevelDown(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 71
    :cond_0
    iget v1, p0, Lpl/polidea/treeview/TreeBuilder;->lastLevel:I

    if-gt p2, v1, :cond_1

    add-int/lit8 v1, p2, -0x1

    .line 72
    invoke-direct {p0, v0, v1}, Lpl/polidea/treeview/TreeBuilder;->findParentAtLevel(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 73
    invoke-direct {p0, v0, p1, p2}, Lpl/polidea/treeview/TreeBuilder;->addNodeToParentOneLevelDown(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lpl/polidea/treeview/TreeBuilder;->addNodeToParentOneLevelDown(Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
