.class public Lit/gmariotti/changelibs/library/internal/ChangeLog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bulletedList:Z

.field private rows:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lit/gmariotti/changelibs/library/internal/ChangeLog;->rows:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public addRow(Lit/gmariotti/changelibs/library/internal/ChangeLogRow;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 50
    iget-object v0, p0, Lit/gmariotti/changelibs/library/internal/ChangeLog;->rows:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lit/gmariotti/changelibs/library/internal/ChangeLog;->rows:Ljava/util/LinkedList;

    .line 51
    :cond_0
    iget-object v0, p0, Lit/gmariotti/changelibs/library/internal/ChangeLog;->rows:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public getRows()Ljava/util/LinkedList;
    .locals 1

    .line 91
    iget-object v0, p0, Lit/gmariotti/changelibs/library/internal/ChangeLog;->rows:Ljava/util/LinkedList;

    return-object v0
.end method

.method public setBulletedList(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLog;->bulletedList:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bulletedList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lit/gmariotti/changelibs/library/internal/ChangeLog;->bulletedList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLog;->rows:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;

    .line 70
    const-string v3, "row=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 75
    :cond_0
    const-string v1, "rows:none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
