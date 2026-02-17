.class public final Lcom/github/mikephil/charting/utils/FSize;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final height:F

.field public final width:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    .line 16
    iput p2, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 28
    :cond_1
    instance-of v2, p1, Lcom/github/mikephil/charting/utils/FSize;

    if-eqz v2, :cond_2

    .line 29
    check-cast p1, Lcom/github/mikephil/charting/utils/FSize;

    .line 30
    iget v2, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iget v3, p1, Lcom/github/mikephil/charting/utils/FSize;->width:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    iget p1, p1, Lcom/github/mikephil/charting/utils/FSize;->height:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 45
    iget v0, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
