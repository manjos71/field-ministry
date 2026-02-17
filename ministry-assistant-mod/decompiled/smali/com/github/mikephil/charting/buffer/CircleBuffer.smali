.class public Lcom/github/mikephil/charting/buffer/CircleBuffer;
.super Lcom/github/mikephil/charting/buffer/AbstractBuffer;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected addCircle(FF)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x2

    .line 16
    iput v1, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    aput p2, v0, v2

    return-void
.end method

.method public feed(Ljava/util/List;)V
    .locals 5

    .line 22
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

    .line 24
    iget v1, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->mFrom:I

    :goto_0
    if-ge v1, v0, :cond_0

    .line 26
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    .line 27
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iget v4, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->phaseY:F

    mul-float v2, v2, v4

    invoke-virtual {p0, v3, v2}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->addCircle(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->reset()V

    return-void
.end method
