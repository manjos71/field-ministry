.class public Lpl/polidea/treeview/TreeNodeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final expanded:Z

.field private final id:Ljava/lang/Object;

.field private final level:I

.field private final visible:Z

.field private final withChildren:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;IZZZ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lpl/polidea/treeview/TreeNodeInfo;->id:Ljava/lang/Object;

    .line 36
    iput p2, p0, Lpl/polidea/treeview/TreeNodeInfo;->level:I

    .line 37
    iput-boolean p3, p0, Lpl/polidea/treeview/TreeNodeInfo;->withChildren:Z

    .line 38
    iput-boolean p4, p0, Lpl/polidea/treeview/TreeNodeInfo;->visible:Z

    .line 39
    iput-boolean p5, p0, Lpl/polidea/treeview/TreeNodeInfo;->expanded:Z

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Object;
    .locals 1

    .line 43
    iget-object v0, p0, Lpl/polidea/treeview/TreeNodeInfo;->id:Ljava/lang/Object;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 59
    iget v0, p0, Lpl/polidea/treeview/TreeNodeInfo;->level:I

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lpl/polidea/treeview/TreeNodeInfo;->expanded:Z

    return v0
.end method

.method public isWithChildren()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lpl/polidea/treeview/TreeNodeInfo;->withChildren:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TreeNodeInfo [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/polidea/treeview/TreeNodeInfo;->id:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lpl/polidea/treeview/TreeNodeInfo;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", withChildren="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lpl/polidea/treeview/TreeNodeInfo;->withChildren:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lpl/polidea/treeview/TreeNodeInfo;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", expanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lpl/polidea/treeview/TreeNodeInfo;->expanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
