.class public Lezvcard/io/text/VCardReader;
.super Lezvcard/io/StreamReader;
.source "SourceFile"


# instance fields
.field private defaultQuotedPrintableCharset:Ljava/nio/charset/Charset;

.field private final reader:Lezvcard/io/text/VCardRawReader;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 116
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lezvcard/io/text/VCardReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Lezvcard/io/StreamReader;-><init>()V

    .line 123
    new-instance v0, Lezvcard/io/text/VCardRawReader;

    invoke-direct {v0, p1}, Lezvcard/io/text/VCardRawReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lezvcard/io/text/VCardReader;->reader:Lezvcard/io/text/VCardRawReader;

    .line 124
    invoke-virtual {v0}, Lezvcard/io/text/VCardRawReader;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lezvcard/io/text/VCardReader;->defaultQuotedPrintableCharset:Ljava/nio/charset/Charset;

    if-nez p1, :cond_0

    .line 126
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lezvcard/io/text/VCardReader;->defaultQuotedPrintableCharset:Ljava/nio/charset/Charset;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 101
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lezvcard/io/text/VCardReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method private decodeQuotedPrintableValue(Ljava/lang/String;Lezvcard/parameter/VCardParameters;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 429
    invoke-virtual {p2}, Lezvcard/parameter/VCardParameters;->getEncoding()Lezvcard/parameter/Encoding;

    move-result-object v0

    sget-object v1, Lezvcard/parameter/Encoding;->QUOTED_PRINTABLE:Lezvcard/parameter/Encoding;

    if-eq v0, v1, :cond_0

    return-object p3

    :cond_0
    const/4 v0, 0x0

    .line 435
    invoke-virtual {p2, v0}, Lezvcard/parameter/VCardParameters;->setEncoding(Lezvcard/parameter/Encoding;)V

    .line 439
    invoke-virtual {p2}, Lezvcard/parameter/VCardParameters;->getCharset()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 441
    iget-object p1, p0, Lezvcard/io/text/VCardReader;->defaultQuotedPrintableCharset:Ljava/nio/charset/Charset;

    goto :goto_1

    .line 444
    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v0, :cond_2

    .line 452
    iget-object v0, p0, Lezvcard/io/text/VCardReader;->defaultQuotedPrintableCharset:Ljava/nio/charset/Charset;

    .line 455
    iget-object v1, p0, Lezvcard/io/StreamReader;->warnings:Lezvcard/io/ParseWarnings;

    iget-object v2, p0, Lezvcard/io/text/VCardReader;->reader:Lezvcard/io/text/VCardRawReader;

    invoke-virtual {v2}, Lezvcard/io/text/VCardRawReader;->getLineNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 p2, 0x1

    aput-object v3, v4, p2

    const/16 p2, 0x17

    invoke-virtual {v1, v2, p1, p2, v4}, Lezvcard/io/ParseWarnings;->add(Ljava/lang/Integer;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_2
    move-object p1, v0

    .line 459
    :goto_1
    new-instance p2, Lezvcard/util/org/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lezvcard/util/org/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p2, p3}, Lezvcard/util/org/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private guessParameterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 379
    invoke-static {p1}, Lezvcard/VCardDataType;->find(Ljava/lang/String;)Lezvcard/VCardDataType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    const-string p1, "VALUE"

    return-object p1

    .line 383
    :cond_0
    invoke-static {p1}, Lezvcard/parameter/Encoding;->find(Ljava/lang/String;)Lezvcard/parameter/Encoding;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 384
    const-string p1, "ENCODING"

    return-object p1

    .line 388
    :cond_1
    const-string p1, "TYPE"

    return-object p1
.end method

.method private processNamelessParameters(Lezvcard/parameter/VCardParameters;)V
    .locals 3

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p1, v0}, Lezvcard/util/ListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    invoke-direct {p0, v1}, Lezvcard/io/text/VCardReader;->guessParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-virtual {p1, v2, v1}, Lezvcard/util/ListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processQuotedMultivaluedTypeParams(Lezvcard/parameter/VCardParameters;)V
    .locals 5

    .line 405
    invoke-virtual {p1}, Lezvcard/parameter/VCardParameters;->getTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 406
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p1}, Lezvcard/parameter/VCardParameters;->removeTypes()V

    .line 411
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 412
    invoke-virtual {p1, v4}, Lezvcard/parameter/VCardParameters;->addType(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method protected _readNext()Lezvcard/VCard;
    .locals 17

    move-object/from16 v1, p0

    .line 189
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 190
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    :cond_0
    :goto_0
    const/4 v8, 0x1

    .line 196
    :try_start_0
    iget-object v0, v1, Lezvcard/io/text/VCardReader;->reader:Lezvcard/io/text/VCardRawReader;

    invoke-virtual {v0}, Lezvcard/io/text/VCardRawReader;->readLine()Lezvcard/io/text/VCardRawLine;

    move-result-object v0
    :try_end_0
    .catch Lezvcard/io/text/VCardParseException; {:try_start_0 .. :try_end_0} :catch_5

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 210
    :cond_1
    const-string v9, "BEGIN"

    invoke-virtual {v0}, Lezvcard/io/text/VCardRawLine;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "VCARD"

    if-eqz v9, :cond_3

    invoke-virtual {v0}, Lezvcard/io/text/VCardRawLine;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 211
    new-instance v0, Lezvcard/VCard;

    invoke-direct {v0}, Lezvcard/VCard;-><init>()V

    .line 212
    iget-object v7, v1, Lezvcard/io/text/VCardReader;->reader:Lezvcard/io/text/VCardRawReader;

    invoke-virtual {v7}, Lezvcard/io/text/VCardRawReader;->getVersion()Lezvcard/VCardVersion;

    move-result-object v7

    invoke-virtual {v0, v7}, Lezvcard/VCard;->setVersion(Lezvcard/VCardVersion;)V

    .line 213
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-nez v5, :cond_2

    move-object v5, v0

    :cond_2
    if-eqz v6, :cond_0

    .line 221
    invoke-virtual {v6, v0}, Lezvcard/io/EmbeddedVCardException;->injectVCard(Lezvcard/VCard;)V

    move-object v6, v4

    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    :goto_1
    move-object v9, v4

    goto/16 :goto_11

    .line 234
    :cond_5
    const-string v9, "VERSION"

    invoke-virtual {v0}, Lezvcard/io/text/VCardRawLine;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 235
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezvcard/VCard;

    iget-object v7, v1, Lezvcard/io/text/VCardReader;->reader:Lezvcard/io/text/VCardRawReader;

    invoke-virtual {v7}, Lezvcard/io/text/VCardRawReader;->getVersion()Lezvcard/VCardVersion;

    move-result-object v7

    invoke-virtual {v0, v7}, Lezvcard/VCard;->setVersion(Lezvcard/VCardVersion;)V

    goto :goto_1

    .line 240
    :cond_6
    const-string v9, "END"

    invoke-virtual {v0}, Lezvcard/io/text/VCardRawLine;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v0}, Lezvcard/io/text/VCardRawLine;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 241
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezvcard/VCard;

    .line 242
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 243
    invoke-virtual {v1, v0, v7}, Lezvcard/io/StreamReader;->assignLabels(Lezvcard/VCard;Ljava/util/List;)V

    .line 245
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    return-object v5

    .line 254
    :cond_7
    invoke-virtual {v0}, Lezvcard/io/text/VCardRawLine;->getGroup()Ljava/lang/String;

    move-result-object v9

    .line 255
    invoke-virtual {v0}, Lezvcard/io/text/VCardRawLine;->getParameters()Lezvcard/parameter/VCardParameters;

    move-result-object v10

    .line 256
    invoke-virtual {v0}, Lezvcard/io/text/VCardRawLine;->getName()Ljava/lang/String;

    move-result-object v11

    .line 257
    invoke-virtual {v0}, Lezvcard/io/text/VCardRawLine;->getValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v6, :cond_8

    .line 261
    invoke-virtual {v6, v4}, Lezvcard/io/EmbeddedVCardException;->injectVCard(Lezvcard/VCard;)V

    move-object v6, v4

    .line 265
    :cond_8
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lezvcard/VCard;

    .line 266
    invoke-virtual {v13}, Lezvcard/VCard;->getVersion()Lezvcard/VCardVersion;

    move-result-object v14

    .line 269
    invoke-direct {v1, v10}, Lezvcard/io/text/VCardReader;->processNamelessParameters(Lezvcard/parameter/VCardParameters;)V

    .line 270
    invoke-direct {v1, v10}, Lezvcard/io/text/VCardReader;->processQuotedMultivaluedTypeParams(Lezvcard/parameter/VCardParameters;)V

    .line 274
    :try_start_1
    invoke-direct {v1, v11, v10, v12}, Lezvcard/io/text/VCardReader;->decodeQuotedPrintableValue(Ljava/lang/String;Lezvcard/parameter/VCardParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Lezvcard/util/org/apache/commons/codec/DecoderException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v16, 0x0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 276
    iget-object v15, v1, Lezvcard/io/StreamReader;->warnings:Lezvcard/io/ParseWarnings;

    const/16 v16, 0x0

    iget-object v7, v1, Lezvcard/io/text/VCardReader;->reader:Lezvcard/io/text/VCardRawReader;

    invoke-virtual {v7}, Lezvcard/io/text/VCardRawReader;->getLineNum()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v16

    const/16 v0, 0x26

    invoke-virtual {v15, v7, v11, v0, v4}, Lezvcard/io/ParseWarnings;->add(Ljava/lang/Integer;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 280
    :goto_3
    iget-object v0, v1, Lezvcard/io/StreamReader;->index:Lezvcard/io/scribe/ScribeIndex;

    invoke-virtual {v0, v11}, Lezvcard/io/scribe/ScribeIndex;->getPropertyScribe(Ljava/lang/String;)Lezvcard/io/scribe/VCardPropertyScribe;

    move-result-object v0

    if-nez v0, :cond_9

    .line 282
    new-instance v0, Lezvcard/io/scribe/RawPropertyScribe;

    invoke-direct {v0, v11}, Lezvcard/io/scribe/RawPropertyScribe;-><init>(Ljava/lang/String;)V

    .line 286
    :cond_9
    invoke-virtual {v10}, Lezvcard/parameter/VCardParameters;->getValue()Lezvcard/VCardDataType;

    move-result-object v4

    if-nez v4, :cond_a

    .line 289
    invoke-virtual {v0, v14}, Lezvcard/io/scribe/VCardPropertyScribe;->defaultDataType(Lezvcard/VCardVersion;)Lezvcard/VCardDataType;

    move-result-object v4

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    .line 292
    invoke-virtual {v10, v7}, Lezvcard/parameter/VCardParameters;->setValue(Lezvcard/VCardDataType;)V

    .line 297
    :goto_4
    :try_start_2
    invoke-virtual {v0, v12, v4, v14, v10}, Lezvcard/io/scribe/VCardPropertyScribe;->parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;)Lezvcard/io/scribe/VCardPropertyScribe$Result;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lezvcard/io/scribe/VCardPropertyScribe$Result;->getWarnings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 300
    iget-object v10, v1, Lezvcard/io/StreamReader;->warnings:Lezvcard/io/ParseWarnings;

    iget-object v15, v1, Lezvcard/io/text/VCardReader;->reader:Lezvcard/io/text/VCardRawReader;

    invoke-virtual {v15}, Lezvcard/io/text/VCardRawReader;->getLineNum()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15, v11, v7}, Lezvcard/io/ParseWarnings;->add(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_e

    :catch_3
    move-exception v0

    goto/16 :goto_f

    .line 303
    :cond_b
    invoke-virtual {v0}, Lezvcard/io/scribe/VCardPropertyScribe$Result;->getProperty()Lezvcard/property/VCardProperty;

    move-result-object v0

    .line 304
    invoke-virtual {v0, v9}, Lezvcard/property/VCardProperty;->setGroup(Ljava/lang/String;)V

    .line 306
    instance-of v4, v0, Lezvcard/property/Label;

    if-eqz v4, :cond_c

    .line 312
    check-cast v0, Lezvcard/property/Label;

    .line 313
    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 315
    :cond_c
    invoke-virtual {v13, v0}, Lezvcard/VCard;->addProperty(Lezvcard/property/VCardProperty;)V
    :try_end_2
    .catch Lezvcard/io/SkipMeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lezvcard/io/CannotParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lezvcard/io/EmbeddedVCardException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_10

    .line 326
    :goto_6
    invoke-virtual {v0}, Lezvcard/io/EmbeddedVCardException;->getProperty()Lezvcard/property/VCardProperty;

    move-result-object v4

    .line 328
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_11

    sget-object v7, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    if-ne v14, v7, :cond_d

    goto/16 :goto_c

    .line 333
    :cond_d
    invoke-static {v12}, Lezvcard/io/scribe/VCardPropertyScribe;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 335
    new-instance v9, Lezvcard/io/text/VCardReader;

    invoke-direct {v9, v7}, Lezvcard/io/text/VCardReader;-><init>(Ljava/lang/String;)V

    .line 336
    iget-object v7, v1, Lezvcard/io/StreamReader;->index:Lezvcard/io/scribe/ScribeIndex;

    invoke-virtual {v9, v7}, Lezvcard/io/StreamReader;->setScribeIndex(Lezvcard/io/scribe/ScribeIndex;)V

    const/16 v7, 0x1a

    .line 338
    :try_start_3
    invoke-virtual {v9}, Lezvcard/io/StreamReader;->readNext()Lezvcard/VCard;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 340
    invoke-virtual {v0, v10}, Lezvcard/io/EmbeddedVCardException;->injectVCard(Lezvcard/VCard;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_9

    .line 345
    :cond_e
    :goto_7
    invoke-virtual {v9}, Lezvcard/io/StreamReader;->getWarnings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 346
    iget-object v12, v1, Lezvcard/io/StreamReader;->warnings:Lezvcard/io/ParseWarnings;

    iget-object v14, v1, Lezvcard/io/text/VCardReader;->reader:Lezvcard/io/text/VCardRawReader;

    invoke-virtual {v14}, Lezvcard/io/text/VCardRawReader;->getLineNum()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v10, v15, v16

    invoke-virtual {v12, v14, v11, v7, v15}, Lezvcard/io/ParseWarnings;->add(Ljava/lang/Integer;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_8

    .line 348
    :cond_f
    invoke-static {v9}, Lezvcard/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_d

    .line 345
    :goto_9
    invoke-virtual {v9}, Lezvcard/io/StreamReader;->getWarnings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 346
    iget-object v4, v1, Lezvcard/io/StreamReader;->warnings:Lezvcard/io/ParseWarnings;

    iget-object v5, v1, Lezvcard/io/text/VCardReader;->reader:Lezvcard/io/text/VCardRawReader;

    invoke-virtual {v5}, Lezvcard/io/text/VCardRawReader;->getLineNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v16

    invoke-virtual {v4, v5, v11, v7, v6}, Lezvcard/io/ParseWarnings;->add(Ljava/lang/Integer;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_a

    .line 348
    :cond_10
    invoke-static {v9}, Lezvcard/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 345
    :catch_4
    invoke-virtual {v9}, Lezvcard/io/StreamReader;->getWarnings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 346
    iget-object v12, v1, Lezvcard/io/StreamReader;->warnings:Lezvcard/io/ParseWarnings;

    iget-object v14, v1, Lezvcard/io/text/VCardReader;->reader:Lezvcard/io/text/VCardRawReader;

    invoke-virtual {v14}, Lezvcard/io/text/VCardRawReader;->getLineNum()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v10, v15, v16

    invoke-virtual {v12, v14, v11, v7, v15}, Lezvcard/io/ParseWarnings;->add(Ljava/lang/Integer;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_b

    :cond_11
    :goto_c
    move-object v6, v0

    .line 352
    :goto_d
    invoke-virtual {v13, v4}, Lezvcard/VCard;->addProperty(Lezvcard/property/VCardProperty;)V

    goto :goto_10

    .line 320
    :goto_e
    iget-object v4, v1, Lezvcard/io/StreamReader;->warnings:Lezvcard/io/ParseWarnings;

    iget-object v7, v1, Lezvcard/io/text/VCardReader;->reader:Lezvcard/io/text/VCardRawReader;

    invoke-virtual {v7}, Lezvcard/io/text/VCardRawReader;->getLineNum()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v12, v10, v16

    aput-object v0, v10, v8

    const/16 v0, 0x19

    invoke-virtual {v4, v7, v11, v0, v10}, Lezvcard/io/ParseWarnings;->add(Ljava/lang/Integer;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 321
    new-instance v0, Lezvcard/property/RawProperty;

    invoke-direct {v0, v11, v12}, Lezvcard/property/RawProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, v9}, Lezvcard/property/VCardProperty;->setGroup(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v13, v0}, Lezvcard/VCard;->addProperty(Lezvcard/property/VCardProperty;)V

    goto :goto_10

    .line 318
    :goto_f
    iget-object v4, v1, Lezvcard/io/StreamReader;->warnings:Lezvcard/io/ParseWarnings;

    iget-object v7, v1, Lezvcard/io/text/VCardReader;->reader:Lezvcard/io/text/VCardRawReader;

    invoke-virtual {v7}, Lezvcard/io/text/VCardRawReader;->getLineNum()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v16

    const/16 v0, 0x16

    invoke-virtual {v4, v7, v11, v0, v8}, Lezvcard/io/ParseWarnings;->add(Ljava/lang/Integer;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_10
    const/4 v4, 0x0

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const/16 v16, 0x0

    .line 198
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    .line 199
    iget-object v4, v1, Lezvcard/io/StreamReader;->warnings:Lezvcard/io/ParseWarnings;

    iget-object v7, v1, Lezvcard/io/text/VCardReader;->reader:Lezvcard/io/text/VCardRawReader;

    invoke-virtual {v7}, Lezvcard/io/text/VCardRawReader;->getLineNum()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0}, Lezvcard/io/text/VCardParseException;->getLine()Ljava/lang/String;

    move-result-object v0

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v16

    const/16 v0, 0x1b

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9, v0, v8}, Lezvcard/io/ParseWarnings;->add(Ljava/lang/Integer;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_11

    :cond_12
    const/4 v9, 0x0

    :goto_11
    move-object v4, v9

    goto/16 :goto_0
.end method

.method public close()V
    .locals 1

    .line 467
    iget-object v0, p0, Lezvcard/io/text/VCardReader;->reader:Lezvcard/io/text/VCardRawReader;

    invoke-virtual {v0}, Lezvcard/io/text/VCardRawReader;->close()V

    return-void
.end method

.method public setCaretDecodingEnabled(Z)V
    .locals 1

    .line 149
    iget-object v0, p0, Lezvcard/io/text/VCardReader;->reader:Lezvcard/io/text/VCardRawReader;

    invoke-virtual {v0, p1}, Lezvcard/io/text/VCardRawReader;->setCaretDecodingEnabled(Z)V

    return-void
.end method
