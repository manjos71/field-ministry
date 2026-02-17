.class public Lit/gmariotti/changelibs/library/internal/ChangeLogRow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bulletedList:Z

.field protected changeDate:Ljava/lang/String;

.field private changeText:Ljava/lang/String;

.field private changeTextTitle:Ljava/lang/String;

.field protected header:Z

.field private type:I

.field protected versionCode:I

.field protected versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeText()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->changeText:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeText(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->getChangeText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 148
    :cond_0
    iget v0, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->type:I

    const/4 v1, 0x1

    const-string v2, ">"

    const-string v3, "\\]"

    const-string v4, "<"

    const-string v5, "\\["

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string p1, ""

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lit/gmariotti/changelibs/R$string;->changelog_row_prefix_improvement:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lit/gmariotti/changelibs/R$string;->changelog_row_prefix_bug:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->changeText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isBulletedList()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->bulletedList:Z

    return v0
.end method

.method public isHeader()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->header:Z

    return v0
.end method

.method public parseChangeText(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 98
    const-string v0, "\\["

    const-string v1, "<"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\]"

    const-string v1, ">"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->setChangeText(Ljava/lang/String;)V

    return-void
.end method

.method public setBulletedList(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->bulletedList:Z

    return-void
.end method

.method public setChangeDate(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->changeDate:Ljava/lang/String;

    return-void
.end method

.method public setChangeText(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->changeText:Ljava/lang/String;

    return-void
.end method

.method public setChangeTextTitle(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->changeTextTitle:Ljava/lang/String;

    return-void
.end method

.method public setHeader(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->header:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 204
    iput p1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->type:I

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .line 178
    iput p1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->versionName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "header="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->header:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "versionName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "versionCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bulletedList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->bulletedList:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->changeText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
