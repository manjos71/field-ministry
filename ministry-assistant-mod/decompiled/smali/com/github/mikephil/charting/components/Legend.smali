.class public Lcom/github/mikephil/charting/components/Legend;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/Legend$LegendDirection;,
        Lcom/github/mikephil/charting/components/Legend$LegendForm;,
        Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    }
.end annotation


# instance fields
.field private mCalculatedLabelBreakPoints:[Ljava/lang/Boolean;

.field private mCalculatedLabelSizes:[Lcom/github/mikephil/charting/utils/FSize;

.field private mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

.field private mColors:[I

.field private mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

.field private mExtraColors:[I

.field private mExtraLabels:[Ljava/lang/String;

.field private mFormSize:F

.field private mFormToTextSpace:F

.field private mIsLegendCustom:Z

.field private mLabels:[Ljava/lang/String;

.field private mMaxSizePercent:F

.field public mNeededHeight:F

.field public mNeededWidth:F

.field private mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field private mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field private mStackSpace:F

.field public mTextHeightMax:F

.field public mTextWidthMax:F

.field private mWordWrapEnabled:Z

.field private mXEntrySpace:F

.field private mYEntrySpace:F


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 101
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 66
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 69
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 72
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/high16 v1, 0x41000000    # 8.0f

    .line 75
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    const/high16 v2, 0x40c00000    # 6.0f

    .line 80
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    const/4 v3, 0x0

    .line 85
    iput v3, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    const/high16 v4, 0x40a00000    # 5.0f

    .line 92
    iput v4, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    const/high16 v5, 0x40400000    # 3.0f

    .line 95
    iput v5, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    const v6, 0x3f733333    # 0.95f

    .line 98
    iput v6, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    .line 554
    iput v3, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 557
    iput v3, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 559
    iput v3, p0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 561
    iput v3, p0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 564
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    .line 617
    new-array v6, v0, [Lcom/github/mikephil/charting/utils/FSize;

    iput-object v6, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:[Lcom/github/mikephil/charting/utils/FSize;

    .line 618
    new-array v6, v0, [Ljava/lang/Boolean;

    iput-object v6, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:[Ljava/lang/Boolean;

    .line 619
    new-array v0, v0, [Lcom/github/mikephil/charting/utils/FSize;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    .line 103
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 104
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 105
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 106
    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 107
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    .line 108
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 109
    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    const/high16 v0, 0x40e00000    # 7.0f

    .line 110
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    return-void
.end method


# virtual methods
.method public calculateDimensions(Landroid/graphics/Paint;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 19

    move-object/from16 v0, p0

    .line 642
    iget-object v1, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->PIECHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object/from16 v14, p1

    goto/16 :goto_f

    .line 652
    :cond_1
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 761
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getFullWidth(Landroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 762
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryHeight(Landroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 763
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryWidth(Landroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 764
    iget v1, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iput v1, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    return-void

    .line 656
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v1, v1

    .line 657
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;)F

    move-result v2

    .line 658
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/utils/Utils;->getLineSpacing(Landroid/graphics/Paint;)F

    move-result v3

    iget v4, v0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    add-float/2addr v3, v4

    .line 659
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v4

    .line 662
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 663
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 664
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    const/16 v16, 0x1

    if-ge v11, v1, :cond_12

    .line 674
    iget-object v8, v0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    aget v8, v8, v11

    const/4 v10, -0x2

    if-eq v8, v10, :cond_4

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    .line 676
    :goto_2
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v13, v9, :cond_5

    const/4 v8, 0x0

    goto :goto_3

    .line 685
    :cond_5
    iget v8, v0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    add-float/2addr v8, v14

    .line 689
    :goto_3
    iget-object v10, v0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v10, v10, v11

    if-eqz v10, :cond_7

    move-object/from16 v14, p1

    .line 691
    invoke-static {v14, v10}, Lcom/github/mikephil/charting/utils/Utils;->calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v16, :cond_6

    .line 692
    iget v10, v0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    iget v9, v0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    add-float/2addr v9, v10

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    :goto_4
    add-float/2addr v8, v9

    .line 693
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/utils/FSize;

    iget v9, v9, Lcom/github/mikephil/charting/utils/FSize;->width:F

    add-float/2addr v8, v9

    goto :goto_6

    :cond_7
    move-object/from16 v14, p1

    .line 696
    new-instance v9, Lcom/github/mikephil/charting/utils/FSize;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v10}, Lcom/github/mikephil/charting/utils/FSize;-><init>(FF)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v16, :cond_8

    .line 697
    iget v10, v0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    :goto_5
    add-float/2addr v8, v10

    const/4 v9, -0x1

    if-ne v13, v9, :cond_9

    move v13, v11

    .line 705
    :cond_9
    :goto_6
    iget-object v9, v0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v9, v9, v11

    if-nez v9, :cond_a

    add-int/lit8 v9, v1, -0x1

    if-ne v11, v9, :cond_b

    :cond_a
    const/16 v17, 0x0

    goto :goto_7

    :cond_b
    move/from16 v18, v1

    const/4 v9, -0x1

    const/16 v17, 0x0

    goto :goto_d

    :goto_7
    cmpl-float v9, v15, v17

    if-nez v9, :cond_c

    const/4 v10, 0x0

    :goto_8
    move/from16 v18, v1

    goto :goto_9

    .line 707
    :cond_c
    iget v10, v0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    goto :goto_8

    .line 709
    :goto_9
    iget-boolean v1, v0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    if-eqz v1, :cond_d

    if-eqz v9, :cond_d

    sub-float v1, v4, v15

    add-float v9, v10, v8

    cmpl-float v1, v1, v9

    if-ltz v1, :cond_e

    :cond_d
    const/4 v9, -0x1

    goto :goto_b

    .line 722
    :cond_e
    new-instance v1, Lcom/github/mikephil/charting/utils/FSize;

    invoke-direct {v1, v15, v2}, Lcom/github/mikephil/charting/utils/FSize;-><init>(FF)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-static {v12, v15}, Ljava/lang/Math;->max(FF)F

    move-result v12

    const/4 v9, -0x1

    if-le v13, v9, :cond_f

    move v1, v13

    goto :goto_a

    :cond_f
    move v1, v11

    .line 726
    :goto_a
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v1, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v15, v8

    goto :goto_c

    :goto_b
    add-float/2addr v10, v8

    add-float/2addr v15, v10

    :goto_c
    add-int/lit8 v1, v18, -0x1

    if-ne v11, v1, :cond_10

    .line 733
    new-instance v1, Lcom/github/mikephil/charting/utils/FSize;

    invoke-direct {v1, v15, v2}, Lcom/github/mikephil/charting/utils/FSize;-><init>(FF)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    invoke-static {v12, v15}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 738
    :cond_10
    :goto_d
    iget-object v1, v0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v1, v1, v11

    if-eqz v1, :cond_11

    const/4 v13, -0x1

    :cond_11
    add-int/lit8 v11, v11, 0x1

    move v14, v8

    move/from16 v1, v18

    goto/16 :goto_1

    :cond_12
    move-object/from16 v14, p1

    .line 741
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/github/mikephil/charting/utils/FSize;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/github/mikephil/charting/utils/FSize;

    iput-object v1, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:[Lcom/github/mikephil/charting/utils/FSize;

    .line 743
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:[Ljava/lang/Boolean;

    .line 745
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/github/mikephil/charting/utils/FSize;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/github/mikephil/charting/utils/FSize;

    iput-object v1, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    .line 748
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryWidth(Landroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 749
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryHeight(Landroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 750
    iput v12, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 751
    iget-object v1, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    array-length v4, v1

    int-to-float v4, v4

    mul-float v2, v2, v4

    array-length v4, v1

    if-nez v4, :cond_13

    const/4 v8, 0x0

    goto :goto_e

    :cond_13
    array-length v1, v1

    add-int/lit8 v8, v1, -0x1

    :goto_e
    int-to-float v1, v8

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    iput v2, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    return-void

    .line 647
    :goto_f
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryWidth(Landroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 648
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getFullHeight(Landroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 649
    iget v1, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    iput v1, v0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 650
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryHeight(Landroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    return-void
.end method

.method public getCalculatedLabelBreakPoints()[Ljava/lang/Boolean;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:[Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCalculatedLabelSizes()[Lcom/github/mikephil/charting/utils/FSize;
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:[Lcom/github/mikephil/charting/utils/FSize;

    return-object v0
.end method

.method public getCalculatedLineSizes()[Lcom/github/mikephil/charting/utils/FSize;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    return-object v0
.end method

.method public getColors()[I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    return-object v0
.end method

.method public getDirection()Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    return-object v0
.end method

.method public getExtraColors()[I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraColors:[I

    return-object v0
.end method

.method public getExtraLabels()[Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraLabels:[Ljava/lang/String;

    return-object v0
.end method

.method public getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object v0
.end method

.method public getFormSize()F
    .locals 1

    .line 417
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    return v0
.end method

.method public getFormToTextSpace()F
    .locals 1

    .line 465
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    return v0
.end method

.method public getFullHeight(Landroid/graphics/Paint;)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 538
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 541
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 543
    invoke-static {p1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 545
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 546
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    add-float/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getFullWidth(Landroid/graphics/Paint;)F
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 505
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 508
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 511
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    aget v2, v2, v1

    const/4 v4, -0x2

    if-eq v2, v4, :cond_0

    .line 512
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    iget v4, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    add-float/2addr v2, v4

    add-float/2addr v0, v2

    .line 514
    :cond_0
    invoke-static {p1, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 516
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 517
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    :goto_1
    add-float/2addr v0, v2

    goto :goto_2

    .line 519
    :cond_1
    iget v3, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    add-float/2addr v0, v3

    .line 520
    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 521
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public getLabels()[Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSizePercent()F
    .locals 1

    .line 600
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    return v0
.end method

.method public getMaximumEntryHeight(Landroid/graphics/Paint;)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 208
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 210
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 212
    invoke-static {p1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getMaximumEntryWidth(Landroid/graphics/Paint;)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 184
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 186
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 188
    invoke-static {p1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_1
    iget p1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    add-float/2addr v0, p1

    return v0
.end method

.method public getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    return-object v0
.end method

.method public getStackSpace()F
    .locals 1

    .line 484
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    return v0
.end method

.method public getXEntrySpace()F
    .locals 1

    .line 427
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    return v0
.end method

.method public getYEntrySpace()F
    .locals 1

    .line 446
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    return v0
.end method

.method public isLegendCustom()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    return v0
.end method

.method public setComputedColors(Ljava/util/List;)V
    .locals 0

    .line 162
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertIntegers(Ljava/util/List;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    return-void
.end method

.method public setComputedLabels(Ljava/util/List;)V
    .locals 0

    .line 170
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    return-void
.end method

.method public setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-void
.end method
