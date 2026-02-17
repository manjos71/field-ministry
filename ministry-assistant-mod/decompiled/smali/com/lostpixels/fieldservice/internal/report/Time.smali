.class public Lcom/lostpixels/fieldservice/internal/report/Time;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field minutes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/internal/report/Time;->toMinutes(D)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p2

    .line 15
    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    return-void
.end method

.method private static decimalToTime(Lcom/lostpixels/fieldservice/internal/report/Time;)Ljava/lang/String;
    .locals 5

    .line 82
    iget p0, p0, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    div-int/lit8 v0, p0, 0x3c

    .line 83
    rem-int/lit8 p0, p0, 0x3c

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    .line 86
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "%d"

    invoke-static {p0, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :cond_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    int-to-float v0, v0

    int-to-float p0, p0

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr p0, v4

    add-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "%.2f"

    invoke-static {v3, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 88
    const-string v0, ","

    const-string v1, "."

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hhmmToTime(Lcom/lostpixels/fieldservice/internal/report/Time;Z)Ljava/lang/String;
    .locals 4

    .line 69
    iget p0, p0, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    div-int/lit8 v0, p0, 0x3c

    .line 70
    rem-int/lit8 p0, p0, 0x3c

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    .line 73
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "%d"

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x2

    if-eqz p1, :cond_1

    .line 75
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object p0, v3, v2

    const-string p0, "%d:%02d"

    invoke-static {p1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object p0, v3, v2

    const-string p0, "%d.%02d"

    invoke-static {p1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringToTime(Ljava/lang/String;Z)Lcom/lostpixels/fieldservice/internal/report/Time;
    .locals 0

    if-eqz p1, :cond_0

    .line 62
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToHhmm(Ljava/lang/String;)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object p0

    return-object p0

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToDecimal(Ljava/lang/String;)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object p0

    return-object p0
.end method

.method private static timeToDecimal(Ljava/lang/String;)Lcom/lostpixels/fieldservice/internal/report/Time;
    .locals 3

    .line 118
    :try_start_0
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v1, p0

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 120
    :catch_0
    new-instance p0, Lcom/lostpixels/fieldservice/internal/report/Time;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    return-object p0
.end method

.method private static timeToHhmm(Ljava/lang/String;)Lcom/lostpixels/fieldservice/internal/report/Time;
    .locals 5

    .line 94
    const-string v0, "."

    const/4 v1, 0x0

    :try_start_0
    const-string v2, ","

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v2, p0

    invoke-direct {v0, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    return-object v0

    .line 98
    :cond_0
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 100
    array-length v0, p0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 102
    :goto_0
    array-length v3, p0

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    aget-object v3, p0, v4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 103
    aget-object v2, p0, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 104
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1
    int-to-float v2, p0

    goto :goto_2

    .line 106
    :cond_2
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/lit8 p0, p0, 0xa

    goto :goto_1

    .line 109
    :cond_3
    :goto_2
    new-instance p0, Lcom/lostpixels/fieldservice/internal/report/Time;

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-direct {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 111
    :catch_0
    new-instance p0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    return-object p0
.end method

.method public static timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 47
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->hhmmToTime(Lcom/lostpixels/fieldservice/internal/report/Time;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/Time;->decimalToTime(Lcom/lostpixels/fieldservice/internal/report/Time;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toMinutes(D)I
    .locals 8

    double-to-int v0, p0

    const-wide/16 v1, 0x0

    cmpl-double v3, p0, v1

    int-to-double v4, v0

    if-lez v3, :cond_0

    sub-double v4, p0, v4

    goto :goto_0

    :cond_0
    sub-double/2addr v4, p0

    :goto_0
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double v4, v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v4, v4

    const/16 v5, 0x3c

    if-lt v4, v5, :cond_2

    const/4 v4, 0x0

    if-ltz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_1
    cmpg-double v3, p0, v1

    if-gez v3, :cond_3

    mul-int/lit8 v4, v4, -0x1

    :cond_3
    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v4

    return v0
.end method


# virtual methods
.method public add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;
    .locals 1

    .line 143
    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    iget p1, p1, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    return-object p0
.end method

.method public getHours()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    div-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    rem-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method public getTime()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    return v0
.end method

.method public substract(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;
    .locals 1

    .line 149
    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    iget p1, p1, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    return-object p0
.end method

.method public toDouble()D
    .locals 7

    .line 138
    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/Time;->minutes:I

    div-int/lit8 v1, v0, 0x3c

    int-to-double v1, v1

    rem-int/lit8 v0, v0, 0x3c

    int-to-double v3, v0

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    return-wide v1
.end method
