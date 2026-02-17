.class public abstract Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;
.super Lcom/fasterxml/jackson/core/base/ParserMinimalBase;
.source "SourceFile"


# static fields
.field protected static final NO_STRINGS:[Ljava/lang/String;

.field protected static final _smileRecyclerRef:Ljava/lang/ThreadLocal;


# instance fields
.field protected _binaryValue:[B

.field protected _closed:Z

.field protected _currInputProcessed:J

.field protected _formatFeatures:I

.field protected _inputEnd:I

.field protected _inputPtr:I

.field protected final _ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

.field protected _mayContainRawBinary:Z

.field protected _nameCopyBuffer:[C

.field protected _numTypesValid:I

.field protected _numberBigDecimal:Ljava/math/BigDecimal;

.field protected _numberBigInt:Ljava/math/BigInteger;

.field protected _numberDouble:D

.field protected _numberFloat:F

.field protected _numberInt:I

.field protected _numberLong:J

.field protected _numberType:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

.field protected _parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

.field protected _quad1:I

.field protected _quad2:I

.field protected _quad3:I

.field protected _quadBuffer:[I

.field protected _seenNameCount:I

.field protected _seenNames:[Ljava/lang/String;

.field protected _seenStringValueCount:I

.field protected _seenStringValues:[Ljava/lang/String;

.field protected final _smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

.field protected final _symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

.field protected final _textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

.field protected _tokenOffsetForTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->NO_STRINGS:[Ljava/lang/String;

    .line 221
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;IILcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)V
    .locals 2

    .line 239
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;-><init>(I)V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 84
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    .line 157
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    .line 185
    sget-object v1, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->NO_INTS:[I

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quadBuffer:[I

    .line 197
    sget-object v1, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->NO_STRINGS:[Ljava/lang/String;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    .line 199
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValues:[Ljava/lang/String;

    const/4 v1, -0x1

    .line 208
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValueCount:I

    .line 240
    iput p3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_formatFeatures:I

    .line 241
    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 242
    iput-object p4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 243
    sget-object p3, Lcom/fasterxml/jackson/core/JsonParser$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->enabledIn(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 244
    invoke-static {p0}, Lcom/fasterxml/jackson/core/json/DupDetector;->rootDetector(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/json/DupDetector;

    move-result-object v0

    .line 245
    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 247
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->constructTextBuffer()Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 248
    invoke-static {}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_smileBufferRecycler()Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    return-void
.end method

.method protected static final _smileBufferRecycler()Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;
    .locals 3

    .line 253
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    :goto_0
    if-nez v1, :cond_1

    .line 257
    new-instance v1, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-direct {v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;-><init>()V

    .line 258
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method


# virtual methods
.method protected abstract _closeInput()V
.end method

.method protected _getSourceReference()Ljava/lang/Object;
    .locals 1

    .line 769
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->INCLUDE_SOURCE_IN_LOCATION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _handleEOF()V
    .locals 4

    .line 744
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inRoot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Array"

    goto :goto_0

    :cond_0
    const-string v0, "Object"

    .line 746
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 749
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_getSourceReference()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 746
    const-string v0, ": expected close marker for %s (start marker at %s)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    :cond_1
    return-void
.end method

.method protected abstract _parseNumericValue()V
.end method

.method protected final _releaseBuffers()V
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->releaseBuffers()V

    .line 394
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_nameCopyBuffer:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 396
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_nameCopyBuffer:[C

    .line 397
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseNameCopyBuffer([C)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 400
    array-length v3, v0

    if-lez v3, :cond_2

    .line 401
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    .line 404
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    if-lez v3, :cond_1

    .line 405
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 407
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->releaseSeenNamesBuffer([Ljava/lang/Object;)V

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValues:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 410
    array-length v3, v0

    if-lez v3, :cond_4

    .line 411
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValues:[Ljava/lang/String;

    .line 414
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValueCount:I

    if-lez v3, :cond_3

    .line 415
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 417
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->releaseSeenStringValuesBuffer([Ljava/lang/Object;)V

    .line 419
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_releaseBuffers2()V

    return-void
.end method

.method protected abstract _releaseBuffers2()V
.end method

.method protected _reportMismatchedEndMarker(IC)V
    .locals 4

    .line 755
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->getParsingContext()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    int-to-char p1, p1

    .line 758
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->typeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_getSourceReference()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object v1, v2, p1

    const/4 p1, 0x3

    aput-object v0, v2, p1

    .line 756
    const-string p1, "Unexpected close marker \'%s\': expected \'%c\' (for %s starting at %s)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 1

    .line 379
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_closed:Z

    const/4 v0, 0x0

    .line 381
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    .line 382
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->release()V

    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_closeInput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_releaseBuffers()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_releaseBuffers()V

    .line 388
    throw v0

    :cond_0
    return-void
.end method

.method protected final convertNumberToBigDecimal()V
    .locals 2

    .line 715
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x28

    if-eqz v1, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 720
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 722
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 724
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberInt:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 726
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInternal()V

    .line 728
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    return-void
.end method

.method protected final convertNumberToBigInteger()V
    .locals 2

    .line 654
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 656
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 658
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 660
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberInt:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    .line 662
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberDouble:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 664
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberFloat:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 666
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInternal()V

    .line 668
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    return-void
.end method

.method protected final convertNumberToDouble()V
    .locals 2

    .line 695
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 696
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberDouble:D

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    .line 698
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberFloat:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberDouble:D

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 700
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberDouble:D

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 702
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberLong:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberDouble:D

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 704
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberInt:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberDouble:D

    goto :goto_0

    .line 706
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInternal()V

    .line 708
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    return-void
.end method

.method protected final convertNumberToFloat()V
    .locals 2

    .line 675
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 676
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberFloat:F

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 678
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberFloat:F

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 680
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberDouble:D

    double-to-float v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberFloat:F

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 682
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberLong:J

    long-to-float v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberFloat:F

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 684
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberInt:I

    int-to-float v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberFloat:F

    goto :goto_0

    .line 686
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInternal()V

    .line 688
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    return-void
.end method

.method protected final convertNumberToInt()V
    .locals 8

    .line 583
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 585
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberLong:J

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    .line 587
    const-string v0, "Numeric value (%s) out of range of int"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    :cond_0
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberInt:I

    goto/16 :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4

    .line 591
    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->BI_MIN_INT:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->BI_MAX_INT:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    .line 592
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3

    .line 593
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->reportOverflowInt()V

    .line 595
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberInt:I

    goto :goto_0

    :cond_4
    and-int/lit8 v1, v0, 0x8

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    const-wide/high16 v4, -0x3e20000000000000L    # -2.147483648E9

    if-eqz v1, :cond_7

    .line 598
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberDouble:D

    cmpg-double v6, v0, v4

    if-ltz v6, :cond_5

    cmpl-double v4, v0, v2

    if-lez v4, :cond_6

    .line 599
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->reportOverflowInt()V

    .line 601
    :cond_6
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberDouble:D

    double-to-int v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberInt:I

    goto :goto_0

    :cond_7
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_a

    .line 603
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberFloat:F

    float-to-double v6, v0

    cmpg-double v1, v6, v4

    if-ltz v1, :cond_8

    float-to-double v0, v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_9

    .line 604
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->reportOverflowInt()V

    .line 606
    :cond_9
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberFloat:F

    float-to-int v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberInt:I

    goto :goto_0

    :cond_a
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d

    .line 608
    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->BD_MIN_INT:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_b

    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->BD_MAX_INT:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 609
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_c

    .line 610
    :cond_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->reportOverflowInt()V

    .line 612
    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberInt:I

    goto :goto_0

    .line 614
    :cond_d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInternal()V

    .line 616
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    return-void
.end method

.method protected final convertNumberToLong()V
    .locals 8

    .line 621
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 623
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberInt:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberLong:J

    goto/16 :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    .line 625
    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->BI_MIN_LONG:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->BI_MAX_LONG:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    .line 626
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    .line 627
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->reportOverflowLong()V

    .line 629
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberLong:J

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v0, 0x8

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    if-eqz v1, :cond_6

    .line 631
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberDouble:D

    cmpg-double v6, v0, v4

    if-ltz v6, :cond_4

    cmpl-double v4, v0, v2

    if-lez v4, :cond_5

    .line 632
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->reportOverflowLong()V

    .line 634
    :cond_5
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberDouble:D

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberLong:J

    goto :goto_0

    :cond_6
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_9

    .line 636
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberFloat:F

    float-to-double v6, v0

    cmpg-double v1, v6, v4

    if-ltz v1, :cond_7

    float-to-double v0, v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_8

    .line 637
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->reportOverflowInt()V

    .line 639
    :cond_8
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberFloat:F

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberLong:J

    goto :goto_0

    :cond_9
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    .line 641
    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->BD_MIN_LONG:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_a

    sget-object v0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->BD_MAX_LONG:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 642
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_b

    .line 643
    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->reportOverflowLong()V

    .line 645
    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberLong:J

    goto :goto_0

    .line 647
    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInternal()V

    .line 649
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    return-void
.end method

.method public final getBigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .line 515
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parseNumericValue()V

    .line 519
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->convertNumberToBigInteger()V

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 12

    .line 342
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_currInputProcessed:J

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    int-to-long v2, v2

    add-long v6, v0, v2

    .line 343
    new-instance v4, Lcom/fasterxml/jackson/core/JsonLocation;

    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v5

    const/4 v10, -0x1

    long-to-int v11, v6

    const-wide/16 v8, -0x1

    invoke-direct/range {v4 .. v11}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v4
.end method

.method public final getCurrentName()Ljava/lang/String;
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 356
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDecimalValue()Ljava/math/BigDecimal;
    .locals 2

    .line 563
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parseNumericValue()V

    .line 567
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->convertNumberToBigDecimal()V

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getDoubleValue()D
    .locals 2

    .line 549
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parseNumericValue()V

    .line 553
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 554
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->convertNumberToDouble()V

    .line 557
    :cond_1
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberDouble:D

    return-wide v0
.end method

.method public final getFloatValue()F
    .locals 2

    .line 529
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parseNumericValue()V

    .line 533
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    .line 534
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->convertNumberToFloat()V

    .line 543
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberFloat:F

    return v0
.end method

.method public final getIntValue()I
    .locals 2

    .line 487
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parseNumericValue()V

    .line 491
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->convertNumberToInt()V

    .line 495
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberInt:I

    return v0
.end method

.method public final getLongValue()J
    .locals 2

    .line 501
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parseNumericValue()V

    .line 505
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->convertNumberToLong()V

    .line 509
    :cond_1
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberLong:J

    return-wide v0
.end method

.method public final getNumberValue()Ljava/lang/Number;
    .locals 2

    .line 455
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parseNumericValue()V

    .line 458
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberType:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 471
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    return-object v0

    .line 468
    :cond_1
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberDouble:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 466
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberFloat:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 464
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    return-object v0

    .line 462
    :cond_4
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 460
    :cond_5
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberInt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getParsingContext()Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    return-object v0
.end method
