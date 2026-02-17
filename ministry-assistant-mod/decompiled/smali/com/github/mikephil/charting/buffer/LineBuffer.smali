.class public Lcom/github/mikephil/charting/buffer/LineBuffer;
.super Lcom/github/mikephil/charting/buffer/AbstractBuffer;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    const/4 p1, 0x4

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public feed(Ljava/util/List;)V
    .locals 5

    .line 45
    iget v0, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->mFrom:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->mFrom:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    iget v2, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->phaseY:F

    mul-float v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/buffer/LineBuffer;->moveTo(FF)V

    .line 47
    iget v0, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->mTo:I

    iget v1, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->mFrom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->phaseX:F

    mul-float v0, v0, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 48
    iget v1, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->mFrom:I

    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    .line 52
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    .line 53
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iget v4, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->phaseY:F

    mul-float v2, v2, v4

    invoke-virtual {p0, v3, v2}, Lcom/github/mikephil/charting/buffer/LineBuffer;->lineTo(FF)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->reset()V

    return-void
.end method

.method public lineTo(FF)V
    .locals 5

    .line 29
    iget v0, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 30
    iget-object v2, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    aput p1, v2, v0

    add-int/2addr v0, v1

    .line 31
    iput v0, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    aput p2, v2, v3

    return-void

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    add-int/lit8 v2, v0, -0x2

    aget v2, v1, v2

    add-int/lit8 v3, v0, -0x1

    .line 35
    aget v3, v1, v3

    add-int/lit8 v4, v0, 0x1

    .line 36
    iput v4, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    aput v2, v1, v0

    add-int/lit8 v2, v0, 0x2

    .line 37
    iput v2, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    aput v3, v1, v4

    add-int/lit8 v3, v0, 0x3

    .line 38
    iput v3, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    aput p1, v1, v2

    add-int/lit8 v0, v0, 0x4

    .line 39
    iput v0, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    aput p2, v1, v3

    return-void
.end method

.method public moveTo(FF)V
    .locals 4

    .line 16
    iget v0, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    if-eqz v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    aput p1, v1, v0

    add-int/lit8 v3, v0, 0x2

    .line 20
    iput v3, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    aput p2, v1, v2

    .line 23
    aput p1, v1, v3

    add-int/lit8 v0, v0, 0x3

    .line 24
    aput p2, v1, v0

    return-void
.end method
