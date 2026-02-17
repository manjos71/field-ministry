.class public abstract Lcom/github/mikephil/charting/data/DataSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field protected mColors:Ljava/util/List;

.field protected mDrawValues:Z

.field protected mHighlightEnabled:Z

.field private mLabel:Ljava/lang/String;

.field protected mLastEnd:I

.field protected mLastStart:I

.field private mValueColor:I

.field protected transient mValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

.field private mValueTextSize:F

.field private mValueTypeface:Landroid/graphics/Typeface;

.field private mVisible:Z

.field protected mYMax:F

.field protected mYMin:F

.field protected mYVals:Ljava/util/List;

.field private mYValueSum:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    .line 31
    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 37
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 40
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastStart:I

    .line 46
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastEnd:I

    .line 49
    const-string v0, "DataSet"

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mLabel:Ljava/lang/String;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mVisible:Z

    .line 55
    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mDrawValues:Z

    const/high16 v1, -0x1000000

    .line 58
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueColor:I

    const/high16 v1, 0x41880000    # 17.0f

    .line 61
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueTextSize:F

    .line 70
    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 73
    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mHighlightEnabled:Z

    .line 85
    iput-object p2, p0, Lcom/github/mikephil/charting/data/DataSet;->mLabel:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    if-nez p1, :cond_0

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    .line 91
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    const/16 p2, 0xea

    const/16 v0, 0xff

    const/16 v1, 0x8c

    .line 94
    invoke-static {v1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastStart:I

    iget p2, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastEnd:I

    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax(II)V

    .line 97
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/DataSet;->calcYValueSum()V

    return-void
.end method

.method private calcYValueSum()V
    .locals 3

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    const/4 v0, 0x0

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    if-eqz v1, :cond_0

    .line 160
    iget v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v2, v1

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected calcMinMax(II)V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    if-lt p2, v0, :cond_2

    :cond_1
    add-int/lit8 p2, v0, -0x1

    .line 124
    :cond_2
    iput p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastStart:I

    .line 125
    iput p2, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastEnd:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 127
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    const v1, -0x800001

    .line 128
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    :goto_0
    if-gt p1, p2, :cond_5

    .line 132
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    if-eqz v1, :cond_4

    .line 134
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_4

    .line 136
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 137
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 139
    :cond_3
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 140
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 144
    :cond_5
    iget p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 145
    iput p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 146
    iput p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    :cond_6
    :goto_1
    return-void
.end method

.method public getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object v0
.end method

.method public getColor()I
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColor(I)I
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getColors()Ljava/util/List;
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    return-object v0
.end method

.method public getEntryCount()I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .line 212
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/Entry;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEntryIndex(I)I
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-gt v1, v0, :cond_3

    add-int v2, v0, v1

    .line 235
    div-int/lit8 v2, v2, 0x2

    .line 237
    iget-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    if-ne p1, v3, :cond_1

    :goto_1
    if-lez v2, :cond_0

    .line 238
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v0

    if-ne v0, p1, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    return v2

    .line 244
    :cond_1
    iget-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    if-le p1, v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I
    .locals 2

    const/4 v0, 0x0

    .line 727
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/Entry;->equalTo(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    if-nez v0, :cond_0

    .line 759
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    :cond_0
    return-object v0
.end method

.method public getValueTextColor()I
    .locals 1

    .line 788
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueColor:I

    return v0
.end method

.method public getValueTextSize()F
    .locals 1

    .line 819
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueTextSize:F

    return v0
.end method

.method public getValueTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getYMax()F
    .locals 1

    .line 335
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    return v0
.end method

.method public getYMin()F
    .locals 1

    .line 326
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    return v0
.end method

.method public getYValForXIndex(I)F
    .locals 2

    .line 192
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result p1

    return p1

    :cond_0
    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1
.end method

.method public getYVals()Ljava/util/List;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    return-object v0
.end method

.method public getYValueSum()F
    .locals 1

    .line 317
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    return v0
.end method

.method public isDrawValuesEnabled()Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mDrawValues:Z

    return v0
.end method

.method public isHighlightEnabled()Z
    .locals 1

    .line 715
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mHighlightEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mVisible:Z

    return v0
.end method

.method public needsDefaultFormatter()Z
    .locals 2

    .line 770
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 772
    :cond_0
    instance-of v0, v0, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public resetColors()V
    .locals 1

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 658
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->resetColors()V

    .line 659
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDrawValues(Z)V
    .locals 0

    .line 460
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mDrawValues:Z

    return-void
.end method

.method public setHighlightEnabled(Z)V
    .locals 0

    .line 706
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mHighlightEnabled:Z

    return-void
.end method

.method public setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 749
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 3

    .line 390
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataSet, label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mLabel:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", entries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 375
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 376
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->toSimpleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 377
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
