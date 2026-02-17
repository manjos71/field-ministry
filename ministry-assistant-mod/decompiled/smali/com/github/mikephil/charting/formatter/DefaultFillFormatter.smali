.class public Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/FillFormatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFillLinePosition(Lcom/github/mikephil/charting/data/LineDataSet;Lcom/github/mikephil/charting/interfaces/LineDataProvider;)F
    .locals 5

    .line 19
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/ChartInterface;->getYChartMax()F

    move-result v0

    .line 20
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/ChartInterface;->getYChartMin()F

    move-result v1

    .line 22
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    return v4

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getAxis(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/YAxis;->isStartAtZeroEnabled()Z

    move-result p2

    if-nez p2, :cond_4

    .line 32
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ChartData;->getYMax()F

    move-result p2

    cmpl-float p2, p2, v4

    if-lez p2, :cond_1

    const/4 v0, 0x0

    .line 36
    :cond_1
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ChartData;->getYMin()F

    move-result p2

    cmpg-float p2, p2, v4

    if-gez p2, :cond_2

    const/4 v1, 0x0

    .line 41
    :cond_2
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result p1

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    return v4
.end method
