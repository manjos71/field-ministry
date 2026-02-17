.class public abstract Lcom/github/mikephil/charting/renderer/Renderer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mMaxX:I

.field protected mMinX:I

.field protected mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mMinX:I

    .line 23
    iput v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mMaxX:I

    .line 26
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    return-void
.end method


# virtual methods
.method public calcXBounds(Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;I)V
    .locals 4

    .line 55
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getLowestVisibleXIndex()I

    move-result v0

    .line 56
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getHighestVisibleXIndex()I

    move-result v1

    .line 58
    rem-int v2, v0, p2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 60
    :goto_0
    div-int/2addr v0, p2

    mul-int v0, v0, p2

    sub-int/2addr v0, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mMinX:I

    .line 61
    div-int/2addr v1, p2

    mul-int v1, v1, p2

    add-int/2addr v1, p2

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/ChartInterface;->getXChartMax()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mMaxX:I

    return-void
.end method
