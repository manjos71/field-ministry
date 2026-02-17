.class public final Lorg/bson/types/Decimal128;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/bson/types/Decimal128;",
        ">;"
    }
.end annotation


# static fields
.field private static final BIG_INT_ONE:Ljava/math/BigInteger;

.field private static final BIG_INT_TEN:Ljava/math/BigInteger;

.field private static final BIG_INT_ZERO:Ljava/math/BigInteger;

.field public static final NEGATIVE_INFINITY:Lorg/bson/types/Decimal128;

.field private static final NEGATIVE_INFINITY_STRINGS:Ljava/util/Set;

.field public static final NEGATIVE_NaN:Lorg/bson/types/Decimal128;

.field private static final NEGATIVE_NaN_STRINGS:Ljava/util/Set;

.field public static final NEGATIVE_ZERO:Lorg/bson/types/Decimal128;

.field public static final NaN:Lorg/bson/types/Decimal128;

.field private static final NaN_STRINGS:Ljava/util/Set;

.field public static final POSITIVE_INFINITY:Lorg/bson/types/Decimal128;

.field private static final POSITIVE_INFINITY_STRINGS:Ljava/util/Set;

.field public static final POSITIVE_ZERO:Lorg/bson/types/Decimal128;


# instance fields
.field private final high:J

.field private final low:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "10"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bson/types/Decimal128;->BIG_INT_TEN:Ljava/math/BigInteger;

    .line 53
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bson/types/Decimal128;->BIG_INT_ONE:Ljava/math/BigInteger;

    .line 54
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bson/types/Decimal128;->BIG_INT_ZERO:Ljava/math/BigInteger;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "nan"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/bson/types/Decimal128;->NaN_STRINGS:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "-nan"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/bson/types/Decimal128;->NEGATIVE_NaN_STRINGS:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "infinity"

    const-string v2, "+infinity"

    const-string v3, "inf"

    const-string v4, "+inf"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/bson/types/Decimal128;->POSITIVE_INFINITY_STRINGS:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "-inf"

    const-string v2, "-infinity"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/bson/types/Decimal128;->NEGATIVE_INFINITY_STRINGS:Ljava/util/Set;

    const-wide/high16 v0, 0x7800000000000000L

    const-wide/16 v2, 0x0

    .line 65
    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object v0

    sput-object v0, Lorg/bson/types/Decimal128;->POSITIVE_INFINITY:Lorg/bson/types/Decimal128;

    const-wide/high16 v0, -0x800000000000000L

    .line 71
    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object v0

    sput-object v0, Lorg/bson/types/Decimal128;->NEGATIVE_INFINITY:Lorg/bson/types/Decimal128;

    const-wide/high16 v0, -0x400000000000000L    # -1.94906280228E289

    .line 77
    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object v0

    sput-object v0, Lorg/bson/types/Decimal128;->NEGATIVE_NaN:Lorg/bson/types/Decimal128;

    const-wide/high16 v0, 0x7c00000000000000L    # 1.94906280228E289

    .line 83
    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object v0

    sput-object v0, Lorg/bson/types/Decimal128;->NaN:Lorg/bson/types/Decimal128;

    const-wide/high16 v0, 0x3040000000000000L    # 2.7635739376302223E-76

    .line 89
    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object v0

    sput-object v0, Lorg/bson/types/Decimal128;->POSITIVE_ZERO:Lorg/bson/types/Decimal128;

    const-wide/high16 v0, -0x4fc0000000000000L    # -2.7635739376302223E-76

    .line 95
    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object v0

    sput-object v0, Lorg/bson/types/Decimal128;->NEGATIVE_ZERO:Lorg/bson/types/Decimal128;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 160
    iput-wide p1, p0, Lorg/bson/types/Decimal128;->high:J

    .line 161
    iput-wide p3, p0, Lorg/bson/types/Decimal128;->low:J

    return-void
.end method

.method private bigDecimalValueNoNegativeZeroCheck()Ljava/math/BigDecimal;
    .locals 5

    .line 307
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->getExponent()I

    move-result v0

    neg-int v0, v0

    .line 309
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->twoHighestCombinationBitsAreSet()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    .line 310
    invoke-static {v1, v2, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 313
    :cond_0
    new-instance v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->getBytes()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v1
.end method

.method public static fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;
    .locals 1

    .line 137
    new-instance v0, Lorg/bson/types/Decimal128;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bson/types/Decimal128;-><init>(JJ)V

    return-object v0
.end method

.method private getBytes()[B
    .locals 10

    const/16 v0, 0xf

    .line 318
    new-array v0, v0, [B

    const-wide/16 v1, 0xff

    const/16 v3, 0xe

    move-wide v4, v1

    :goto_0
    const/4 v6, 0x7

    const/16 v7, 0x8

    if-lt v3, v6, :cond_0

    .line 322
    iget-wide v8, p0, Lorg/bson/types/Decimal128;->low:J

    and-long/2addr v8, v4

    rsub-int/lit8 v6, v3, 0xe

    shl-int/lit8 v6, v6, 0x3

    ushr-long/2addr v8, v6

    long-to-int v6, v8

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    shl-long/2addr v4, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    :goto_1
    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 328
    iget-wide v4, p0, Lorg/bson/types/Decimal128;->high:J

    and-long/2addr v4, v1

    rsub-int/lit8 v6, v3, 0x6

    shl-int/lit8 v6, v6, 0x3

    ushr-long/2addr v4, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v3

    shl-long/2addr v1, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 333
    :cond_1
    iget-wide v1, p0, Lorg/bson/types/Decimal128;->high:J

    const-wide/high16 v3, 0x1000000000000L

    and-long/2addr v1, v3

    const/16 v3, 0x30

    ushr-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method private getExponent()I
    .locals 4

    .line 338
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->twoHighestCombinationBitsAreSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->high:J

    const-wide v2, 0x1fffe00000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x2f

    :goto_0
    ushr-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit16 v1, v1, -0x1820

    return v1

    .line 341
    :cond_0
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->high:J

    const-wide v2, 0x7fff800000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x31

    goto :goto_0
.end method

.method private hasDifferentSign(Ljava/math/BigDecimal;)Z
    .locals 1

    .line 299
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isZero(Ljava/math/BigDecimal;)Z
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private toStringWithBigDecimal()Ljava/lang/String;
    .locals 8

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->bigDecimalValueNoNegativeZeroCheck()Ljava/math/BigDecimal;

    move-result-object v1

    .line 584
    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2d

    .line 587
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 590
    :cond_0
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    neg-int v1, v1

    .line 591
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    const/16 v5, 0x2e

    const/4 v6, 0x0

    if-gtz v1, :cond_4

    const/4 v7, -0x6

    if-lt v3, v7, :cond_4

    if-nez v1, :cond_1

    .line 594
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    neg-int v3, v1

    .line 596
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-ltz v3, :cond_3

    const/16 v1, 0x30

    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 603
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    neg-int v3, v3

    .line 605
    invoke-virtual {v0, v2, v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int v1, v3, v1

    .line 607
    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 611
    :cond_4
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_5

    .line 613
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v1, 0x45

    .line 616
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez v3, :cond_6

    const/16 v1, 0x2b

    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 620
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 622
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private twoHighestCombinationBitsAreSet()Z
    .locals 5

    .line 346
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->high:J

    const-wide/high16 v2, 0x6000000000000000L    # 2.6815615859885194E154

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Lorg/bson/types/Decimal128;

    invoke-virtual {p0, p1}, Lorg/bson/types/Decimal128;->compareTo(Lorg/bson/types/Decimal128;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/bson/types/Decimal128;)I
    .locals 6

    .line 388
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->isNaN()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->isNaN()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 391
    :cond_0
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->isInfinite()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_5

    .line 392
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v3

    .line 399
    :cond_2
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    .line 401
    :cond_3
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->isNegative()Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v1

    .line 408
    :cond_5
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->bigDecimalValueNoNegativeZeroCheck()Ljava/math/BigDecimal;

    move-result-object v0

    .line 409
    invoke-direct {p1}, Lorg/bson/types/Decimal128;->bigDecimalValueNoNegativeZeroCheck()Ljava/math/BigDecimal;

    move-result-object v4

    .line 411
    invoke-direct {p0, v0}, Lorg/bson/types/Decimal128;->isZero(Ljava/math/BigDecimal;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p1, v4}, Lorg/bson/types/Decimal128;->isZero(Ljava/math/BigDecimal;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 412
    invoke-direct {p0, v0}, Lorg/bson/types/Decimal128;->hasDifferentSign(Ljava/math/BigDecimal;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 413
    invoke-direct {p1, v4}, Lorg/bson/types/Decimal128;->hasDifferentSign(Ljava/math/BigDecimal;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v3

    .line 419
    :cond_7
    invoke-direct {p1, v4}, Lorg/bson/types/Decimal128;->hasDifferentSign(Ljava/math/BigDecimal;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v1

    .line 424
    :cond_8
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_9

    return v3

    .line 426
    :cond_9
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->isInfinite()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 427
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_a

    return v1

    :cond_a
    return v3

    .line 433
    :cond_b
    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 2

    .line 496
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 499
    :cond_0
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    .line 507
    :cond_2
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->bigDecimalValueNoNegativeZeroCheck()Ljava/math/BigDecimal;

    move-result-object v0

    .line 509
    invoke-direct {p0, v0}, Lorg/bson/types/Decimal128;->hasDifferentSign(Ljava/math/BigDecimal;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 513
    :cond_3
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 535
    const-class v2, Lorg/bson/types/Decimal128;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 539
    :cond_1
    check-cast p1, Lorg/bson/types/Decimal128;

    .line 541
    iget-wide v2, p0, Lorg/bson/types/Decimal128;->high:J

    iget-wide v4, p1, Lorg/bson/types/Decimal128;->high:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 544
    :cond_2
    iget-wide v2, p0, Lorg/bson/types/Decimal128;->low:J

    iget-wide v4, p1, Lorg/bson/types/Decimal128;->low:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public floatValue()F
    .locals 2

    .line 481
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getHigh()J
    .locals 2

    .line 257
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->high:J

    return-wide v0
.end method

.method public getLow()J
    .locals 2

    .line 267
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->low:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 553
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->low:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 554
    iget-wide v3, p0, Lorg/bson/types/Decimal128;->high:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    return v1
.end method

.method public intValue()I
    .locals 2

    .line 450
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 5

    .line 364
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->high:J

    const-wide/high16 v2, 0x7800000000000000L

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNaN()Z
    .locals 5

    .line 382
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->high:J

    const-wide/high16 v2, 0x7c00000000000000L    # 1.94906280228E289

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNegative()Z
    .locals 5

    .line 355
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->high:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 466
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 567
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const-string v0, "NaN"

    return-object v0

    .line 570
    :cond_0
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    const-string v0, "-Infinity"

    return-object v0

    .line 574
    :cond_1
    const-string v0, "Infinity"

    return-object v0

    .line 577
    :cond_2
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->toStringWithBigDecimal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
