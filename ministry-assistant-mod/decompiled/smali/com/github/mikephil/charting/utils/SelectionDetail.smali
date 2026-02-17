.class public Lcom/github/mikephil/charting/utils/SelectionDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dataSet:Lcom/github/mikephil/charting/data/DataSet;

.field public dataSetIndex:I

.field public val:F


# direct methods
.method public constructor <init>(FILcom/github/mikephil/charting/data/DataSet;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/github/mikephil/charting/utils/SelectionDetail;->val:F

    .line 21
    iput p2, p0, Lcom/github/mikephil/charting/utils/SelectionDetail;->dataSetIndex:I

    .line 22
    iput-object p3, p0, Lcom/github/mikephil/charting/utils/SelectionDetail;->dataSet:Lcom/github/mikephil/charting/data/DataSet;

    return-void
.end method
