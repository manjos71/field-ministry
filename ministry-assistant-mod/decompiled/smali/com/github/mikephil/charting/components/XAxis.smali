.class public Lcom/github/mikephil/charting/components/XAxis;
.super Lcom/github/mikephil/charting/components/AxisBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;
    }
.end annotation


# instance fields
.field private mAvoidFirstLastClipping:Z

.field public mAxisLabelModulus:I

.field private mIsAxisModulusCustom:Z

.field public mLabelHeight:I

.field public mLabelWidth:I

.field private mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

.field private mSpaceBetweenLabels:I

.field protected mValues:Ljava/util/List;

.field protected mXAxisValueFormatter:Lcom/github/mikephil/charting/formatter/XAxisValueFormatter;

.field public mYAxisLabelModulus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mValues:Ljava/util/List;

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mLabelWidth:I

    .line 32
    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mLabelHeight:I

    const/4 v1, 0x4

    .line 38
    iput v1, p0, Lcom/github/mikephil/charting/components/XAxis;->mSpaceBetweenLabels:I

    .line 45
    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mAxisLabelModulus:I

    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/XAxis;->mIsAxisModulusCustom:Z

    .line 58
    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mYAxisLabelModulus:I

    .line 64
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/XAxis;->mAvoidFirstLastClipping:Z

    .line 69
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultXAxisAxisValueFormatter;

    invoke-direct {v0}, Lcom/github/mikephil/charting/formatter/DefaultXAxisAxisValueFormatter;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mXAxisValueFormatter:Lcom/github/mikephil/charting/formatter/XAxisValueFormatter;

    .line 72
    sget-object v0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    return-void
.end method


# virtual methods
.method public getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    return-object v0
.end method

.method public getSpaceBetweenLabels()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mSpaceBetweenLabels:I

    return v0
.end method

.method public getValueFormatter()Lcom/github/mikephil/charting/formatter/XAxisValueFormatter;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mXAxisValueFormatter:Lcom/github/mikephil/charting/formatter/XAxisValueFormatter;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mValues:Ljava/util/List;

    return-object v0
.end method

.method public isAvoidFirstLastClippingEnabled()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mAvoidFirstLastClipping:Z

    return v0
.end method

.method public isAxisModulusCustom()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mIsAxisModulusCustom:Z

    return v0
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/github/mikephil/charting/components/XAxis;->mValues:Ljava/util/List;

    return-void
.end method
