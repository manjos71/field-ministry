.class public Lcom/github/mikephil/charting/data/Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mData:Ljava/lang/Object;

.field private mVal:F

.field private mXIndex:I


# direct methods
.method public constructor <init>(FI)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/github/mikephil/charting/data/Entry;->mData:Ljava/lang/Object;

    .line 30
    iput p1, p0, Lcom/github/mikephil/charting/data/Entry;->mVal:F

    .line 31
    iput p2, p0, Lcom/github/mikephil/charting/data/Entry;->mXIndex:I

    return-void
.end method


# virtual methods
.method public equalTo(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 127
    :cond_0
    iget-object v1, p1, Lcom/github/mikephil/charting/data/Entry;->mData:Ljava/lang/Object;

    iget-object v2, p0, Lcom/github/mikephil/charting/data/Entry;->mData:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    return v0

    .line 129
    :cond_1
    iget v1, p1, Lcom/github/mikephil/charting/data/Entry;->mXIndex:I

    iget v2, p0, Lcom/github/mikephil/charting/data/Entry;->mXIndex:I

    if-eq v1, v2, :cond_2

    return v0

    .line 132
    :cond_2
    iget p1, p1, Lcom/github/mikephil/charting/data/Entry;->mVal:F

    iget v1, p0, Lcom/github/mikephil/charting/data/Entry;->mVal:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public getVal()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/github/mikephil/charting/data/Entry;->mVal:F

    return v0
.end method

.method public getXIndex()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/github/mikephil/charting/data/Entry;->mXIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry, xIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/mikephil/charting/data/Entry;->mXIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " val (sum): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
