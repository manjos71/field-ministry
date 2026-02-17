.class public Lcom/github/mikephil/charting/highlight/ChartHighlighter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    return-void
.end method


# virtual methods
.method protected getDataSetIndex(IFF)I
    .locals 3

    .line 72
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getSelectionDetailsAtIndex(I)Ljava/util/List;

    move-result-object p1

    .line 74
    sget-object p2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-static {p1, p3, p2}, Lcom/github/mikephil/charting/utils/Utils;->getMinimumDistance(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    .line 75
    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-static {p1, p3, v1}, Lcom/github/mikephil/charting/utils/Utils;->getMinimumDistance(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 79
    :goto_0
    invoke-static {p1, p3, p2}, Lcom/github/mikephil/charting/utils/Utils;->getClosestDataSetIndex(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)I

    move-result p1

    return p1
.end method

.method public getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 3

    .line 33
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getXIndex(F)I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x7fffffff

    if-ne v0, v2, :cond_0

    return-object v1

    .line 37
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getDataSetIndex(IFF)I

    move-result p1

    if-ne p1, v2, :cond_1

    return-object v1

    .line 41
    :cond_1
    new-instance p2, Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-direct {p2, v0, p1}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(II)V

    return-object p2
.end method

.method protected getSelectionDetailsAtIndex(I)Ljava/util/List;
    .locals 7

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 94
    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 96
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 98
    iget-object v3, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/DataSet;->isHighlightEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/data/DataSet;->getYValForXIndex(I)F

    move-result v4

    const/high16 v5, 0x7fc00000    # Float.NaN

    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    .line 109
    aput v4, v1, v5

    .line 111
    iget-object v4, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 113
    aget v4, v1, v5

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_2

    .line 114
    new-instance v4, Lcom/github/mikephil/charting/utils/SelectionDetail;

    aget v5, v1, v5

    invoke-direct {v4, v5, v2, v3}, Lcom/github/mikephil/charting/utils/SelectionDetail;-><init>(FILcom/github/mikephil/charting/data/DataSet;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected getXIndex(F)I
    .locals 3

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 54
    aput p1, v0, v1

    .line 57
    iget-object p1, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-interface {p1, v2}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 59
    aget p1, v0, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method
