.class public Lcom/github/mikephil/charting/renderer/LineChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;
.source "SourceFile"


# instance fields
.field protected cubicFillPath:Landroid/graphics/Path;

.field protected cubicPath:Landroid/graphics/Path;

.field protected mBitmapCanvas:Landroid/graphics/Canvas;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

.field protected mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

.field protected mCirclePaintInner:Landroid/graphics/Paint;

.field protected mDrawBitmap:Landroid/graphics/Bitmap;

.field protected mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0

    .line 51
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 42
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 43
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    .line 52
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    .line 54
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    .line 55
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private generateFilledPath(Ljava/util/List;FII)Landroid/graphics/Path;
    .locals 6

    .line 373
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    .line 376
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 377
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 378
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    mul-float v4, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, p3, 0x1

    sub-int/2addr p4, p3

    int-to-float p4, p4

    mul-float p4, p4, v0

    int-to-float p3, p3

    add-float/2addr p4, p3

    float-to-double p3, p4

    .line 381
    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    :goto_0
    if-ge v3, v0, :cond_0

    .line 383
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    .line 384
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    mul-float v4, v4, v1

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p3, p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 p4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 394
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    return-object v2
.end method


# virtual methods
.method protected drawCircles(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 463
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 465
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v2

    .line 466
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v3

    .line 468
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 470
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 472
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 474
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/DataSet;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawCirclesEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_1
    move/from16 v16, v2

    goto/16 :goto_4

    .line 477
    :cond_1
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleHoleColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v8

    .line 480
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/DataSet;->getYVals()Ljava/util/List;

    move-result-object v9

    .line 482
    iget v10, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mMinX:I

    if-gez v10, :cond_2

    const/4 v10, 0x0

    :cond_2
    invoke-virtual {v7, v10}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    .line 483
    iget v11, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mMaxX:I

    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    .line 485
    invoke-virtual {v7, v10}, Lcom/github/mikephil/charting/data/DataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v10

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 486
    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/DataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 488
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

    aget-object v12, v12, v6

    .line 489
    invoke-virtual {v12, v2, v3}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->setPhases(FF)V

    .line 490
    invoke-virtual {v12, v10}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->limitFrom(I)V

    .line 491
    invoke-virtual {v12, v11}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->limitTo(I)V

    .line 492
    invoke-virtual {v12, v9}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->feed(Ljava/util/List;)V

    .line 494
    iget-object v9, v12, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 496
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleSize()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-int/2addr v11, v10

    int-to-float v9, v11

    mul-float v9, v9, v2

    int-to-float v11, v10

    add-float/2addr v9, v11

    float-to-double v13, v9

    .line 498
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v9, v13

    mul-int/lit8 v9, v9, 0x2

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_0

    .line 500
    iget-object v13, v12, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    aget v14, v13, v11

    add-int/lit8 v15, v11, 0x1

    .line 501
    aget v13, v13, v15

    .line 503
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v15, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v15

    if-nez v15, :cond_3

    goto :goto_1

    .line 508
    :cond_3
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v15, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v15, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v15

    if-nez v15, :cond_5

    :cond_4
    move/from16 v16, v2

    goto :goto_3

    .line 511
    :cond_5
    div-int/lit8 v15, v11, 0x2

    add-int/2addr v15, v10

    invoke-virtual {v7, v15}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleColor(I)I

    move-result v15

    .line 513
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 515
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleSize()F

    move-result v5

    move/from16 v16, v2

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v13, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 518
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawCircleHoleEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eq v15, v2, :cond_6

    .line 520
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v13, v8, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x2

    move/from16 v2, v16

    const/4 v5, 0x0

    goto :goto_2

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v16

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method protected drawCubic(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 136
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    .line 138
    iget v4, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mMinX:I

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    .line 139
    iget v5, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mMaxX:I

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    .line 141
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/DataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 142
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/data/DataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v5

    const/4 v8, 0x1

    add-int/2addr v5, v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 144
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v9

    .line 145
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v10

    .line 147
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineDataSet;->getCubicIntensity()F

    move-result v11

    .line 149
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v9

    int-to-float v9, v6

    add-float/2addr v5, v9

    float-to-double v12, v5

    .line 151
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v5, v12

    sub-int v9, v5, v6

    const/4 v12, 0x2

    if-lt v9, v12, :cond_3

    .line 160
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/Entry;

    .line 161
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/Entry;

    .line 162
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/github/mikephil/charting/data/Entry;

    add-int/2addr v6, v8

    .line 163
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/mikephil/charting/data/Entry;

    .line 166
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v16

    const/16 v17, 0x2

    mul-float v12, v16, v10

    invoke-virtual {v15, v7, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 168
    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v12

    sub-int/2addr v7, v12

    int-to-float v7, v7

    mul-float v7, v7, v11

    .line 169
    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v12

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v15

    sub-float/2addr v12, v15

    mul-float v12, v12, v11

    .line 171
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v15

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    mul-float v15, v15, v11

    .line 172
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v14

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v16

    sub-float v14, v14, v16

    mul-float v14, v14, v11

    const/16 v16, 0x1

    .line 175
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    int-to-float v1, v1

    add-float v19, v1, v7

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    add-float/2addr v1, v12

    mul-float v20, v1, v10

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    int-to-float v1, v1

    sub-float v21, v1, v15

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    sub-float/2addr v1, v14

    mul-float v22, v1, v10

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v7

    mul-float v24, v7, v10

    move/from16 v23, v1

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 179
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-ge v6, v1, :cond_1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v6, -0x2

    .line 181
    :goto_1
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v8, v6, -0x1

    .line 182
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/Entry;

    .line 183
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v6, v6, 0x1

    .line 184
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/data/Entry;

    .line 186
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v13

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    mul-float v13, v13, v11

    .line 187
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v14

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v7

    sub-float/2addr v14, v7

    mul-float v14, v14, v11

    .line 188
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v15

    sub-int/2addr v7, v15

    int-to-float v7, v7

    mul-float v7, v7, v11

    .line 189
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v12

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v15

    sub-float/2addr v12, v15

    mul-float v12, v12, v11

    .line 191
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    move/from16 v25, v1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    int-to-float v1, v1

    add-float v19, v1, v13

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    add-float/2addr v1, v14

    mul-float v20, v1, v10

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    int-to-float v1, v1

    sub-float v21, v1, v7

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    sub-float/2addr v1, v12

    mul-float v22, v1, v10

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v7

    mul-float v24, v7, v10

    move/from16 v23, v1

    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v1, v25

    const/16 v16, 0x1

    goto/16 :goto_0

    .line 196
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    if-le v5, v1, :cond_3

    .line 198
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x3

    if-lt v1, v6, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 200
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/Entry;

    .line 201
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    .line 204
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, v11

    .line 205
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v8

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    sub-float/2addr v8, v1

    mul-float v8, v8, v11

    .line 206
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v9

    sub-int/2addr v1, v9

    int-to-float v1, v1

    mul-float v1, v1, v11

    .line 207
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v9

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v12

    sub-float/2addr v9, v12

    mul-float v9, v9, v11

    .line 210
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v7

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    add-float/2addr v6, v8

    mul-float v13, v6, v10

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v6

    int-to-float v6, v6

    sub-float v14, v6, v1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    sub-float/2addr v1, v9

    mul-float v15, v1, v10

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    mul-float v17, v2, v10

    move/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 217
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->isDrawFilledEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 220
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 222
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    move-object v1, v4

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    add-int/2addr v5, v1

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCubicFill(Lcom/github/mikephil/charting/data/LineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;II)V

    .line 226
    :cond_4
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/DataSet;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 232
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 234
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method protected drawCubicFill(Lcom/github/mikephil/charting/data/LineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;II)V
    .locals 2

    .line 240
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineDataSet;->getFillFormatter()Lcom/github/mikephil/charting/formatter/FillFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v0, p1, v1}, Lcom/github/mikephil/charting/formatter/FillFormatter;->getFillLinePosition(Lcom/github/mikephil/charting/data/LineDataSet;Lcom/github/mikephil/charting/interfaces/LineDataProvider;)F

    move-result v0

    add-int/lit8 p5, p5, -0x1

    int-to-float p5, p5

    .line 243
    invoke-virtual {p2, p5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float p4, p4

    .line 244
    invoke-virtual {p2, p4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 245
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 247
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->getFillColor()I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->getFillAlpha()I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 253
    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 254
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object p3, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 256
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public drawData(Landroid/graphics/Canvas;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v0

    float-to-int v0, v0

    .line 77
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v1

    float-to-int v1, v1

    .line 79
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    if-lez v0, :cond_4

    if-lez v1, :cond_4

    .line 85
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 86
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 97
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 98
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;)V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;)V
    .locals 3

    .line 106
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/DataSet;->getYVals()Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 115
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawCubicEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCubic(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawLinear(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;)V

    .line 124
    :goto_0
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0

    .line 458
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCircles(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 530
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 532
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/LineDataSet;

    if-eqz v2, :cond_3

    .line 535
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->isHighlightEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 538
    :cond_0
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v3

    int-to-float v4, v3

    .line 541
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/ChartInterface;->getXChartMax()F

    move-result v5

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v6

    mul-float v5, v5, v6

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    goto :goto_1

    .line 544
    :cond_1
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/DataSet;->getYValForXIndex(I)F

    move-result v3

    const/high16 v5, 0x7fc00000    # Float.NaN

    cmpl-float v5, v3, v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 548
    :cond_2
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v5

    mul-float v3, v3, v5

    const/4 v5, 0x2

    .line 552
    new-array v5, v5, [F

    aput v4, v5, v0

    const/4 v4, 0x1

    aput v3, v5, v4

    .line 556
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 559
    invoke-virtual {p0, p1, v5, v2}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;->drawHighlightLines(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected drawLinear(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    .line 268
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/ChartData;->getIndexOfDataSet(Lcom/github/mikephil/charting/data/DataSet;)I

    move-result v1

    .line 270
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    .line 272
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v3

    .line 273
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    .line 275
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 280
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->isDashedLineEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 281
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    move-object v7, v5

    goto :goto_0

    :cond_0
    move-object/from16 v7, p1

    .line 286
    :goto_0
    iget v5, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mMinX:I

    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    .line 287
    iget v8, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mMaxX:I

    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    .line 289
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/DataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v5

    const/4 v9, 0x0

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 290
    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/data/DataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v8

    const/4 v10, 0x1

    add-int/2addr v8, v10

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    sub-int v8, v13, v5

    mul-int/lit8 v8, v8, 0x4

    add-int/lit8 v14, v8, -0x4

    .line 294
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    aget-object v1, v8, v1

    .line 295
    invoke-virtual {v1, v3, v4}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->setPhases(FF)V

    .line 296
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->limitFrom(I)V

    .line 297
    invoke-virtual {v1, v13}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->limitTo(I)V

    move-object/from16 v3, p3

    .line 298
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/buffer/LineBuffer;->feed(Ljava/util/List;)V

    .line 300
    iget-object v4, v1, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    invoke-virtual {v6, v4}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 303
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getColors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v10, :cond_5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v14, :cond_6

    .line 307
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v9, v1, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_3

    .line 312
    :cond_1
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v9, v1, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    add-int/lit8 v10, v4, 0x2

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v9, v1, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    add-int/lit8 v11, v4, 0x1

    aget v9, v9, v11

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v9, v1, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    add-int/lit8 v12, v4, 0x3

    aget v9, v9, v12

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v9, v1, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    aget v9, v9, v11

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v9, v1, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    add-int/lit8 v12, v4, 0x3

    aget v9, v9, v12

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    .line 320
    :cond_3
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v9, v4, 0x4

    add-int/2addr v9, v5

    invoke-virtual {v2, v9}, Lcom/github/mikephil/charting/data/DataSet;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    iget-object v8, v1, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    move-object v9, v8

    aget v8, v9, v4

    aget v11, v9, v11

    aget v10, v9, v10

    add-int/lit8 v12, v4, 0x3

    aget v9, v9, v12

    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move v15, v11

    move v11, v9

    move v9, v15

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 328
    :cond_5
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getColor()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    iget-object v1, v1, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v9, v14, v4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 335
    :cond_6
    :goto_3
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 338
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->isDrawFilledEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    move-object/from16 v1, p1

    move v4, v5

    move v5, v13

    .line 339
    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawLinearFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;IILcom/github/mikephil/charting/utils/Transformer;)V

    :cond_7
    return-void
.end method

.method protected drawLinearFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;IILcom/github/mikephil/charting/utils/Transformer;)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 349
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->getFillAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 353
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getFillFormatter()Lcom/github/mikephil/charting/formatter/FillFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v0, p2, v1}, Lcom/github/mikephil/charting/formatter/FillFormatter;->getFillLinePosition(Lcom/github/mikephil/charting/data/LineDataSet;Lcom/github/mikephil/charting/interfaces/LineDataProvider;)F

    move-result p2

    invoke-direct {p0, p3, p2, p4, p5}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->generateFilledPath(Ljava/util/List;FII)Landroid/graphics/Path;

    move-result-object p2

    .line 357
    invoke-virtual {p6, p2}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 359
    iget-object p3, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 362
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 402
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getYValCount()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getMaxVisibleCount()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v3

    mul-float v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    .line 405
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 407
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_6

    .line 409
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 411
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/DataSet;->isDrawValuesEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 415
    :cond_0
    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/renderer/DataRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V

    .line 417
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v11

    .line 420
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleSize()F

    move-result v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 422
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawCirclesEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 423
    div-int/lit8 v1, v1, 0x2

    .line 425
    :cond_1
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/DataSet;->getYVals()Ljava/util/List;

    move-result-object v12

    .line 427
    iget v2, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mMinX:I

    invoke-virtual {v10, v2}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    .line 428
    iget v3, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mMaxX:I

    invoke-virtual {v10, v3}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    .line 430
    invoke-virtual {v10, v2}, Lcom/github/mikephil/charting/data/DataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 431
    invoke-virtual {v10, v3}, Lcom/github/mikephil/charting/data/DataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 433
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v13

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v14

    invoke-virtual/range {v11 .. v16}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesLine(Ljava/util/List;FFII)[F

    move-result-object v11

    const/4 v13, 0x0

    .line 436
    :goto_1
    array-length v2, v11

    if-ge v13, v2, :cond_5

    .line 438
    aget v6, v11, v13

    add-int/lit8 v2, v13, 0x1

    .line 439
    aget v2, v11, v2

    .line 441
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 444
    :cond_2
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v14, v1

    goto :goto_2

    .line 447
    :cond_4
    div-int/lit8 v3, v13, 0x2

    add-int/2addr v3, v15

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    move v3, v2

    .line 449
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/DataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v2

    move v7, v3

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    int-to-float v14, v1

    sub-float/2addr v7, v14

    move v14, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/ValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFF)V

    :goto_2
    add-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    move v1, v14

    goto :goto_1

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public initBuffers()V
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v1

    new-array v1, v1, [Lcom/github/mikephil/charting/buffer/LineBuffer;

    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    .line 64
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v1

    new-array v1, v1, [Lcom/github/mikephil/charting/buffer/CircleBuffer;

    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

    const/4 v1, 0x0

    .line 66
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 67
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 68
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/LineBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, -0x4

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/LineBuffer;-><init>(I)V

    aput-object v4, v3, v1

    .line 69
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/CircleBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v4, v2}, Lcom/github/mikephil/charting/buffer/CircleBuffer;-><init>(I)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
