.class public Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;
.super Lcom/fasterxml/jackson/core/base/GeneratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;,
        Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;
    }
.end annotation


# static fields
.field protected static final _smileRecyclerRef:Ljava/lang/ThreadLocal;


# instance fields
.field protected _bufferRecyclable:Z

.field protected _bytesWritten:I

.field protected _formatFeatures:I

.field protected final _ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

.field protected final _out:Ljava/io/OutputStream;

.field protected _outputBuffer:[B

.field protected final _outputEnd:I

.field protected _outputTail:I

.field protected _seenNameCount:I

.field protected _seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

.field protected _seenStringValueCount:I

.field protected _seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

.field protected final _smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

.field protected _smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 270
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;IILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/OutputStream;)V
    .locals 2

    const/4 v0, 0x0

    .line 282
    invoke-direct {p0, p2, p4, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;-><init>(ILcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/json/JsonWriteContext;)V

    const/4 p4, 0x0

    .line 207
    iput p4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 283
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 284
    invoke-static {p0}, Lcom/fasterxml/jackson/core/json/DupDetector;->rootDetector(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/json/DupDetector;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 287
    :goto_0
    invoke-static {p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    .line 288
    iput p3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_formatFeatures:I

    .line 289
    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 290
    invoke-static {}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileBufferRecycler()Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    .line 291
    iput-object p5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    const/4 p5, 0x1

    .line 292
    iput-boolean p5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_bufferRecyclable:Z

    .line 293
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocWriteEncodingBuffer()[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    .line 294
    array-length p1, p1

    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    const/16 v1, 0x302

    if-lt p1, v1, :cond_5

    .line 301
    sget-object p1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->CHECK_SHARED_NAMES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->enabledIn(I)Z

    move-result p1

    const/16 p5, 0x40

    const/4 v1, -0x1

    if-nez p1, :cond_1

    .line 302
    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 303
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    goto :goto_1

    .line 305
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->allocSeenNamesBuffer()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    if-nez p1, :cond_2

    .line 307
    new-array p1, p5, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 309
    :cond_2
    iput p4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    .line 312
    :goto_1
    sget-object p1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->enabledIn(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 313
    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 314
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    return-void

    .line 316
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->allocSeenStringValuesBuffer()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    if-nez p1, :cond_4

    .line 318
    new-array p1, p5, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 320
    :cond_4
    iput p4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    return-void

    .line 297
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 299
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, p4

    aput-object p3, v0, p5

    .line 297
    const-string p1, "Internal encoding buffer length (%d) too short, must be at least %d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final _addSeenName(Ljava/lang/String;)V
    .locals 8

    .line 2629
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    array-length v2, v1

    if-ne v0, v2, :cond_2

    const/4 v2, 0x0

    const/16 v3, 0x400

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    .line 2631
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2632
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    goto :goto_2

    .line 2635
    :cond_0
    new-array v0, v3, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2637
    array-length v0, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    :goto_1
    if-eqz v3, :cond_1

    .line 2639
    iget-object v4, v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    and-int/lit16 v4, v4, 0x3ff

    .line 2640
    iget-object v5, v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2641
    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    aget-object v7, v6, v4

    iput-object v7, v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2642
    aput-object v3, v6, v4

    move-object v3, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2649
    :cond_2
    :goto_2
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    .line 2650
    invoke-static {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_validBackRef(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2651
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 2652
    new-instance v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    aget-object v4, v2, v1

    invoke-direct {v3, p1, v0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;)V

    aput-object v3, v2, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 2654
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    return-void
.end method

.method private final _addSeenStringValue(Ljava/lang/String;)V
    .locals 8

    .line 2686
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    array-length v2, v1

    if-ne v0, v2, :cond_2

    const/4 v2, 0x0

    const/16 v3, 0x400

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    .line 2688
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2689
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    goto :goto_2

    .line 2692
    :cond_0
    new-array v0, v3, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2694
    array-length v0, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    :goto_1
    if-eqz v3, :cond_1

    .line 2696
    iget-object v4, v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    and-int/lit16 v4, v4, 0x3ff

    .line 2697
    iget-object v5, v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2698
    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    aget-object v7, v6, v4

    iput-object v7, v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2699
    aput-object v3, v6, v4

    move-object v3, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2712
    :cond_2
    :goto_2
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    .line 2713
    invoke-static {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_validBackRef(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2714
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 2715
    new-instance v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    aget-object v4, v2, v1

    invoke-direct {v3, p1, v0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;)V

    aput-object v3, v2, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 2717
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    return-void
.end method

.method private _convertSurrogate(II)I
    .locals 5

    const v0, 0xdc00

    if-lt p2, v0, :cond_0

    const v1, 0xdfff

    if-le p2, v1, :cond_1

    .line 2145
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 2144
    const-string v1, "Broken surrogate pair: first char 0x%04X, second 0x%04X; illegal combination"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2146
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    :cond_1
    const v1, 0xd800

    sub-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0xa

    const/high16 v1, 0x10000

    add-int/2addr p1, v1

    sub-int/2addr p2, v0

    add-int/2addr p1, p2

    return p1
.end method

.method private final _ensureRoomForOutput(I)V
    .locals 1

    .line 2177
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, p1, :cond_0

    .line 2178
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    :cond_0
    return-void
.end method

.method private final _findSeenName(Ljava/lang/String;)I
    .locals 5

    .line 2598
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2599
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v0

    aget-object v1, v1, v2

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 2606
    :cond_0
    iget-object v3, v1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    if-ne v3, p1, :cond_1

    .line 2607
    iget p1, v1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->index:I

    return p1

    :cond_1
    move-object v3, v1

    .line 2609
    :cond_2
    iget-object v3, v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    if-eqz v3, :cond_3

    .line 2610
    iget-object v4, v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    if-ne v4, p1, :cond_2

    .line 2611
    iget p1, v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->index:I

    return p1

    .line 2617
    :cond_3
    iget-object v3, v1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    .line 2618
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v4, v0, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2619
    iget p1, v1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->index:I

    return p1

    .line 2621
    :cond_4
    iget-object v1, v1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    if-nez v1, :cond_3

    return v2
.end method

.method private final _findSeenStringValue(Ljava/lang/String;)I
    .locals 4

    .line 2659
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2660
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v0

    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    move-object v2, v1

    .line 2665
    :cond_0
    iget-object v3, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    if-ne v3, p1, :cond_1

    .line 2666
    iget p1, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->index:I

    return p1

    .line 2668
    :cond_1
    iget-object v2, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    if-nez v2, :cond_0

    .line 2673
    :cond_2
    iget-object v2, v1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    .line 2674
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-ne v3, v0, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2675
    iget p1, v1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->index:I

    return p1

    .line 2677
    :cond_3
    iget-object v1, v1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    if-nez v1, :cond_2

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method private _mediumUTF8Encode(Ljava/lang/String;II)V
    .locals 7

    .line 2070
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    add-int/lit8 v0, v0, -0x4

    :goto_0
    if-ge p2, p3, :cond_b

    .line 2077
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    if-lt v1, v0, :cond_0

    .line 2078
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 2080
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x7f

    if-gt p2, v2, :cond_4

    .line 2083
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    int-to-byte p2, p2

    aput-byte p2, v3, v4

    sub-int p2, p3, v1

    sub-int v3, v0, v5

    if-le p2, v3, :cond_1

    move p2, v3

    :cond_1
    add-int v3, p2, v1

    :goto_1
    move p2, v1

    if-lt p2, v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p2, 0x1

    .line 2097
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-le p2, v2, :cond_3

    goto :goto_2

    .line 2101
    :cond_3
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    int-to-byte p2, p2

    aput-byte p2, v4, v5

    goto :goto_1

    :cond_4
    :goto_2
    const/16 v2, 0x800

    if-ge p2, v2, :cond_5

    .line 2107
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v5, p2, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, v3, 0x2

    .line 2108
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    aput-byte p2, v2, v4

    goto/16 :goto_4

    :cond_5
    const v2, 0xd800

    if-lt p2, v2, :cond_a

    const v2, 0xdfff

    if-le p2, v2, :cond_6

    goto :goto_3

    :cond_6
    const v2, 0xdbff

    if-le p2, v2, :cond_7

    .line 2119
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    :cond_7
    if-lt v1, p3, :cond_8

    .line 2123
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    :cond_8
    add-int/lit8 v2, v1, 0x1

    .line 2125
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_convertSurrogate(II)I

    move-result p2

    const v1, 0x10ffff

    if-le p2, v1, :cond_9

    .line 2127
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 2129
    :cond_9
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v5, p2, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    add-int/lit8 v5, v3, 0x2

    .line 2130
    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v6, p2, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    add-int/lit8 v4, v3, 0x3

    .line 2131
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v6, p2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v3, v3, 0x4

    .line 2132
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    aput-byte p2, v1, v4

    move p2, v2

    goto/16 :goto_0

    .line 2112
    :cond_a
    :goto_3
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v5, p2, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x2

    .line 2113
    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v6, p2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v3, v3, 0x3

    .line 2114
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    aput-byte p2, v2, v5

    :goto_4
    move p2, v1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private final _shortUTF8Encode(Ljava/lang/String;II)I
    .locals 4

    .line 1939
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 1940
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    .line 1942
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    .line 1944
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_shortUTF8Encode2(Ljava/lang/String;III)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    int-to-byte v2, v2

    .line 1946
    aput-byte v2, v1, v0

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_1

    .line 1948
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    sub-int p1, v3, p1

    .line 1949
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    return p1

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private final _shortUTF8Encode2(Ljava/lang/String;III)I
    .locals 5

    .line 1956
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    :goto_0
    if-ge p2, p3, :cond_7

    add-int/lit8 v1, p2, 0x1

    .line 1958
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    add-int/lit8 p2, p4, 0x1

    int-to-byte v2, v2

    .line 1960
    aput-byte v2, v0, p4

    move p4, p2

    :goto_1
    move p2, v1

    goto :goto_0

    :cond_0
    const/16 v3, 0x800

    if-ge v2, v3, :cond_1

    add-int/lit8 p2, p4, 0x1

    shr-int/lit8 v3, v2, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    .line 1965
    aput-byte v3, v0, p4

    add-int/lit8 p4, p4, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 1966
    aput-byte v2, v0, p2

    goto :goto_1

    :cond_1
    const v3, 0xd800

    if-lt v2, v3, :cond_6

    const v3, 0xdfff

    if-le v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const v3, 0xdbff

    if-le v2, v3, :cond_3

    .line 1979
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    :cond_3
    if-lt v1, p3, :cond_4

    .line 1983
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    :cond_4
    add-int/lit8 p2, p2, 0x2

    .line 1985
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_convertSurrogate(II)I

    move-result v1

    const v2, 0x10ffff

    if-le v1, v2, :cond_5

    .line 1987
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    :cond_5
    add-int/lit8 v2, p4, 0x1

    shr-int/lit8 v3, v1, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    .line 1989
    aput-byte v3, v0, p4

    add-int/lit8 v3, p4, 0x2

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 1990
    aput-byte v4, v0, v2

    add-int/lit8 v2, p4, 0x3

    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 1991
    aput-byte v4, v0, v3

    add-int/lit8 p4, p4, 0x4

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 1992
    aput-byte v1, v0, v2

    goto :goto_0

    :cond_6
    :goto_2
    add-int/lit8 p2, p4, 0x1

    shr-int/lit8 v3, v2, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    .line 1972
    aput-byte v3, v0, p4

    add-int/lit8 v3, p4, 0x2

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 1973
    aput-byte v4, v0, p2

    add-int/lit8 p4, p4, 0x3

    and-int/lit8 p2, v2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 1974
    aput-byte p2, v0, v3

    goto/16 :goto_1

    .line 1994
    :cond_7
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    sub-int p1, p4, p1

    .line 1995
    iput p4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    return p1
.end method

.method protected static final _smileBufferRecycler()Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;
    .locals 3

    .line 395
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    :goto_0
    if-nez v1, :cond_1

    .line 399
    new-instance v1, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-direct {v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;-><init>()V

    .line 400
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method private _throwIllegalSurrogate(I)V
    .locals 4

    const v0, 0x10ffff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v0, :cond_0

    .line 2155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    .line 2154
    const-string v0, "Illegal character point (0x%X) to output; max is 0x10FFFF as per RFC 4627"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    :cond_0
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    const v0, 0xdbff

    if-gt p1, v0, :cond_1

    .line 2160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    .line 2159
    const-string v0, "Unmatched first part of surrogate pair (0x%04X)"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 2163
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    .line 2162
    const-string v0, "Unmatched second part of surrogate pair (0x%04X)"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 2166
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Illegal character point (0x%X) to output"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method private static final _validBackRef(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xfe

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final _writeByte(B)V
    .locals 3

    .line 2184
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 2185
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 2187
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    return-void
.end method

.method private final _writeBytes(BB)V
    .locals 3

    .line 2192
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 2193
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 2195
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x2

    .line 2196
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v2

    return-void
.end method

.method private final _writeBytes(BBB)V
    .locals 3

    .line 2201
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 2202
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 2204
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    add-int/lit8 p1, v1, 0x2

    .line 2205
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v2

    add-int/lit8 v1, v1, 0x3

    .line 2206
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, p1

    return-void
.end method

.method private final _writeBytes(BBBB)V
    .locals 3

    .line 2211
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 2212
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 2214
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    add-int/lit8 p1, v1, 0x2

    .line 2215
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v2

    add-int/lit8 p2, v1, 0x3

    .line 2216
    iput p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, p1

    add-int/lit8 v1, v1, 0x4

    .line 2217
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p4, v0, p2

    return-void
.end method

.method private final _writeBytes(BBBBB)V
    .locals 3

    .line 2222
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 2223
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 2225
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    add-int/lit8 p1, v1, 0x2

    .line 2226
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v2

    add-int/lit8 p2, v1, 0x3

    .line 2227
    iput p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, p1

    add-int/lit8 p1, v1, 0x4

    .line 2228
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p4, v0, p2

    add-int/lit8 v1, v1, 0x5

    .line 2229
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p5, v0, p1

    return-void
.end method

.method private final _writeBytes(BBBBBB)V
    .locals 3

    .line 2234
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 2235
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 2237
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    add-int/lit8 p1, v1, 0x2

    .line 2238
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v2

    add-int/lit8 p2, v1, 0x3

    .line 2239
    iput p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, p1

    add-int/lit8 p1, v1, 0x4

    .line 2240
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p4, v0, p2

    add-int/lit8 p2, v1, 0x5

    .line 2241
    iput p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p5, v0, p1

    add-int/lit8 v1, v1, 0x6

    .line 2242
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p6, v0, p2

    return-void
.end method

.method private final _writeFieldName(Ljava/lang/String;)V
    .locals 6

    .line 728
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x20

    .line 730
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    return-void

    .line 734
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v1, :cond_1

    .line 735
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_findSeenName(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 737
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeSharedNameReference(I)V

    return-void

    :cond_1
    const/16 v1, 0x40

    if-le v0, v1, :cond_2

    .line 742
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeNonShortFieldName(Ljava/lang/String;I)V

    return-void

    .line 747
    :cond_2
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v2, v2, 0xc4

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_3

    .line 748
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 751
    :cond_3
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    .line 752
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/4 v3, 0x0

    .line 753
    invoke-direct {p0, p1, v3, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_shortUTF8Encode(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, -0x4

    const/16 v5, 0x34

    if-ne v3, v0, :cond_5

    if-gt v3, v1, :cond_4

    add-int/lit8 v3, v3, 0x7f

    :goto_0
    int-to-byte v5, v3

    goto :goto_1

    .line 763
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v4, v0, v1

    goto :goto_1

    :cond_5
    const/16 v0, 0x38

    if-gt v3, v0, :cond_6

    add-int/lit16 v3, v3, 0xbe

    goto :goto_0

    .line 772
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v4, v0, v1

    .line 776
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    aput-byte v5, v0, v2

    .line 778
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v0, :cond_7

    .line 779
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private final _writeNonSharedString(Ljava/lang/String;I)V
    .locals 5

    add-int v0, p2, p2

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x2

    .line 1025
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    array-length v1, v1

    const/4 v2, -0x4

    const/4 v3, 0x0

    const/16 v4, -0x1c

    if-le v0, v1, :cond_0

    .line 1027
    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1028
    invoke-direct {p0, p1, v3, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_mediumUTF8Encode(Ljava/lang/String;II)V

    .line 1029
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    return-void

    .line 1033
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v0, :cond_1

    .line 1034
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1036
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/16 v1, -0x20

    .line 1038
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1039
    invoke-direct {p0, p1, v3, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_shortUTF8Encode(Ljava/lang/String;II)I

    move-result p1

    if-le p1, p2, :cond_2

    .line 1042
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    aput-byte v4, p1, v0

    .line 1044
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v2, p1, p2

    return-void
.end method

.method private final _writeNonShortFieldName(Ljava/lang/String;I)V
    .locals 3

    const/16 v0, 0x34

    .line 785
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    add-int v0, p2, p2

    add-int/2addr v0, p2

    .line 789
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    .line 790
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v0, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 793
    :cond_0
    invoke-direct {p0, p1, v2, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_shortUTF8Encode(Ljava/lang/String;II)I

    goto :goto_0

    .line 795
    :cond_1
    invoke-direct {p0, p1, v2, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_mediumUTF8Encode(Ljava/lang/String;II)V

    .line 797
    :goto_0
    iget p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    if-ltz p2, :cond_2

    .line 798
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    .line 800
    :cond_2
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    iget p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt p1, p2, :cond_3

    .line 801
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 803
    :cond_3
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/4 v0, -0x4

    aput-byte v0, p1, p2

    return-void
.end method

.method private _writePositiveVInt(I)V
    .locals 8

    const/4 v0, 0x5

    .line 2304
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ensureRoomForOutput(I)V

    and-int/lit8 v1, p1, 0x3f

    add-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    shr-int/lit8 v2, p1, 0x6

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_1

    if-lez v2, :cond_0

    .line 2309
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 2311
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, p1, v0

    return-void

    :cond_1
    and-int/2addr v2, v3

    int-to-byte v2, v2

    shr-int/lit8 v4, p1, 0xd

    if-gt v4, v3, :cond_2

    .line 2317
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    add-int/lit8 v4, v0, 0x2

    .line 2318
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v2, p1, v3

    add-int/lit8 v0, v0, 0x3

    .line 2319
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, p1, v4

    return-void

    :cond_2
    and-int/2addr v4, v3

    int-to-byte v4, v4

    shr-int/lit8 v5, p1, 0x14

    if-gt v5, v3, :cond_3

    .line 2324
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    add-int/lit8 v5, v0, 0x2

    .line 2325
    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v4, p1, v3

    add-int/lit8 v3, v0, 0x3

    .line 2326
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v2, p1, v5

    add-int/lit8 v0, v0, 0x4

    .line 2327
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, p1, v3

    return-void

    :cond_3
    and-int/2addr v3, v5

    int-to-byte v3, v3

    .line 2330
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 p1, p1, 0x1b

    int-to-byte p1, p1

    aput-byte p1, v5, v6

    add-int/lit8 p1, v6, 0x2

    .line 2331
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v3, v5, v7

    add-int/lit8 v3, v6, 0x3

    .line 2332
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v4, v5, p1

    add-int/lit8 p1, v6, 0x4

    .line 2333
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v2, v5, v3

    add-int/2addr v6, v0

    .line 2334
    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, v5, p1

    return-void
.end method

.method private final _writeSharedNameReference(I)V
    .locals 3

    .line 930
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    if-ge p1, v0, :cond_1

    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    add-int/2addr p1, v0

    int-to-byte p1, p1

    .line 935
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    return-void

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    int-to-byte p1, p1

    .line 937
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BB)V

    return-void

    .line 931
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: trying to write shared name with index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; but have only seen "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " so far!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final _writeSharedStringValueReference(I)V
    .locals 3

    .line 1005
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    if-ge p1, v0, :cond_1

    const/16 v0, 0x1f

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    .line 1010
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    return-void

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    add-int/lit16 v0, v0, 0xec

    int-to-byte v0, v0

    int-to-byte p1, p1

    .line 1012
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BB)V

    return-void

    .line 1006
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: trying to write shared String value with index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; but have only seen "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " so far!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _writeSignedVInt(I)V
    .locals 0

    .line 2347
    invoke-static {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagEncode(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writePositiveVInt(I)V

    return-void
.end method


# virtual methods
.method protected final _flushBuffer()V
    .locals 4

    .line 2583
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    if-lez v0, :cond_0

    .line 2584
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_bytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_bytesWritten:I

    .line 2585
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 2586
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    :cond_0
    return-void
.end method

.method protected _notSupported()Ljava/lang/UnsupportedOperationException;
    .locals 1

    .line 2745
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    return-object v0
.end method

.method protected _releaseBuffers()V
    .locals 4

    .line 2545
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2546
    iget-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_bufferRecyclable:Z

    if-eqz v2, :cond_0

    .line 2547
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    .line 2548
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseWriteEncodingBuffer([B)V

    .line 2554
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    const/16 v2, 0x40

    if-eqz v0, :cond_2

    .line 2555
    array-length v3, v0

    if-ne v3, v2, :cond_2

    .line 2556
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2560
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    if-lez v3, :cond_1

    .line 2561
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2563
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->releaseSeenNamesBuffer([Ljava/lang/Object;)V

    .line 2567
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    if-eqz v0, :cond_4

    .line 2568
    array-length v3, v0

    if-ne v3, v2, :cond_4

    .line 2569
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2573
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    if-lez v2, :cond_3

    .line 2574
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2576
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->releaseSeenStringValuesBuffer([Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .locals 2

    .line 1800
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->writeValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", expecting field name"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected _write7BitBinaryWithLength([BII)V
    .locals 9

    .line 2352
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writePositiveVInt(I)V

    :goto_0
    const/4 v0, 0x7

    if-lt p3, v0, :cond_1

    .line 2355
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 2356
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 2358
    aget-byte v1, p1, p2

    .line 2359
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v5, v1, 0x1

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, p2, 0x2

    .line 2360
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x2

    .line 2361
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v6, v0, 0x2

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, p2, 0x3

    .line 2362
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    add-int/lit8 v5, v3, 0x3

    .line 2363
    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v6, v0, 0x3

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v2, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x4

    .line 2364
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    add-int/lit8 v4, v3, 0x4

    .line 2365
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v5, p2, 0x5

    .line 2366
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x5

    .line 2367
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v6, v0, 0x5

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, p2, 0x6

    .line 2368
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    add-int/lit8 v5, v3, 0x6

    .line 2369
    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v2, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p2, p2, 0x7

    .line 2370
    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x7

    .line 2371
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x7

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v5

    add-int/lit8 v3, v3, 0x8

    .line 2372
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    add-int/lit8 p3, p3, -0x7

    goto/16 :goto_0

    :cond_1
    if-lez p3, :cond_8

    .line 2378
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_2

    .line 2379
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    :cond_2
    add-int/lit8 v1, p2, 0x1

    .line 2381
    aget-byte v2, p1, p2

    .line 2382
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v6, v2, 0x1

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-le p3, v7, :cond_7

    and-int/2addr v2, v7

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, p2, 0x2

    .line 2384
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v2, v4, 0x2

    .line 2385
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v8, v1, 0x2

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    const/4 v5, 0x3

    if-le p3, v6, :cond_6

    and-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v6, p2, 0x3

    .line 2387
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v1, v7

    add-int/lit8 v7, v4, 0x3

    .line 2388
    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v8, v1, 0x3

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    const/4 v2, 0x4

    if-le p3, v5, :cond_5

    and-int/2addr v1, v0

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, p2, 0x4

    .line 2390
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v1, v6

    add-int/lit8 v6, v4, 0x4

    .line 2391
    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    const/4 v7, 0x5

    if-le p3, v2, :cond_4

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr p2, v7

    .line 2393
    aget-byte v2, p1, v5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v2, v4, 0x5

    .line 2394
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v5, v1, 0x5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    if-le p3, v7, :cond_3

    and-int/lit8 p3, v1, 0x1f

    shl-int/lit8 p3, p3, 0x8

    .line 2396
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p3

    add-int/lit8 p2, v4, 0x6

    .line 2397
    iput p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 p3, p1, 0x6

    and-int/lit8 p3, p3, 0x7f

    int-to-byte p3, p3

    aput-byte p3, v3, v2

    add-int/2addr v4, v0

    .line 2398
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 p1, p1, 0x3f

    int-to-byte p1, p1

    aput-byte p1, v3, p2

    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x6

    .line 2400
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 p1, v1, 0x1f

    int-to-byte p1, p1

    aput-byte p1, v3, v2

    return-void

    :cond_4
    add-int/2addr v4, v7

    .line 2403
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 p1, v1, 0xf

    int-to-byte p1, p1

    aput-byte p1, v3, v6

    return-void

    :cond_5
    add-int/2addr v4, v2

    .line 2406
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 p1, v1, 0x7

    int-to-byte p1, p1

    aput-byte p1, v3, v7

    return-void

    :cond_6
    add-int/2addr v4, v5

    .line 2409
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 p1, v1, 0x3

    int-to-byte p1, p1

    aput-byte p1, v3, v2

    return-void

    :cond_7
    add-int/2addr v4, v6

    .line 2412
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 p1, v2, 0x1

    int-to-byte p1, p1

    aput-byte p1, v3, v5

    :cond_8
    return-void
.end method

.method public close()V
    .locals 2

    .line 1824
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 1825
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1827
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->getOutputContext()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    .line 1828
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1829
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeEndArray()V

    goto :goto_0

    .line 1830
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1831
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeEndObject()V

    goto :goto_0

    .line 1837
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_closed:Z

    .line 1838
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->close()V

    if-nez v0, :cond_2

    .line 1840
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->WRITE_END_MARKER:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->isEnabled(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 1841
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1843
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1845
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1847
    :cond_3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1850
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_2

    .line 1846
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1853
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_releaseBuffers()V

    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1814
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1815
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public getOutputContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    return-object v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Z
    .locals 1

    .line 554
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_formatFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    return-object p0
.end method

.method public useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    return-object p0
.end method

.method public writeBoolean(Z)V
    .locals 1

    .line 1329
    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x23

    .line 1331
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    return-void

    :cond_0
    const/16 p1, 0x22

    .line 1333
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    return-void
.end method

.method public final writeEndArray()V
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not Array but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->typeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x7

    .line 625
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 626
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->getParent()Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    return-void
.end method

.method public final writeEndObject()V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not Object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->typeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->getParent()Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    const/4 v0, -0x5

    .line 653
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    return-void
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->writeFieldName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    const-string v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 512
    :cond_0
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeFieldName(Ljava/lang/String;)V

    return-void
.end method

.method public writeHeader()V
    .locals 4

    .line 381
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->CHECK_SHARED_NAMES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_formatFeatures:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->enabledIn(I)Z

    move-result v0

    .line 384
    sget-object v1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_formatFeatures:I

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->enabledIn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    .line 387
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->ENCODE_BINARY_AS_7BIT:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_formatFeatures:I

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->enabledIn(I)Z

    move-result v1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    const/16 v1, 0xa

    int-to-byte v0, v0

    const/16 v2, 0x3a

    const/16 v3, 0x29

    .line 390
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBB)V

    return-void
.end method

.method public writeNull()V
    .locals 1

    .line 1340
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    const/16 v0, 0x21

    .line 1341
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    return-void
.end method

.method public writeNumber(D)V
    .locals 7

    const/16 v0, 0xb

    .line 1616
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ensureRoomForOutput(I)V

    .line 1617
    const-string v1, "write number"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1623
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    .line 1624
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/16 v4, 0x29

    aput-byte v4, v1, v2

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    long-to-int v5, v4

    add-int/lit8 v4, v2, 0x5

    and-int/lit8 v6, v5, 0x7f

    int-to-byte v6, v6

    .line 1627
    aput-byte v6, v1, v4

    shr-int/lit8 v4, v5, 0x7

    add-int/lit8 v6, v2, 0x4

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    .line 1629
    aput-byte v4, v1, v6

    shr-int/lit8 v4, v5, 0xe

    add-int/lit8 v6, v2, 0x3

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    .line 1631
    aput-byte v4, v1, v6

    shr-int/lit8 v4, v5, 0x15

    add-int/lit8 v6, v2, 0x2

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    .line 1633
    aput-byte v4, v1, v6

    const/16 v4, 0x1c

    shr-int/2addr v5, v4

    int-to-byte v5, v5

    .line 1635
    aput-byte v5, v1, v3

    add-int/lit8 v3, v2, 0x6

    shr-long v4, p1, v4

    long-to-int v5, v4

    add-int/lit8 v4, v2, 0x7

    .line 1640
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    long-to-int p2, p1

    add-int/lit8 p1, v2, 0xa

    and-int/lit8 v3, p2, 0x7f

    int-to-byte v3, v3

    .line 1644
    aput-byte v3, v1, p1

    shr-int/lit8 p1, p2, 0x7

    add-int/lit8 v3, v2, 0x9

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    .line 1646
    aput-byte p1, v1, v3

    shr-int/lit8 p1, p2, 0xe

    add-int/lit8 v3, v2, 0x8

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    .line 1648
    aput-byte p1, v1, v3

    shr-int/lit8 p1, p2, 0x15

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    .line 1650
    aput-byte p1, v1, v4

    add-int/2addr v2, v0

    .line 1651
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    return-void
.end method

.method public writeNumber(F)V
    .locals 6

    const/4 v0, 0x6

    .line 1692
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ensureRoomForOutput(I)V

    .line 1693
    const-string v1, "write number"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1700
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    .line 1701
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/16 v4, 0x28

    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x5

    and-int/lit8 v5, p1, 0x7f

    int-to-byte v5, v5

    .line 1702
    aput-byte v5, v1, v4

    shr-int/lit8 v4, p1, 0x7

    add-int/lit8 v5, v2, 0x4

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    .line 1704
    aput-byte v4, v1, v5

    shr-int/lit8 v4, p1, 0xe

    add-int/lit8 v5, v2, 0x3

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    .line 1706
    aput-byte v4, v1, v5

    shr-int/lit8 v4, p1, 0x15

    add-int/lit8 v5, v2, 0x2

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    .line 1708
    aput-byte v4, v1, v5

    shr-int/lit8 p1, p1, 0x1c

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    .line 1710
    aput-byte p1, v1, v3

    add-int/2addr v2, v0

    .line 1711
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    return-void
.end method

.method public writeNumber(I)V
    .locals 9

    .line 1347
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1349
    invoke-static {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagEncode(I)I

    move-result p1

    const/16 v0, 0x3f

    const/16 v1, 0x24

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    add-int/lit16 p1, p1, 0xc0

    int-to-byte p1, p1

    .line 1353
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    return-void

    :cond_0
    add-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 1357
    invoke-direct {p0, v1, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BB)V

    return-void

    :cond_1
    and-int/lit8 v0, p1, 0x3f

    add-int/lit16 v0, v0, 0x80

    int-to-byte v7, v0

    ushr-int/lit8 p1, p1, 0x6

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_2

    int-to-byte p1, p1

    .line 1364
    invoke-direct {p0, v1, p1, v7}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBB)V

    return-void

    :cond_2
    and-int/lit8 v2, p1, 0x7f

    int-to-byte v6, v2

    shr-int/lit8 v2, p1, 0x7

    if-gt v2, v0, :cond_3

    int-to-byte p1, v2

    .line 1370
    invoke-direct {p0, v1, p1, v6, v7}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBB)V

    return-void

    :cond_3
    and-int/lit8 v1, v2, 0x7f

    int-to-byte v5, v1

    shr-int/lit8 v1, p1, 0xe

    if-gt v1, v0, :cond_4

    const/16 v3, 0x24

    int-to-byte v4, v1

    move-object v2, p0

    .line 1376
    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBB)V

    return-void

    :cond_4
    and-int/2addr v0, v1

    int-to-byte v0, v0

    shr-int/lit8 p1, p1, 0x15

    int-to-byte v4, p1

    const/16 v3, 0x24

    move-object v2, p0

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v0

    .line 1381
    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    return-void
.end method

.method public writeNumber(J)V
    .locals 15

    move-wide/from16 v1, p1

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    const-wide/32 v3, -0x80000000

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    long-to-int v2, v1

    .line 1442
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeNumber(I)V

    return-void

    .line 1445
    :cond_0
    const-string v3, "write number"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1448
    invoke-static {v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagEncode(J)J

    move-result-wide v1

    long-to-int v3, v1

    and-int/lit8 v4, v3, 0x3f

    add-int/lit16 v4, v4, 0x80

    int-to-byte v6, v4

    shr-int/lit8 v4, v3, 0x6

    const/16 v5, 0x7f

    and-int/2addr v4, v5

    int-to-byte v4, v4

    shr-int/lit8 v7, v3, 0xd

    and-int/2addr v7, v5

    int-to-byte v7, v7

    shr-int/lit8 v3, v3, 0x14

    and-int/2addr v3, v5

    int-to-byte v3, v3

    const/16 v8, 0x1b

    ushr-long/2addr v1, v8

    long-to-int v8, v1

    and-int/2addr v8, v5

    int-to-byte v8, v8

    const/4 v9, 0x7

    shr-long/2addr v1, v9

    long-to-int v2, v1

    if-nez v2, :cond_1

    const/16 v1, 0x25

    move-object v0, p0

    move v5, v4

    move v4, v7

    move v2, v8

    .line 1463
    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    return-void

    :cond_1
    move v1, v3

    move v3, v7

    move v7, v8

    const/16 v8, 0x25

    if-gt v2, v5, :cond_2

    int-to-byte v2, v2

    .line 1468
    invoke-direct {p0, v8, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BB)V

    move-object v0, p0

    move v2, v1

    move v5, v6

    move v1, v7

    .line 1469
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBB)V

    return-void

    :cond_2
    and-int/lit8 v9, v2, 0x7f

    int-to-byte v9, v9

    shr-int/lit8 v10, v2, 0x7

    if-gt v10, v5, :cond_3

    int-to-byte v2, v10

    .line 1475
    invoke-direct {p0, v8, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BB)V

    move-object v0, p0

    move v5, v4

    move v2, v7

    move v4, v3

    move v3, v1

    move v1, v9

    .line 1476
    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    return-void

    :cond_3
    and-int/2addr v10, v5

    int-to-byte v10, v10

    shr-int/lit8 v11, v2, 0xe

    if-gt v11, v5, :cond_4

    int-to-byte v2, v11

    .line 1482
    invoke-direct {p0, v8, v2, v10}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBB)V

    move-object v0, p0

    move v5, v4

    move v2, v7

    move v4, v3

    move v3, v1

    move v1, v9

    .line 1483
    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    return-void

    :cond_4
    and-int/2addr v11, v5

    int-to-byte v11, v11

    shr-int/lit8 v12, v2, 0x15

    if-gt v12, v5, :cond_5

    int-to-byte v2, v12

    .line 1489
    invoke-direct {p0, v8, v2, v11, v10}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBB)V

    move-object v0, p0

    move v5, v4

    move v2, v7

    move v4, v3

    move v3, v1

    move v1, v9

    .line 1490
    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    return-void

    :cond_5
    move v8, v3

    move v13, v7

    move v14, v9

    move v9, v1

    move v7, v4

    and-int/lit8 v0, v12, 0x7f

    int-to-byte v3, v0

    shr-int/lit8 v0, v2, 0x1c

    const/16 v1, 0x25

    int-to-byte v2, v0

    move-object v0, p0

    move v5, v10

    move v4, v11

    .line 1496
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBB)V

    move v5, v7

    move v4, v8

    move v3, v9

    move v2, v13

    move v1, v14

    .line 1497
    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1718
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeNull()V

    return-void

    .line 1721
    :cond_0
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    const/16 v0, 0x2a

    .line 1722
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1723
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 1725
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeSignedVInt(I)V

    .line 1726
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p1

    .line 1727
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 1729
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_write7BitBinaryWithLength([BII)V

    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1602
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeNull()V

    return-void

    .line 1605
    :cond_0
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    const/16 v0, 0x26

    .line 1607
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1608
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 1609
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_write7BitBinaryWithLength([BII)V

    return-void
.end method

.method public writeRaw(C)V
    .locals 0

    .line 1240
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 0

    .line 1225
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public writeRaw([CII)V
    .locals 0

    .line 1235
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public final writeStartArray()V
    .locals 2

    .line 606
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->createChildArrayContext(Ljava/lang/Object;)Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    const/4 v0, -0x8

    .line 608
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    return-void
.end method

.method public final writeStartObject()V
    .locals 2

    .line 632
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->createChildObjectContext(Ljava/lang/Object;)Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    const/4 v0, -0x6

    .line 634
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeNull()V

    return-void

    .line 954
    :cond_0
    const-string v0, "write String value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x20

    .line 957
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    return-void

    :cond_1
    const/16 v1, 0x41

    if-le v0, v1, :cond_2

    .line 962
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeNonSharedString(Ljava/lang/String;I)V

    return-void

    .line 966
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v1, :cond_3

    .line 967
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_findSeenStringValue(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 969
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeSharedStringValueReference(I)V

    return-void

    .line 976
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v1, v1, 0xc4

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_4

    .line 977
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 980
    :cond_4
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    .line 981
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/4 v2, 0x0

    .line 982
    invoke-direct {p0, p1, v2, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_shortUTF8Encode(Ljava/lang/String;II)I

    move-result v2

    const/16 v3, 0x40

    if-gt v2, v3, :cond_7

    .line 985
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v3, :cond_5

    .line 986
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_addSeenStringValue(Ljava/lang/String;)V

    :cond_5
    if-ne v2, v0, :cond_6

    .line 989
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    add-int/lit8 v2, v2, 0x3f

    int-to-byte v0, v2

    aput-byte v0, p1, v1

    return-void

    .line 992
    :cond_6
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    add-int/lit8 v2, v2, 0x7e

    int-to-byte v0, v2

    aput-byte v0, p1, v1

    return-void

    .line 995
    :cond_7
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    if-ne v2, v0, :cond_8

    const/16 v0, -0x20

    goto :goto_0

    :cond_8
    const/16 v0, -0x1c

    :goto_0
    aput-byte v0, p1, v1

    .line 998
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/4 v1, -0x4

    aput-byte v1, p1, v0

    return-void
.end method

.method public final writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileContext:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->writeFieldName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    const-string v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 533
    :cond_0
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeFieldName(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method
