.class public Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;
.super Lcom/fasterxml/jackson/core/JsonFactory;
.source "SourceFile"


# static fields
.field static final DEFAULT_SMILE_GENERATOR_FEATURE_FLAGS:I

.field static final DEFAULT_SMILE_PARSER_FEATURE_FLAGS:I


# instance fields
.field protected _cfgDelegateToTextual:Z

.field protected _smileGeneratorFeatures:I

.field protected _smileParserFeatures:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    invoke-static {}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->DEFAULT_SMILE_PARSER_FEATURE_FLAGS:I

    .line 55
    invoke-static {}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->DEFAULT_SMILE_GENERATOR_FEATURE_FLAGS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V

    .line 95
    sget p1, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->DEFAULT_SMILE_PARSER_FEATURE_FLAGS:I

    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileParserFeatures:I

    .line 96
    sget p1, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->DEFAULT_SMILE_GENERATOR_FEATURE_FLAGS:I

    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileGeneratorFeatures:I

    return-void
.end method


# virtual methods
.method protected _createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .line 468
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_cfgDelegateToTextual:Z

    if-eqz v0, :cond_0

    .line 469
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p1

    return-object p1

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_nonByteTarget()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object p1
.end method

.method protected _createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;
    .locals 6

    .line 506
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileGeneratorFeatures:I

    .line 512
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    iget v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    const/4 v4, 0x0

    move-object v5, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;IILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/OutputStream;)V

    .line 513
    sget-object p1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->WRITE_HEADER:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v3

    if-eqz p1, :cond_0

    .line 514
    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeHeader()V

    return-object v0

    .line 516
    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v3

    if-nez p1, :cond_2

    .line 522
    sget-object p1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->ENCODE_BINARY_AS_7BIT:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v3

    if-eqz p1, :cond_1

    return-object v0

    .line 523
    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/core/JsonGenerationException;

    const-string p2, "Inconsistent settings: WRITE_HEADER disabled, but ENCODE_BINARY_AS_7BIT disabled; can not construct generator due to possible data loss (either enable WRITE_HEADER, or ENCODE_BINARY_AS_7BIT to resolve)"

    invoke-direct {p1, p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    throw p1

    .line 517
    :cond_2
    new-instance p1, Lcom/fasterxml/jackson/core/JsonGenerationException;

    const-string p2, "Inconsistent settings: WRITE_HEADER disabled, but CHECK_SHARED_STRING_VALUES enabled; can not construct generator due to possible data loss (either enable WRITE_HEADER, or disable CHECK_SHARED_STRING_VALUES to resolve)"

    invoke-direct {p1, p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    throw p1
.end method

.method protected bridge synthetic _createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object p1

    return-object p1
.end method

.method protected _createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1

    .line 441
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_cfgDelegateToTextual:Z

    if-eqz v0, :cond_0

    .line 442
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_nonByteSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/core/JsonParser;

    return-object p1
.end method

.method protected _createParser([CIILcom/fasterxml/jackson/core/io/IOContext;Z)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1

    .line 451
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_cfgDelegateToTextual:Z

    if-eqz v0, :cond_0

    .line 452
    invoke-super/range {p0 .. p5}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser([CIILcom/fasterxml/jackson/core/io/IOContext;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_nonByteSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/core/JsonParser;

    return-object p1
.end method

.method protected _createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 6

    .line 433
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;

    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;)V

    .line 434
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    iget v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileParserFeatures:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_byteSymbolCanonicalizer:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->constructParser(IIILcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object p1

    return-object p1
.end method

.method protected _createUTF8Generator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    .line 476
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object p1

    return-object p1
.end method

.method protected _createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;Lcom/fasterxml/jackson/core/io/IOContext;)Ljava/io/Writer;
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_cfgDelegateToTextual:Z

    if-eqz v0, :cond_0

    .line 485
    invoke-super {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonFactory;->_createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;Lcom/fasterxml/jackson/core/io/IOContext;)Ljava/io/Writer;

    move-result-object p1

    return-object p1

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_nonByteTarget()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Writer;

    return-object p1
.end method

.method protected _nonByteSource()Ljava/lang/Object;
    .locals 2

    .line 497
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not create parser for character-based (not byte-based) source"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _nonByteTarget()Ljava/lang/Object;
    .locals 2

    .line 501
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not create generator for character-based (not byte-based) target"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canUseCharArrays()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;
    .locals 0

    const/4 p2, 0x0

    .line 386
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object p2

    .line 387
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->_decorate(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 1

    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v0

    .line 348
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_decorate(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object p1

    return-object p1
.end method
