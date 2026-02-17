.class public Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _bufferRecyclable:Z

.field protected final _context:Lcom/fasterxml/jackson/core/io/IOContext;

.field protected final _in:Ljava/io/InputStream;

.field protected final _inputBuffer:[B

.field protected _inputEnd:I

.field protected _inputProcessed:I

.field protected _inputPtr:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 70
    iput-object p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_in:Ljava/io/InputStream;

    .line 71
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocReadIOBuffer()[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputBuffer:[B

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputPtr:I

    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    .line 73
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputProcessed:I

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_bufferRecyclable:Z

    return-void
.end method


# virtual methods
.method public constructParser(IIILcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 11

    move-object/from16 v0, p5

    .line 94
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->makeChild(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    move-result-object v5

    .line 96
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    .line 97
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputPtr:I

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputBuffer:[B

    array-length v2, v1

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    .line 100
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    .line 104
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputBuffer:[B

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    iget-boolean v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_bufferRecyclable:Z

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;IILcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;Ljava/io/InputStream;[BIIZ)V

    .line 108
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputPtr:I

    iget p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    if-ge p1, p2, :cond_5

    .line 109
    iget-object p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputBuffer:[B

    aget-byte p1, p2, p1

    const/16 p2, 0x3a

    const/4 p4, 0x0

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    .line 111
    invoke-virtual {v0, p1, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->handleSignature(ZZ)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_5

    .line 120
    sget-object p1, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->REQUIRE_HEADER:Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->enabledIn(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 124
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputPtr:I

    iget p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputBuffer:[B

    aget-byte p4, p2, p1

    :cond_2
    const/16 p1, 0x7b

    .line 125
    const-string p2, "Input does not start with Smile format header (first byte = 0x"

    if-eq p4, p1, :cond_4

    const/16 p1, 0x5b

    if-ne p4, p1, :cond_3

    goto :goto_1

    .line 130
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p2, p4, 0xff

    .line 131
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") and parser has REQUIRE_HEADER enabled: can not parse"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 126
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p2, p4, 0xff

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") -- rather, it starts with \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p2, p4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\' (plain JSON input?) -- can not parse"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    :goto_2
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-direct {p2, v0, p1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    :cond_5
    return-object v0
.end method
