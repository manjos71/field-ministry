.class public Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
.super Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;
    }
.end annotation


# instance fields
.field protected _bufferRecyclable:Z

.field protected _inputBuffer:[B

.field protected _inputStream:Ljava/io/InputStream;

.field protected _tokenIncomplete:Z

.field protected _typeAsInt:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;IILcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;Ljava/io/InputStream;[BIIZ)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;IILcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)V

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 131
    iput-object p6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    .line 132
    iput-object p7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 133
    iput p8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 134
    iput p9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    .line 135
    iput-boolean p10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_bufferRecyclable:Z

    return-void
.end method

.method private final _addDecodedToSymbols(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 1414
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quad1:I

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x9

    if-ge p1, v0, :cond_1

    .line 1417
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quad1:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quad2:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0xd

    if-ge p1, v0, :cond_2

    .line 1420
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quad1:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quad2:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quad3:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p1, p1, 0x2

    .line 1423
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quadBuffer:[I

    invoke-virtual {v0, p2, v1, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final _addSeenStringValue()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    .line 509
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishToken()V

    .line 510
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 511
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValueCount:I

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValues:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 513
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValueCount:I

    aput-object v0, v2, v1

    goto :goto_0

    .line 515
    :cond_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_expandSeenStringValues(Ljava/lang/String;)V

    .line 517
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method private final _decodeLongAscii()V
    .locals 7

    .line 2286
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2289
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v3, v4, :cond_0

    .line 2290
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 2292
    :cond_0
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 2293
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    sub-int/2addr v4, v3

    .line 2294
    array-length v5, v0

    if-lt v2, v5, :cond_1

    .line 2295
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v2, 0x0

    .line 2298
    :cond_1
    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2300
    :goto_1
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v5, v3

    const/4 v5, -0x4

    if-ne v3, v5, :cond_2

    .line 2302
    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 2309
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    return-void

    :cond_2
    add-int/lit8 v5, v2, 0x1

    int-to-char v3, v3

    .line 2305
    aput-char v3, v0, v2

    add-int/lit8 v4, v4, -0x1

    if-gtz v4, :cond_3

    .line 2307
    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    move v2, v5

    goto :goto_0

    :cond_3
    move v2, v5

    move v3, v6

    goto :goto_1
.end method

.method private final _decodeLongUnicode()V
    .locals 9

    .line 2315
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    .line 2316
    sget-object v1, Lcom/fasterxml/jackson/dataformat/smile/SmileConstants;->sUtf8UnitLengths:[I

    .line 2318
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2325
    :goto_0
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 2326
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 2327
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 2328
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 2330
    :cond_0
    array-length v6, v0

    if-lt v4, v6, :cond_1

    .line 2331
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v4, 0x0

    .line 2334
    :cond_1
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    .line 2336
    array-length v7, v0

    sub-int/2addr v7, v4

    add-int/2addr v7, v5

    if-ge v7, v6, :cond_2

    move v6, v7

    :cond_2
    :goto_1
    if-ge v5, v6, :cond_b

    add-int/lit8 v7, v5, 0x1

    .line 2342
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 2343
    aget v8, v1, v5

    if-eqz v8, :cond_a

    .line 2344
    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    const/16 v6, 0xfc

    if-ne v5, v6, :cond_3

    .line 2390
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    return-void

    :cond_3
    const/4 v6, 0x1

    if-eq v8, v6, :cond_8

    const/4 v6, 0x2

    if-eq v8, v6, :cond_6

    const/4 v6, 0x3

    if-eq v8, v6, :cond_4

    .line 2380
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidChar(I)V

    goto :goto_3

    .line 2368
    :cond_4
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeUtf8_4(I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v7, v5, 0xa

    const v8, 0xd800

    or-int/2addr v7, v8

    int-to-char v7, v7

    .line 2370
    aput-char v7, v0, v4

    .line 2371
    array-length v4, v0

    if-lt v6, v4, :cond_5

    .line 2372
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    move v4, v6

    :goto_2
    and-int/lit16 v5, v5, 0x3ff

    const v6, 0xdc00

    or-int/2addr v5, v6

    goto :goto_3

    .line 2361
    :cond_6
    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    sub-int/2addr v8, v7

    if-lt v8, v6, :cond_7

    .line 2362
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeUtf8_3fast(I)I

    move-result v5

    goto :goto_3

    .line 2364
    :cond_7
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeUtf8_3(I)I

    move-result v5

    goto :goto_3

    .line 2358
    :cond_8
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeUtf8_2(I)I

    move-result v5

    .line 2383
    :goto_3
    array-length v6, v0

    if-lt v4, v6, :cond_9

    .line 2384
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v4, 0x0

    :cond_9
    add-int/lit8 v6, v4, 0x1

    int-to-char v5, v5

    .line 2388
    aput-char v5, v0, v4

    move v4, v6

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v8, v4, 0x1

    int-to-char v5, v5

    .line 2347
    aput-char v5, v0, v4

    move v5, v7

    move v4, v8

    goto :goto_1

    .line 2349
    :cond_b
    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    goto/16 :goto_0
.end method

.method private final _decodeLongUnicodeName([III)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    and-int/lit8 v4, v2, 0x3

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-ge v4, v7, :cond_0

    add-int/lit8 v8, v3, -0x1

    .line 1527
    aget v9, v1, v8

    rsub-int/lit8 v10, v4, 0x4

    shl-int/2addr v10, v6

    shl-int v10, v9, v10

    .line 1529
    aput v10, v1, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 1534
    :goto_0
    iget-object v8, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v2, :cond_e

    shr-int/lit8 v12, v10, 0x2

    .line 1538
    aget v12, v1, v12

    and-int/lit8 v13, v10, 0x3

    rsub-int/lit8 v13, v13, 0x3

    shl-int/2addr v13, v6

    shr-int/2addr v12, v13

    and-int/lit16 v13, v12, 0xff

    add-int/lit8 v14, v10, 0x1

    const/16 v15, 0x7f

    if-le v13, v15, :cond_c

    and-int/lit16 v15, v12, 0xe0

    const/16 v16, 0x3

    const/16 v6, 0xc0

    const/4 v5, 0x1

    if-ne v15, v6, :cond_1

    and-int/lit8 v6, v12, 0x1f

    :goto_2
    const/4 v12, 0x1

    goto :goto_3

    :cond_1
    and-int/lit16 v6, v12, 0xf0

    const/16 v15, 0xe0

    if-ne v6, v15, :cond_2

    and-int/lit8 v6, v12, 0xf

    const/4 v12, 0x2

    goto :goto_3

    :cond_2
    and-int/lit16 v6, v12, 0xf8

    const/16 v15, 0xf0

    if-ne v6, v15, :cond_3

    and-int/lit8 v6, v12, 0x7

    const/4 v12, 0x3

    goto :goto_3

    .line 1555
    :cond_3
    invoke-virtual {v0, v13}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidInitial(I)V

    const/4 v6, 0x1

    goto :goto_2

    :goto_3
    add-int v13, v14, v12

    if-le v13, v2, :cond_4

    .line 1559
    const-string v13, " in long field name"

    sget-object v15, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v13, v15}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    :cond_4
    shr-int/lit8 v13, v14, 0x2

    .line 1563
    aget v13, v1, v13

    and-int/lit8 v14, v14, 0x3

    rsub-int/lit8 v14, v14, 0x3

    shl-int/lit8 v14, v14, 0x3

    shr-int/2addr v13, v14

    add-int/lit8 v14, v10, 0x2

    and-int/lit16 v15, v13, 0xc0

    const/16 v7, 0x80

    if-eq v15, v7, :cond_5

    .line 1569
    invoke-virtual {v0, v13}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(I)V

    :cond_5
    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v13, v13, 0x3f

    or-int/2addr v6, v13

    if-le v12, v5, :cond_9

    shr-int/lit8 v5, v14, 0x2

    .line 1573
    aget v5, v1, v5

    and-int/lit8 v13, v14, 0x3

    rsub-int/lit8 v13, v13, 0x3

    shl-int/lit8 v13, v13, 0x3

    shr-int/2addr v5, v13

    add-int/lit8 v14, v10, 0x3

    and-int/lit16 v13, v5, 0xc0

    if-eq v13, v7, :cond_6

    .line 1579
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(I)V

    :cond_6
    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    const/4 v6, 0x2

    if-le v12, v6, :cond_8

    shr-int/lit8 v6, v14, 0x2

    .line 1583
    aget v6, v1, v6

    and-int/lit8 v13, v14, 0x3

    rsub-int/lit8 v13, v13, 0x3

    shl-int/lit8 v13, v13, 0x3

    shr-int/2addr v6, v13

    add-int/lit8 v14, v10, 0x4

    and-int/lit16 v10, v6, 0xc0

    if-eq v10, v7, :cond_7

    and-int/lit16 v7, v6, 0xff

    .line 1588
    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(I)V

    :cond_7
    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    move v13, v5

    :goto_4
    const/4 v6, 0x2

    goto :goto_5

    :cond_8
    move v13, v5

    goto :goto_5

    :cond_9
    move v13, v6

    goto :goto_4

    :goto_5
    if-le v12, v6, :cond_b

    const/high16 v5, 0x10000

    sub-int/2addr v13, v5

    .line 1595
    array-length v5, v8

    if-lt v11, v5, :cond_a

    .line 1596
    iget-object v5, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v8

    :cond_a
    add-int/lit8 v5, v11, 0x1

    shr-int/lit8 v6, v13, 0xa

    const v7, 0xd800

    add-int/2addr v6, v7

    int-to-char v6, v6

    .line 1598
    aput-char v6, v8, v11

    and-int/lit16 v6, v13, 0x3ff

    const v7, 0xdc00

    or-int v13, v6, v7

    move v11, v5

    :cond_b
    :goto_6
    move v10, v14

    goto :goto_7

    :cond_c
    const/16 v16, 0x3

    goto :goto_6

    .line 1602
    :goto_7
    array-length v5, v8

    if-lt v11, v5, :cond_d

    .line 1603
    iget-object v5, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v5

    move-object v8, v5

    :cond_d
    add-int/lit8 v5, v11, 0x1

    int-to-char v6, v13

    .line 1605
    aput-char v6, v8, v11

    move v11, v5

    const/4 v6, 0x3

    const/4 v7, 0x4

    goto/16 :goto_1

    .line 1609
    :cond_e
    new-instance v2, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, v8, v5, v11}, Ljava/lang/String;-><init>([CII)V

    const/4 v5, 0x4

    if-ge v4, v5, :cond_f

    add-int/lit8 v4, v3, -0x1

    .line 1612
    aput v9, v1, v4

    .line 1614
    :cond_f
    iget-object v4, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v4, v2, v1, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private final _decodeShortAsciiName(I)Ljava/lang/String;
    .locals 7

    .line 1430
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    .line 1432
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 1433
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int v3, v2, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 1458
    aget-byte v6, v1, v2

    int-to-char v6, v6

    aput-char v6, v0, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_0

    .line 1460
    :cond_0
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 1461
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentAndReturn(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final _decodeShortUnicodeName(I)Ljava/lang/String;
    .locals 10

    .line 1475
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    .line 1476
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int v2, v1, p1

    .line 1477
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 1478
    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/SmileConstants;->sUtf8UnitLengths:[I

    .line 1479
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    add-int/2addr p1, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v1, p1, :cond_4

    add-int/lit8 v5, v1, 0x1

    .line 1481
    aget-byte v6, v3, v1

    and-int/lit16 v7, v6, 0xff

    .line 1482
    aget v8, v2, v7

    if-eqz v8, :cond_3

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    .line 1505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid byte "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in short Unicode text block"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x12

    add-int/lit8 v7, v1, 0x2

    .line 1495
    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v5, v6

    add-int/lit8 v6, v1, 0x3

    aget-byte v7, v3, v7

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v5, v7

    add-int/lit8 v1, v1, 0x4

    aget-byte v6, v3, v6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    const/high16 v6, 0x10000

    sub-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v7, v5, 0xa

    const v8, 0xd800

    or-int/2addr v7, v8

    int-to-char v7, v7

    .line 1501
    aput-char v7, v0, v4

    and-int/lit16 v4, v5, 0x3ff

    const v5, 0xdc00

    or-int v7, v4, v5

    move v4, v6

    goto :goto_2

    :cond_1
    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0xc

    add-int/lit8 v7, v1, 0x2

    .line 1490
    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x3

    aget-byte v6, v3, v7

    and-int/lit8 v6, v6, 0x3f

    or-int v7, v5, v6

    goto :goto_2

    :cond_2
    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x6

    add-int/lit8 v1, v1, 0x2

    .line 1487
    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x3f

    or-int v7, v6, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v5

    :goto_2
    add-int/lit8 v5, v4, 0x1

    int-to-char v6, v7

    .line 1508
    aput-char v6, v0, v4

    move v4, v5

    goto/16 :goto_0

    .line 1510
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentAndReturn(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final _decodeUtf8_2(I)I
    .locals 4

    .line 2554
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2555
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 2557
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v3, 0x80

    if-eq v1, v3, :cond_1

    and-int/lit16 v1, v0, 0xff

    .line 2559
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    :cond_1
    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    return p1
.end method

.method private final _decodeUtf8_3(I)I
    .locals 4

    .line 2566
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2567
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    :cond_0
    and-int/lit8 p1, p1, 0xf

    .line 2570
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v3, 0x80

    if-eq v1, v3, :cond_1

    and-int/lit16 v1, v0, 0xff

    .line 2572
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    :cond_1
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 2575
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_2

    .line 2576
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 2578
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    and-int/lit16 v1, v0, 0xff

    .line 2580
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    :cond_3
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    return p1
.end method

.method private final _decodeUtf8_3fast(I)I
    .locals 4

    and-int/lit8 p1, p1, 0xf

    .line 2589
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v3, 0x80

    if-eq v1, v3, :cond_0

    and-int/lit16 v1, v0, 0xff

    .line 2591
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    :cond_0
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 2594
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    and-int/lit16 v1, v0, 0xff

    .line 2596
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    :cond_1
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    return p1
.end method

.method private final _decodeUtf8_4(I)I
    .locals 4

    .line 2608
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2609
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 2611
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v3, 0x80

    if-eq v1, v3, :cond_1

    and-int/lit16 v1, v0, 0xff

    .line 2613
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    :cond_1
    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 2617
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_2

    .line 2618
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 2620
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    and-int/lit16 v1, v0, 0xff

    .line 2622
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    :cond_3
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 2625
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_4

    .line 2626
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 2628
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_5

    and-int/lit16 v1, v0, 0xff

    .line 2630
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    :cond_5
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    const/high16 v0, 0x10000

    sub-int/2addr p1, v0

    return p1
.end method

.method private final _eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 2690
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2691
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_handleEOF()V

    .line 2693
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->close()V

    const/4 v0, 0x0

    .line 2694
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method private final _expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1394
    array-length v0, p1

    const/16 v1, 0x40

    if-nez v0, :cond_1

    .line 1397
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->allocSeenNamesBuffer()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-nez p1, :cond_0

    .line 1399
    new-array p1, v1, [Ljava/lang/String;

    :cond_0
    return-object p1

    :cond_1
    const/16 v2, 0x400

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 1403
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    return-object p1

    :cond_2
    if-ne v0, v1, :cond_3

    const/16 v2, 0x100

    .line 1406
    :cond_3
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private final _expandSeenStringValues(Ljava/lang/String;)V
    .locals 4

    .line 522
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValues:[Ljava/lang/String;

    .line 523
    array-length v1, v0

    const/16 v2, 0x40

    if-nez v1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->allocSeenStringValuesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_3

    .line 528
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v3, 0x400

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    .line 532
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValueCount:I

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    const/16 v3, 0x100

    .line 535
    :cond_2
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 537
    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValues:[Ljava/lang/String;

    .line 538
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValueCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValueCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method private final _findDecodedFromSymbols(I)Ljava/lang/String;
    .locals 9

    .line 1696
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 1697
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadToHaveAtLeast(I)V

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge p1, v0, :cond_2

    .line 1701
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 1702
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 1703
    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    if-le p1, v2, :cond_1

    shl-int/lit8 v2, v4, 0x8

    add-int/lit8 v4, v0, 0x1

    .line 1705
    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    if-le p1, v1, :cond_1

    shl-int/lit8 v1, v4, 0x8

    add-int/lit8 v2, v0, 0x2

    .line 1707
    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    add-int v4, v1, v2

    const/4 v1, 0x3

    if-le p1, v1, :cond_1

    shl-int/lit8 p1, v4, 0x8

    add-int/2addr v0, v1

    .line 1709
    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    add-int v4, p1, v0

    .line 1713
    :cond_1
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quad1:I

    .line 1714
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1717
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 1718
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    .line 1721
    aget-byte v6, v3, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v4, 0x2

    .line 1722
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v4, 0x3

    .line 1723
    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v7, v4, 0x4

    .line 1724
    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    const/16 v6, 0x9

    if-ge p1, v6, :cond_5

    add-int/lit8 v6, v4, 0x5

    .line 1727
    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr p1, v0

    if-lez p1, :cond_4

    shl-int/lit8 v0, v7, 0x8

    add-int/lit8 v7, v4, 0x6

    .line 1730
    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v0, v6

    if-le p1, v2, :cond_3

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v4, 0x7

    .line 1732
    aget-byte v2, v3, v7

    and-int/lit16 v2, v2, 0xff

    add-int v7, v0, v2

    if-le p1, v1, :cond_4

    shl-int/lit8 p1, v7, 0x8

    .line 1734
    aget-byte v0, v3, v4

    and-int/lit16 v0, v0, 0xff

    add-int v7, p1, v0

    goto :goto_0

    :cond_3
    move v7, v0

    .line 1738
    :cond_4
    :goto_0
    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quad1:I

    .line 1739
    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quad2:I

    .line 1740
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {p1, v5, v7}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    add-int/lit8 v0, v4, 0x5

    .line 1743
    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v4, 0x6

    .line 1744
    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v7

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v7, v4, 0x7

    .line 1745
    aget-byte v8, v3, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v0, v8

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v8, v4, 0x8

    .line 1746
    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0xd

    if-ge p1, v7, :cond_8

    add-int/lit8 v7, v4, 0x9

    .line 1749
    aget-byte v8, v3, v8

    and-int/lit16 v8, v8, 0xff

    sub-int/2addr p1, v6

    if-lez p1, :cond_7

    shl-int/lit8 v6, v8, 0x8

    add-int/lit8 v8, v4, 0xa

    .line 1752
    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    if-le p1, v2, :cond_6

    shl-int/lit8 v2, v6, 0x8

    add-int/lit8 v4, v4, 0xb

    .line 1754
    aget-byte v6, v3, v8

    and-int/lit16 v6, v6, 0xff

    add-int v8, v2, v6

    if-le p1, v1, :cond_7

    shl-int/lit8 p1, v8, 0x8

    .line 1756
    aget-byte v1, v3, v4

    and-int/lit16 v1, v1, 0xff

    add-int v8, p1, v1

    goto :goto_1

    :cond_6
    move v8, v6

    .line 1760
    :cond_7
    :goto_1
    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quad1:I

    .line 1761
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quad2:I

    .line 1762
    iput v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quad3:I

    .line 1763
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {p1, v5, v0, v8}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1765
    :cond_8
    invoke-direct {p0, p1, v5, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_findDecodedLong(III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final _findDecodedLong(III)Ljava/lang/String;
    .locals 7

    add-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    shr-int/2addr v0, v1

    .line 1776
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quadBuffer:[I

    array-length v3, v2

    if-le v0, v3, :cond_0

    .line 1777
    invoke-static {v2, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_growArrayTo([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quadBuffer:[I

    .line 1780
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quadBuffer:[I

    const/4 v2, 0x0

    aput p2, v0, v2

    const/4 p2, 0x1

    .line 1781
    aput p3, v0, p2

    .line 1785
    iget p3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, -0x8

    .line 1788
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    const/4 v2, 0x2

    :goto_0
    add-int/lit8 v3, p3, 0x1

    .line 1790
    aget-byte v4, v0, p3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p3, 0x2

    .line 1791
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p3, 0x3

    .line 1792
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, p3, 0x4

    .line 1793
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 1794
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quadBuffer:[I

    add-int/lit8 v6, v2, 0x1

    aput v3, v4, v2

    add-int/lit8 p1, p1, -0x4

    const/4 v3, 0x3

    if-gt p1, v3, :cond_3

    if-lez p1, :cond_2

    .line 1798
    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    if-le p1, p2, :cond_1

    shl-int/lit8 p2, v3, 0x8

    add-int/lit8 v3, p3, 0x5

    .line 1800
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, p2

    if-le p1, v1, :cond_1

    shl-int/lit8 p1, v3, 0x8

    add-int/lit8 p3, p3, 0x6

    .line 1802
    aget-byte p2, v0, p3

    and-int/lit16 p2, p2, 0xff

    add-int v3, p1, p2

    :cond_1
    add-int/2addr v2, v1

    .line 1805
    aput v3, v4, v6

    move v6, v2

    .line 1807
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {p1, v4, v6}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    move p3, v5

    move v2, v6

    goto :goto_0
.end method

.method private final _finishBigDecimal()V
    .locals 4

    .line 2142
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_readUnsignedVInt()I

    move-result v0

    invoke-static {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagDecode(I)I

    move-result v0

    .line 2143
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_read7BitBinaryWithLength()[B

    move-result-object v1

    .line 2144
    new-instance v2, Ljava/math/BigDecimal;

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v2, v3, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    const/16 v0, 0x10

    .line 2145
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    .line 2146
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberType:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-void
.end method

.method private final _finishBigInteger()V
    .locals 2

    .line 2101
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_read7BitBinaryWithLength()[B

    move-result-object v0

    .line 2102
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberBigInt:Ljava/math/BigInteger;

    const/4 v0, 0x4

    .line 2103
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    .line 2104
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberType:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-void
.end method

.method private final _finishDouble()V
    .locals 6

    .line 2124
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_fourBytesToInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x1c

    shl-long/2addr v0, v2

    .line 2125
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_fourBytesToInt()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 2127
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 2128
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    :cond_0
    const/4 v2, 0x7

    shl-long/2addr v0, v2

    .line 2130
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v3, v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 2131
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v5, v3, :cond_1

    .line 2132
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    :cond_1
    shl-long/2addr v0, v2

    .line 2134
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 2135
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberDouble:D

    .line 2136
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->DOUBLE:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberType:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    const/16 v0, 0x8

    .line 2137
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    return-void
.end method

.method private final _finishFloat()V
    .locals 4

    .line 2110
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_fourBytesToInt()I

    move-result v0

    .line 2111
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 2112
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    :cond_0
    shl-int/lit8 v0, v0, 0x7

    .line 2114
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    .line 2115
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 2116
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberFloat:F

    .line 2117
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberType:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    const/16 v0, 0x20

    .line 2118
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    return-void
.end method

.method private final _finishInt()V
    .locals 6

    const/4 v0, 0x1

    .line 1937
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    .line 1938
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberType:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    .line 1939
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x5

    .line 1940
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1941
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishIntSlow()V

    return-void

    .line 1944
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v3, v1, v0

    if-gez v3, :cond_1

    and-int/lit8 v0, v3, 0x3f

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v0, 0x2

    .line 1949
    aget-byte v2, v1, v2

    if-ltz v2, :cond_4

    shl-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v2

    add-int/lit8 v2, v0, 0x3

    .line 1952
    aget-byte v4, v1, v4

    if-ltz v4, :cond_3

    shl-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x4

    .line 1955
    aget-byte v2, v1, v2

    if-ltz v2, :cond_4

    shl-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x5

    .line 1959
    aget-byte v2, v1, v4

    if-ltz v2, :cond_2

    .line 1961
    const-string v1, "Corrupt input; 32-bit VInt extends beyond 5 data bytes"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    :cond_2
    move v4, v0

    goto :goto_0

    :cond_3
    move v5, v4

    move v4, v2

    move v2, v5

    :cond_4
    :goto_0
    shl-int/lit8 v0, v3, 0x6

    and-int/lit8 v1, v2, 0x3f

    add-int/2addr v0, v1

    move v2, v4

    .line 1968
    :goto_1
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 1969
    invoke-static {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagDecode(I)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberInt:I

    return-void
.end method

.method private final _finishIntSlow()V
    .locals 4

    .line 1974
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1975
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    if-gez v0, :cond_1

    and-int/lit8 v0, v0, 0x3f

    goto :goto_0

    .line 1982
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v2, v1, :cond_2

    .line 1983
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 1985
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_6

    shl-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    .line 1988
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v3, v1, :cond_3

    .line 1989
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 1991
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_6

    shl-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    .line 1994
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v3, v1, :cond_4

    .line 1995
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 1997
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_6

    shl-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    .line 2001
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v3, v1, :cond_5

    .line 2002
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 2004
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_6

    .line 2006
    const-string v2, "Corrupt input; 32-bit VInt extends beyond 5 data bytes"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    :cond_6
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v0, v1

    .line 2013
    :goto_0
    invoke-static {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagDecode(I)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberInt:I

    return-void
.end method

.method private final _finishLong()V
    .locals 9

    const/4 v0, 0x2

    .line 2018
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    .line 2019
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberType:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    .line 2020
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0xb

    .line 2022
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 2023
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishLongSlow()V

    return-void

    .line 2026
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v2, v0

    const/4 v5, 0x7

    shl-int/2addr v4, v5

    add-int/lit8 v6, v0, 0x2

    .line 2027
    aget-byte v3, v2, v3

    add-int/2addr v4, v3

    shl-int/lit8 v3, v4, 0x7

    add-int/lit8 v4, v0, 0x3

    .line 2028
    aget-byte v6, v2, v6

    add-int/2addr v3, v6

    shl-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x4

    .line 2029
    aget-byte v2, v2, v4

    add-int/2addr v3, v2

    int-to-long v2, v3

    .line 2034
    :goto_0
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v4, v0

    if-gez v0, :cond_1

    const/4 v1, 0x6

    shl-long v1, v2, v1

    and-int/lit8 v0, v0, 0x3f

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 2037
    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 2038
    invoke-static {v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagDecode(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberLong:J

    return-void

    :cond_1
    shl-long/2addr v2, v5

    int-to-long v7, v0

    add-long/2addr v2, v7

    if-lt v6, v1, :cond_2

    .line 2043
    const-string v0, "Corrupt input; 64-bit VInt extends beyond 11 data bytes"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method private final _finishLongSlow()V
    .locals 5

    .line 2049
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_fourBytesToInt()I

    move-result v0

    int-to-long v0, v0

    .line 2052
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 2053
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 2055
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v2, v2, v3

    if-gez v2, :cond_1

    const/4 v3, 0x6

    shl-long/2addr v0, v3

    and-int/lit8 v2, v2, 0x3f

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 2058
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagDecode(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberLong:J

    return-void

    :cond_1
    const/4 v3, 0x7

    shl-long/2addr v0, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private final _finishRawBinary()V
    .locals 6

    .line 2395
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_readUnsignedVInt()I

    move-result v0

    .line 2396
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_binaryValue:[B

    .line 2397
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 2398
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    :cond_0
    const/4 v1, 0x0

    .line 2402
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2403
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_binaryValue:[B

    invoke-static {v3, v4, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2404
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    if-gtz v0, :cond_1

    return-void

    .line 2410
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    goto :goto_0
.end method

.method private final _fourBytesToInt()I
    .locals 5

    .line 2067
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x3

    .line 2068
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 2069
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_fourBytesToIntSlow()I

    move-result v0

    return v0

    .line 2071
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v3, v1, v0

    shl-int/lit8 v3, v3, 0x7

    add-int/lit8 v4, v0, 0x2

    .line 2072
    aget-byte v2, v1, v2

    add-int/2addr v3, v2

    shl-int/lit8 v2, v3, 0x7

    add-int/lit8 v3, v0, 0x3

    .line 2073
    aget-byte v4, v1, v4

    add-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x7

    add-int/lit8 v0, v0, 0x4

    .line 2074
    aget-byte v1, v1, v3

    add-int/2addr v2, v1

    .line 2075
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    return v2
.end method

.method private final _fourBytesToIntSlow()I
    .locals 4

    .line 2081
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2082
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 2084
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2085
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v2, v1, :cond_1

    .line 2086
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    :cond_1
    shl-int/lit8 v0, v0, 0x7

    .line 2088
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    .line 2089
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v3, v1, :cond_2

    .line 2090
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    :cond_2
    shl-int/lit8 v0, v0, 0x7

    .line 2092
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    .line 2093
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v3, v1, :cond_3

    .line 2094
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    :cond_3
    shl-int/lit8 v0, v0, 0x7

    .line 2096
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private static _growArrayTo([II)[I
    .locals 0

    add-int/lit8 p1, p1, 0x4

    if-nez p0, :cond_0

    .line 1813
    new-array p0, p1, [I

    return-object p0

    .line 1815
    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method private final _handleLongFieldName()V
    .locals 7

    .line 1620
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1626
    :goto_0
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v4, v5, :cond_0

    .line 1627
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 1629
    :cond_0
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v4, v0, v4

    const/4 v6, -0x4

    if-ne v6, v4, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit16 v3, v4, 0xff

    .line 1635
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v5, v4, :cond_2

    .line 1636
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 1638
    :cond_2
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v4, v0, v4

    if-ne v6, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 1644
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v5, v4, :cond_4

    .line 1645
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 1647
    :cond_4
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v4, v0, v4

    if-ne v6, v4, :cond_5

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 1653
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v5, v4, :cond_6

    .line 1654
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 1656
    :cond_6
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v4, v0, v4

    if-ne v6, v4, :cond_c

    const/4 v1, 0x3

    :goto_1
    shl-int/lit8 v0, v2, 0x2

    if-lez v1, :cond_8

    .line 1670
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quadBuffer:[I

    array-length v5, v4

    if-lt v2, v5, :cond_7

    .line 1671
    array-length v5, v4

    add-int/lit16 v5, v5, 0x100

    invoke-static {v4, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_growArrayTo([II)[I

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quadBuffer:[I

    .line 1673
    :cond_7
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quadBuffer:[I

    add-int/lit8 v5, v2, 0x1

    aput v3, v4, v2

    add-int/2addr v0, v1

    move v2, v5

    .line 1677
    :cond_8
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quadBuffer:[I

    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1679
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quadBuffer:[I

    invoke-direct {p0, v1, v0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeLongUnicodeName([III)Ljava/lang/String;

    move-result-object v1

    .line 1681
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1682
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    array-length v3, v0

    if-lt v2, v3, :cond_a

    .line 1683
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    .line 1685
    :cond_a
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    aput-object v1, v0, v2

    .line 1687
    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    return-void

    :cond_c
    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 1662
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quadBuffer:[I

    array-length v5, v4

    if-lt v2, v5, :cond_d

    .line 1663
    array-length v5, v4

    add-int/lit16 v5, v5, 0x100

    invoke-static {v4, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_growArrayTo([II)[I

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quadBuffer:[I

    .line 1665
    :cond_d
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_quadBuffer:[I

    add-int/lit8 v5, v2, 0x1

    aput v3, v4, v2

    move v2, v5

    goto/16 :goto_0
.end method

.method private final _handleSharedString(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    .line 500
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValueCount:I

    if-lt p1, v0, :cond_0

    .line 501
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidSharedStringValue(I)V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValues:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithString(Ljava/lang/String;)V

    .line 504
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1
.end method

.method private final _nextByteGuaranteed()B
    .locals 3

    .line 229
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 230
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-ge v0, v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    aget-byte v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 232
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    return v1

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 236
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private final _read7BitBinaryWithLength()[B
    .locals 11

    .line 2167
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_readUnsignedVInt()I

    move-result v0

    .line 2168
    new-array v1, v0, [B

    add-int/lit8 v2, v0, -0x7

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v2, :cond_1

    .line 2174
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    sub-int/2addr v4, v5

    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    .line 2175
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadToHaveAtLeast(I)V

    .line 2177
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v8, v4, v6

    shl-int/lit8 v8, v8, 0x19

    add-int/lit8 v9, v6, 0x2

    iput v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x12

    add-int/2addr v8, v7

    add-int/lit8 v7, v6, 0x3

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v9, v4, v9

    shl-int/lit8 v9, v9, 0xb

    add-int/2addr v8, v9

    add-int/lit8 v9, v6, 0x4

    iput v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x4

    add-int/2addr v8, v7

    add-int/lit8 v7, v6, 0x5

    .line 2181
    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v9, v4, v9

    shr-int/lit8 v10, v9, 0x3

    add-int/2addr v8, v10

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x15

    add-int/lit8 v10, v6, 0x6

    .line 2183
    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0xe

    add-int/2addr v9, v7

    add-int/lit8 v7, v6, 0x7

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v10, v4, v10

    shl-int/lit8 v10, v10, 0x7

    add-int/2addr v9, v10

    add-int/2addr v6, v5

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v4, v4, v7

    add-int/2addr v9, v4

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v5, v8, 0x18

    int-to-byte v5, v5

    .line 2188
    aput-byte v5, v1, v3

    add-int/lit8 v5, v3, 0x2

    shr-int/lit8 v6, v8, 0x10

    int-to-byte v6, v6

    .line 2189
    aput-byte v6, v1, v4

    add-int/lit8 v4, v3, 0x3

    shr-int/lit8 v6, v8, 0x8

    int-to-byte v6, v6

    .line 2190
    aput-byte v6, v1, v5

    add-int/lit8 v5, v3, 0x4

    int-to-byte v6, v8

    .line 2191
    aput-byte v6, v1, v4

    add-int/lit8 v4, v3, 0x5

    shr-int/lit8 v6, v9, 0x10

    int-to-byte v6, v6

    .line 2192
    aput-byte v6, v1, v5

    add-int/lit8 v5, v3, 0x6

    shr-int/lit8 v6, v9, 0x8

    int-to-byte v6, v6

    .line 2193
    aput-byte v6, v1, v4

    add-int/lit8 v3, v3, 0x7

    int-to-byte v4, v9

    .line 2194
    aput-byte v4, v1, v5

    goto/16 :goto_0

    :cond_1
    sub-int/2addr v0, v3

    if-lez v0, :cond_4

    .line 2199
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    sub-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x1

    if-ge v2, v4, :cond_2

    .line 2200
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadToHaveAtLeast(I)V

    .line 2202
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v2, v2, v4

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v0, :cond_3

    shl-int/lit8 v2, v2, 0x7

    .line 2204
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v5, v5, v6

    add-int/2addr v2, v5

    add-int/lit8 v5, v3, 0x1

    rsub-int/lit8 v6, v4, 0x7

    shr-int v6, v2, v6

    int-to-byte v6, v6

    .line 2205
    aput-byte v6, v1, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_1

    :cond_3
    shl-int v0, v2, v0

    .line 2209
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v2, v2, v4

    add-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    :cond_4
    return-object v1
.end method

.method private final _readUnsignedVInt()I
    .locals 4

    const/4 v0, 0x0

    .line 2153
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 2154
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 2156
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    if-gez v1, :cond_1

    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v0, v1

    return v0

    :cond_1
    shl-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected _closeInput()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    :cond_2
    return-void
.end method

.method protected final _decodeShortAsciiValue(I)Ljava/lang/String;
    .locals 7

    .line 2222
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 2223
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadToHaveAtLeast(I)V

    .line 2226
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    .line 2228
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 2229
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int v3, v2, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 2233
    aget-byte v6, v1, v2

    int-to-char v6, v6

    aput-char v6, v0, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_0

    .line 2235
    :cond_1
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 2236
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentAndReturn(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final _decodeShortUnicodeValue(I)Ljava/lang/String;
    .locals 10

    .line 2241
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 2242
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadToHaveAtLeast(I)V

    .line 2245
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    .line 2246
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int v2, v1, p1

    .line 2247
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 2248
    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/SmileConstants;->sUtf8UnitLengths:[I

    .line 2249
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    add-int/2addr p1, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v1, p1, :cond_5

    add-int/lit8 v5, v1, 0x1

    .line 2251
    aget-byte v6, v3, v1

    and-int/lit16 v7, v6, 0xff

    .line 2252
    aget v8, v2, v7

    if-eqz v8, :cond_4

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    .line 2275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid byte "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in short Unicode text block"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x12

    add-int/lit8 v7, v1, 0x2

    .line 2265
    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v5, v6

    add-int/lit8 v6, v1, 0x3

    aget-byte v7, v3, v7

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v5, v7

    add-int/lit8 v1, v1, 0x4

    aget-byte v6, v3, v6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    const/high16 v6, 0x10000

    sub-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v7, v5, 0xa

    const v8, 0xd800

    or-int/2addr v7, v8

    int-to-char v7, v7

    .line 2271
    aput-char v7, v0, v4

    and-int/lit16 v4, v5, 0x3ff

    const v5, 0xdc00

    or-int v7, v4, v5

    move v4, v6

    goto :goto_2

    :cond_2
    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0xc

    add-int/lit8 v7, v1, 0x2

    .line 2260
    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x3

    aget-byte v6, v3, v7

    and-int/lit8 v6, v6, 0x3f

    or-int v7, v5, v6

    goto :goto_2

    :cond_3
    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x6

    add-int/lit8 v1, v1, 0x2

    .line 2257
    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x3f

    or-int v7, v6, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v5

    :goto_2
    add-int/lit8 v5, v4, 0x1

    int-to-char v6, v7

    .line 2278
    aput-char v6, v0, v4

    move v4, v5

    goto/16 :goto_0

    .line 2280
    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentAndReturn(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final _finishNumberToken(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x1f

    packed-switch p1, :pswitch_data_0

    .line 1926
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInternal()V

    return-void

    .line 1923
    :pswitch_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishBigDecimal()V

    return-void

    .line 1920
    :pswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishDouble()V

    return-void

    .line 1917
    :pswitch_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishFloat()V

    return-void

    .line 1914
    :pswitch_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishBigInteger()V

    return-void

    .line 1911
    :pswitch_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishLong()V

    return-void

    .line 1908
    :pswitch_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishInt()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final _finishToken()V
    .locals 5

    const/4 v0, 0x0

    .line 1865
    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 1866
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeAsInt:I

    shr-int/lit8 v1, v0, 0x5

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1870
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishNumberToken(I)V

    return-void

    :cond_0
    const/4 v3, 0x3

    if-gt v1, v3, :cond_1

    and-int/lit8 v0, v0, 0x3f

    add-int/2addr v0, v2

    .line 1874
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeShortAsciiValue(I)Ljava/lang/String;

    return-void

    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x5

    if-gt v1, v4, :cond_2

    and-int/lit8 v0, v0, 0x3f

    add-int/2addr v0, v3

    .line 1879
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeShortUnicodeValue(I)Ljava/lang/String;

    return-void

    :cond_2
    const/4 v4, 0x7

    if-ne v1, v4, :cond_7

    and-int/lit8 v0, v0, 0x1f

    shr-int/2addr v0, v3

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_0

    .line 1896
    :cond_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishRawBinary()V

    return-void

    .line 1893
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_read7BitBinaryWithLength()[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_binaryValue:[B

    return-void

    .line 1890
    :cond_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeLongUnicode()V

    return-void

    .line 1887
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeLongAscii()V

    return-void

    .line 1901
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInternal()V

    return-void
.end method

.method protected final _handleFieldName()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5

    .line 1289
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1290
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    .line 1294
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeAsInt:I

    shr-int/lit8 v3, v1, 0x6

    const/4 v4, 0x3

    if-eqz v3, :cond_d

    const/4 v1, 0x1

    if-eq v3, v1, :cond_b

    const/4 v2, 0x2

    if-eq v3, v2, :cond_7

    if-eq v3, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x37

    if-le v0, v1, :cond_3

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_e

    .line 1355
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x7d

    const/16 v1, 0x5d

    .line 1356
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_reportMismatchedEndMarker(IC)V

    .line 1358
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 1359
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_3
    add-int/2addr v0, v2

    .line 1363
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_findDecodedFromSymbols(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1365
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    goto :goto_0

    .line 1367
    :cond_4
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeShortUnicodeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1368
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_addDecodedToSymbols(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1370
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1371
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    array-length v3, v0

    if-lt v2, v3, :cond_5

    .line 1372
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    .line 1374
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    aput-object v1, v0, v2

    .line 1376
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1377
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_7
    and-int/lit8 v0, v0, 0x3f

    add-int/2addr v0, v1

    .line 1333
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_findDecodedFromSymbols(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1335
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    goto :goto_1

    .line 1337
    :cond_8
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeShortAsciiName(I)Ljava/lang/String;

    move-result-object v1

    .line 1338
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_addDecodedToSymbols(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1340
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1341
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    array-length v3, v0

    if-lt v2, v3, :cond_9

    .line 1342
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    .line 1344
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    aput-object v1, v0, v2

    .line 1346
    :cond_a
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1348
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_b
    and-int/lit8 v0, v0, 0x3f

    .line 1324
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    if-lt v0, v1, :cond_c

    .line 1325
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidSharedName(I)V

    .line 1327
    :cond_c
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1329
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_d
    const/16 v3, 0x20

    if-eq v1, v3, :cond_11

    packed-switch v1, :pswitch_data_0

    .line 1383
    :cond_e
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid type marker byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeAsInt:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for expected field name (or END_OBJECT marker)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 1317
    :pswitch_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_handleLongFieldName()V

    .line 1318
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1305
    :pswitch_1
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v2, v1, :cond_f

    .line 1306
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    :cond_f
    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x8

    .line 1309
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 1310
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    if-lt v0, v1, :cond_10

    .line 1311
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidSharedName(I)V

    .line 1313
    :cond_10
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1315
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1299
    :cond_11
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1300
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final _loadMore()Z
    .locals 6

    .line 247
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 248
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 249
    iget-wide v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_currInputProcessed:J

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_currInputProcessed:J

    .line 250
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    if-lez v0, :cond_0

    .line 252
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    const/4 v0, 0x1

    return v0

    .line 256
    :cond_0
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    .line 258
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_closeInput()V

    if-eqz v0, :cond_1

    goto :goto_0

    .line 261
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method protected final _loadMoreGuaranteed()V
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF()V

    :cond_0
    return-void
.end method

.method protected final _loadToHaveAtLeast(I)V
    .locals 7

    .line 274
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    const-string v1, "Needed to read "

    if-eqz v0, :cond_4

    .line 278
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    sub-int/2addr v0, v2

    .line 279
    iget-wide v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_currInputProcessed:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_currInputProcessed:J

    const/4 v3, 0x0

    if-lez v0, :cond_0

    if-lez v2, :cond_0

    .line 282
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    invoke-static {v4, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    goto :goto_0

    .line 285
    :cond_0
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    .line 287
    :goto_0
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 288
    :goto_1
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-ge v2, p1, :cond_3

    .line 289
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    array-length v5, v4

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_closeInput()V

    if-nez v2, :cond_1

    .line 295
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 297
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes, missed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " before end-of-input"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1

    .line 299
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    goto :goto_1

    :cond_3
    return-void

    .line 275
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, reached end-of-input"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1
.end method

.method protected _parseNumericValue()V
    .locals 3

    .line 1827
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    if-nez v0, :cond_0

    .line 1828
    const-string v0, "Internal error: number token (%s) decoded, no value set"

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 1830
    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 1831
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeAsInt:I

    shr-int/lit8 v1, v0, 0x5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1834
    const-string v1, "Current token (%s) not numeric, can not use numeric value accessors"

    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1836
    :cond_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishNumberToken(I)V

    return-void
.end method

.method protected _releaseBuffers2()V
    .locals 2

    .line 345
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_bufferRecyclable:Z

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 348
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 349
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    :cond_0
    return-void
.end method

.method protected _reportInvalidChar(I)V
    .locals 1

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 2665
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInvalidSpace(I)V

    .line 2667
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidInitial(I)V

    return-void
.end method

.method protected _reportInvalidInitial(I)V
    .locals 2

    .line 2671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected _reportInvalidOther(I)V
    .locals 2

    .line 2675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected _reportInvalidOther(II)V
    .locals 0

    .line 2679
    iput p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 2680
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(I)V

    return-void
.end method

.method protected _reportInvalidSharedName(I)V
    .locals 2

    .line 2647
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2648
    const-string v0, "Encountered shared name reference, even though document header explicitly declared no shared name references are included"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 2650
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shared name reference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; only got "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " names in buffer (invalid content)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected _reportInvalidSharedStringValue(I)V
    .locals 2

    .line 2655
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2656
    const-string v0, "Encountered shared text value reference, even though document header did not declare shared text value references may be included"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 2658
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shared text value reference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; only got "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValueCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " names in buffer (invalid content)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected _skip7BitBinary()V
    .locals 3

    .line 2534
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_readUnsignedVInt()I

    move-result v0

    .line 2536
    div-int/lit8 v1, v0, 0x7

    mul-int/lit8 v2, v1, 0x8

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    .line 2543
    :cond_0
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipBytes(I)V

    return-void
.end method

.method protected _skipBytes(I)V
    .locals 2

    .line 2518
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2519
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    sub-int/2addr p1, v0

    if-gtz p1, :cond_0

    return-void

    .line 2524
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    goto :goto_0
.end method

.method protected _skipIncomplete()V
    .locals 7

    const/4 v0, 0x0

    .line 2426
    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 2427
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeAsInt:I

    shr-int/lit8 v1, v0, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eq v1, v6, :cond_8

    if-eq v1, v4, :cond_7

    if-eq v1, v3, :cond_7

    if-eq v1, v2, :cond_6

    if-eq v1, v5, :cond_6

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v0, 0x1f

    shr-int/2addr v0, v4

    if-eqz v0, :cond_3

    if-eq v0, v6, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 2508
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_readUnsignedVInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipBytes(I)V

    return-void

    .line 2505
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skip7BitBinary()V

    return-void

    .line 2494
    :cond_3
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    .line 2495
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 2496
    :cond_4
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    if-ge v2, v0, :cond_5

    add-int/lit8 v3, v2, 0x1

    .line 2497
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v2, v1, v2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_4

    goto :goto_3

    .line 2501
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    goto :goto_0

    :cond_6
    and-int/lit8 v0, v0, 0x3f

    add-int/2addr v0, v4

    .line 2482
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipBytes(I)V

    return-void

    :cond_7
    and-int/lit8 v0, v0, 0x3f

    add-int/2addr v0, v6

    .line 2477
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipBytes(I)V

    return-void

    :cond_8
    and-int/lit8 v1, v0, 0x1f

    shr-int/2addr v1, v4

    if-eq v1, v6, :cond_d

    if-eq v1, v4, :cond_9

    goto :goto_1

    :cond_9
    and-int/2addr v0, v3

    if-eqz v0, :cond_c

    if-eq v0, v6, :cond_b

    if-eq v0, v4, :cond_a

    goto :goto_1

    .line 2466
    :cond_a
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_readUnsignedVInt()I

    .line 2468
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skip7BitBinary()V

    return-void

    :cond_b
    const/16 v0, 0xa

    .line 2462
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipBytes(I)V

    return-void

    .line 2459
    :cond_c
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipBytes(I)V

    return-void

    :cond_d
    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    if-eq v0, v6, :cond_f

    if-eq v0, v4, :cond_e

    .line 2512
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInternal()V

    return-void

    .line 2452
    :cond_e
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skip7BitBinary()V

    return-void

    .line 2437
    :cond_f
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipBytes(I)V

    .line 2441
    :cond_10
    :goto_2
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    .line 2442
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 2443
    :cond_11
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    if-ge v2, v0, :cond_12

    add-int/lit8 v3, v2, 0x1

    .line 2444
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v2, v1, v2

    if-gez v2, :cond_11

    :goto_3
    return-void

    .line 2448
    :cond_12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    goto :goto_2
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 990
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 991
    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 993
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeAsInt:I

    shr-int/lit8 v1, v0, 0x5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 1002
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishToken()V

    goto :goto_2

    :cond_2
    :goto_0
    and-int/lit8 v0, v0, 0x3f

    add-int/2addr v0, v2

    .line 1000
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeShortUnicodeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    and-int/lit8 v0, v0, 0x3f

    add-int/lit8 v0, v0, 0x1

    .line 996
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeShortAsciiValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1004
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_5

    .line 1005
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 1011
    :cond_6
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_7

    .line 1012
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1014
    :cond_7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1015
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1017
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleSignature(ZZ)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 158
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_nextByteGuaranteed()B

    move-result p1

    const/16 v1, 0x29

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    if-eqz p2, :cond_1

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Malformed content: signature not valid, starts with 0x3a but followed by 0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte p2, p2, v0

    .line 163
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", not 0x29"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    :cond_1
    return v2

    .line 167
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_nextByteGuaranteed()B

    move-result p1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_4

    if-eqz p2, :cond_3

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Malformed content: signature not valid, starts with 0x3a, 0x29, but followed by 0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte p2, p2, v0

    .line 170
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", not 0xA"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    :cond_3
    return v2

    .line 175
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_nextByteGuaranteed()B

    move-result p1

    shr-int/lit8 p2, p1, 0x4

    and-int/lit8 p2, p2, 0xf

    if-eqz p2, :cond_5

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header version number bits (0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") indicate unrecognized version; only 0x0 handled by parser"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    :cond_5
    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_6

    const/4 p2, 0x0

    .line 184
    iput-object p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNames:[Ljava/lang/String;

    const/4 p2, -0x1

    .line 185
    iput p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenNameCount:I

    :cond_6
    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_7

    .line 189
    sget-object p2, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->NO_STRINGS:[Ljava/lang/String;

    iput-object p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValues:[Ljava/lang/String;

    .line 190
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValueCount:I

    :cond_7
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_8

    const/4 v2, 0x1

    .line 192
    :cond_8
    iput-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_mayContainRawBinary:Z

    return v0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9

    const/4 v0, 0x0

    .line 363
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    .line 365
    iget-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipIncomplete()V

    .line 368
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_tokenOffsetForTotal:I

    const/4 v1, 0x0

    .line 371
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_binaryValue:[B

    .line 373
    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_handleFieldName()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 376
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_2

    .line 377
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMore()Z

    move-result v2

    if-nez v2, :cond_2

    .line 378
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 381
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v3, v2, 0xff

    .line 382
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeAsInt:I

    shr-int/lit8 v5, v3, 0x5

    const/4 v6, 0x4

    const/16 v7, 0x1f

    const/4 v8, 0x1

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    and-int/lit8 v0, v2, 0x1f

    if-eqz v0, :cond_8

    if-eq v0, v6, :cond_8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_7

    const/16 v5, 0x1d

    if-eq v0, v5, :cond_6

    if-eq v0, v7, :cond_5

    packed-switch v0, :pswitch_data_1

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_1

    .line 484
    :pswitch_1
    const-string v0, "Invalid type marker byte 0xFB in value mode (would be END_OBJECT in key mode)"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :pswitch_2
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0, v3, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 482
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 475
    :pswitch_3
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x5d

    const/16 v1, 0x7d

    .line 476
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_reportMismatchedEndMarker(IC)V

    .line 478
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 479
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 472
    :pswitch_4
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0, v3, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 473
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 467
    :pswitch_5
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputEnd:I

    if-lt v4, v0, :cond_4

    .line 468
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadMoreGuaranteed()V

    :cond_4
    and-int/lit8 v0, v2, 0x3

    shl-int/2addr v0, v3

    .line 470
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_handleSharedString(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 489
    :cond_5
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    .line 486
    :cond_6
    :goto_0
    iput-boolean v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 487
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 461
    :cond_7
    iput-boolean v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 462
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 458
    :cond_8
    iput-boolean v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 459
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :pswitch_6
    and-int/lit8 v0, v2, 0x1f

    .line 450
    invoke-static {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagDecode(I)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberInt:I

    .line 451
    iput v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numTypesValid:I

    .line 452
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_numberType:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    .line 453
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 444
    :pswitch_7
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_seenStringValueCount:I

    if-ltz v0, :cond_9

    .line 445
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_addSeenStringValue()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 447
    :cond_9
    iput-boolean v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 448
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :pswitch_8
    and-int/lit8 v3, v2, 0x1f

    if-ge v3, v6, :cond_d

    if-eqz v3, :cond_c

    if-eq v3, v8, :cond_b

    const/4 v0, 0x2

    if-eq v3, v0, :cond_a

    .line 403
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 401
    :cond_a
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 399
    :cond_b
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 396
    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithEmpty()V

    .line 397
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_d
    if-ne v3, v6, :cond_e

    .line 407
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishInt()V

    .line 408
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_e
    const/4 v4, 0x6

    if-gt v3, v4, :cond_f

    .line 412
    iput-boolean v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 413
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_f
    const/16 v4, 0xb

    if-ge v3, v4, :cond_10

    const/4 v4, 0x7

    if-eq v3, v4, :cond_10

    .line 416
    iput-boolean v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 417
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_10
    const/16 v4, 0x1a

    if-ne v3, v4, :cond_13

    .line 420
    invoke-virtual {p0, v0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->handleSignature(ZZ)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 426
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-nez v0, :cond_11

    .line 427
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 429
    :cond_11
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    .line 431
    :cond_12
    const-string v0, "Unrecognized token byte 0x3A (malformed segment header?"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_9
    if-eqz v3, :cond_13

    sub-int/2addr v3, v8

    .line 386
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_handleSharedString(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 494
    :cond_13
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type marker byte 0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for expected value token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
