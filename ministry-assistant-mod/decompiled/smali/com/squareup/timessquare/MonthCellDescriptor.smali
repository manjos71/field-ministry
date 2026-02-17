.class Lcom/squareup/timessquare/MonthCellDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;
    }
.end annotation


# instance fields
.field private final date:Ljava/util/Date;

.field private final isCurrentMonth:Z

.field private final isSelectable:Z

.field private isSelected:Z

.field private final isToday:Z

.field private rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

.field private showCheck:Z

.field private showDot:Z

.field private text:Ljava/lang/String;

.field private final value:I


# direct methods
.method constructor <init>(Ljava/util/Date;ZZZZILcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->date:Ljava/util/Date;

    .line 28
    iput-boolean p2, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth:Z

    .line 29
    iput-boolean p3, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable:Z

    .line 30
    iput-boolean p4, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelected:Z

    .line 31
    iput-boolean p5, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isToday:Z

    .line 32
    iput p6, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->value:I

    .line 33
    iput-object p7, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getRangeState()Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    return-object v0
.end method

.method public getShowCheck()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->showCheck:Z

    return v0
.end method

.method public getShowDot()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->showDot:Z

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->value:I

    return v0
.end method

.method public isCurrentMonth()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelected:Z

    return v0
.end method

.method public isToday()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isToday:Z

    return v0
.end method

.method public setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelected:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->text:Ljava/lang/String;

    return-void
.end method

.method public showCheck(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->showCheck:Z

    return-void
.end method

.method public showDot(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->showDot:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MonthCellDescriptor{date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCurrentMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isToday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isToday:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSelectable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rangeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
