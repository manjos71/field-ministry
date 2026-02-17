.class public Lezvcard/io/text/VCardWriter;
.super Lezvcard/io/StreamWriter;
.source "SourceFile"

# interfaces
.implements Ljava/io/Flushable;


# instance fields
.field private final prodIdStack:Ljava/util/LinkedList;

.field private final writer:Lezvcard/io/text/VCardRawWriter;


# direct methods
.method public constructor <init>(Ljava/io/File;ZLezvcard/VCardVersion;)V
    .locals 1

    .line 137
    sget-object v0, Lezvcard/VCardVersion;->V4_0:Lezvcard/VCardVersion;

    if-ne p3, v0, :cond_0

    invoke-static {p1, p2}, Lezvcard/util/IOUtils;->utf8Writer(Ljava/io/File;Z)Ljava/io/Writer;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1, p3}, Lezvcard/io/text/VCardWriter;-><init>(Ljava/io/Writer;Lezvcard/VCardVersion;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lezvcard/VCardVersion;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Lezvcard/io/StreamWriter;-><init>()V

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lezvcard/io/text/VCardWriter;->prodIdStack:Ljava/util/LinkedList;

    .line 145
    new-instance v0, Lezvcard/io/text/VCardRawWriter;

    invoke-direct {v0, p1, p2}, Lezvcard/io/text/VCardRawWriter;-><init>(Ljava/io/Writer;Lezvcard/VCardVersion;)V

    iput-object v0, p0, Lezvcard/io/text/VCardWriter;->writer:Lezvcard/io/text/VCardRawWriter;

    return-void
.end method

.method private isDateTimeValueParameterSpecialCase(Lezvcard/VCardDataType;Lezvcard/VCardDataType;)Z
    .locals 1

    .line 313
    sget-object v0, Lezvcard/VCardDataType;->DATE_AND_OR_TIME:Lezvcard/VCardDataType;

    if-ne p1, v0, :cond_1

    sget-object p1, Lezvcard/VCardDataType;->DATE:Lezvcard/VCardDataType;

    if-eq p2, p1, :cond_0

    sget-object p1, Lezvcard/VCardDataType;->DATE_TIME:Lezvcard/VCardDataType;

    if-eq p2, p1, :cond_0

    sget-object p1, Lezvcard/VCardDataType;->TIME:Lezvcard/VCardDataType;

    if-ne p2, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected _write(Lezvcard/VCard;Ljava/util/List;)V
    .locals 11

    .line 214
    invoke-virtual {p0}, Lezvcard/io/text/VCardWriter;->getTargetVersion()Lezvcard/VCardVersion;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lezvcard/io/text/VCardWriter;->writer:Lezvcard/io/text/VCardRawWriter;

    const-string v2, "VCARD"

    invoke-virtual {v1, v2}, Lezvcard/io/text/VCardRawWriter;->writeBeginComponent(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lezvcard/io/text/VCardWriter;->writer:Lezvcard/io/text/VCardRawWriter;

    invoke-virtual {v1}, Lezvcard/io/text/VCardRawWriter;->writeVersion()V

    .line 218
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lezvcard/property/VCardProperty;

    .line 219
    iget-object v3, p0, Lezvcard/io/StreamWriter;->index:Lezvcard/io/scribe/ScribeIndex;

    invoke-virtual {v3, v1}, Lezvcard/io/scribe/ScribeIndex;->getPropertyScribe(Lezvcard/property/VCardProperty;)Lezvcard/io/scribe/VCardPropertyScribe;

    move-result-object v3

    const/4 v4, 0x0

    .line 225
    :try_start_0
    invoke-virtual {v3, v1, v0}, Lezvcard/io/scribe/VCardPropertyScribe;->writeText(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lezvcard/io/SkipMeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lezvcard/io/EmbeddedVCardException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v5

    move-object v5, v4

    goto :goto_1

    :catch_0
    move-exception v5

    .line 229
    invoke-virtual {v5}, Lezvcard/io/EmbeddedVCardException;->getVCard()Lezvcard/VCard;

    move-result-object v5

    move-object v6, v4

    .line 233
    :goto_1
    invoke-virtual {v3, v1, v0, p1}, Lezvcard/io/scribe/VCardPropertyScribe;->prepareParameters(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;Lezvcard/VCard;)Lezvcard/parameter/VCardParameters;

    move-result-object v7

    if-eqz v5, :cond_2

    .line 237
    sget-object v8, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    const/4 v9, 0x0

    if-ne v0, v8, :cond_1

    .line 239
    iget-object v4, p0, Lezvcard/io/text/VCardWriter;->writer:Lezvcard/io/text/VCardRawWriter;

    invoke-virtual {v1}, Lezvcard/property/VCardProperty;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lezvcard/io/scribe/VCardPropertyScribe;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3, v7, v6}, Lezvcard/io/text/VCardRawWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;Lezvcard/parameter/VCardParameters;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lezvcard/io/text/VCardWriter;->prodIdStack:Ljava/util/LinkedList;

    iget-boolean v3, p0, Lezvcard/io/StreamWriter;->addProdId:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 241
    iput-boolean v9, p0, Lezvcard/io/StreamWriter;->addProdId:Z

    .line 242
    invoke-virtual {p0, v5}, Lezvcard/io/StreamWriter;->write(Lezvcard/VCard;)V

    .line 243
    iget-object v1, p0, Lezvcard/io/text/VCardWriter;->prodIdStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lezvcard/io/StreamWriter;->addProdId:Z

    goto :goto_0

    .line 246
    :cond_1
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 247
    new-instance v8, Lezvcard/io/text/VCardWriter;

    invoke-direct {v8, v6, v0}, Lezvcard/io/text/VCardWriter;-><init>(Ljava/io/Writer;Lezvcard/VCardVersion;)V

    .line 248
    invoke-virtual {v8}, Lezvcard/io/text/VCardWriter;->getRawWriter()Lezvcard/io/text/VCardRawWriter;

    move-result-object v10

    invoke-virtual {v10}, Lezvcard/io/text/VCardRawWriter;->getFoldedLineWriter()Lezvcard/io/text/FoldedLineWriter;

    move-result-object v10

    invoke-virtual {v10, v4}, Lezvcard/io/text/FoldedLineWriter;->setLineLength(Ljava/lang/Integer;)V

    .line 249
    invoke-virtual {v8}, Lezvcard/io/text/VCardWriter;->getRawWriter()Lezvcard/io/text/VCardRawWriter;

    move-result-object v4

    invoke-virtual {v4}, Lezvcard/io/text/VCardRawWriter;->getFoldedLineWriter()Lezvcard/io/text/FoldedLineWriter;

    move-result-object v4

    const-string v10, "\n"

    invoke-virtual {v4, v10}, Lezvcard/io/text/FoldedLineWriter;->setNewline(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v8, v9}, Lezvcard/io/StreamWriter;->setAddProdId(Z)V

    .line 251
    iget-boolean v4, p0, Lezvcard/io/StreamWriter;->versionStrict:Z

    invoke-virtual {v8, v4}, Lezvcard/io/StreamWriter;->setVersionStrict(Z)V

    .line 253
    :try_start_1
    invoke-virtual {v8, v5}, Lezvcard/io/StreamWriter;->write(Lezvcard/VCard;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :catch_1
    invoke-static {v8}, Lezvcard/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {v8}, Lezvcard/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    .line 260
    :goto_2
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-static {v4}, Lezvcard/io/scribe/VCardPropertyScribe;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    iget-object v5, p0, Lezvcard/io/text/VCardWriter;->writer:Lezvcard/io/text/VCardRawWriter;

    invoke-virtual {v1}, Lezvcard/property/VCardProperty;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lezvcard/io/scribe/VCardPropertyScribe;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3, v7, v4}, Lezvcard/io/text/VCardRawWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;Lezvcard/parameter/VCardParameters;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :cond_2
    invoke-virtual {v3, v1, v0}, Lezvcard/io/scribe/VCardPropertyScribe;->dataType(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Lezvcard/VCardDataType;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 277
    invoke-virtual {v3, v0}, Lezvcard/io/scribe/VCardPropertyScribe;->defaultDataType(Lezvcard/VCardVersion;)Lezvcard/VCardDataType;

    move-result-object v5

    if-eq v4, v5, :cond_3

    .line 278
    invoke-direct {p0, v5, v4}, Lezvcard/io/text/VCardWriter;->isDateTimeValueParameterSpecialCase(Lezvcard/VCardDataType;Lezvcard/VCardDataType;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 279
    invoke-virtual {v7, v4}, Lezvcard/parameter/VCardParameters;->setValue(Lezvcard/VCardDataType;)V

    .line 284
    :cond_3
    iget-object v4, p0, Lezvcard/io/text/VCardWriter;->writer:Lezvcard/io/text/VCardRawWriter;

    invoke-virtual {v1}, Lezvcard/property/VCardProperty;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lezvcard/io/scribe/VCardPropertyScribe;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v7, v6}, Lezvcard/io/text/VCardRawWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;Lezvcard/parameter/VCardParameters;Ljava/lang/String;)V

    .line 291
    sget-object v3, Lezvcard/VCardVersion;->V4_0:Lezvcard/VCardVersion;

    if-eq v0, v3, :cond_0

    instance-of v3, v1, Lezvcard/property/BinaryProperty;

    if-eqz v3, :cond_0

    .line 292
    check-cast v1, Lezvcard/property/BinaryProperty;

    .line 293
    invoke-virtual {v1}, Lezvcard/property/BinaryProperty;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lezvcard/io/text/VCardWriter;->writer:Lezvcard/io/text/VCardRawWriter;

    invoke-virtual {v1}, Lezvcard/io/text/VCardRawWriter;->getFoldedLineWriter()Lezvcard/io/text/FoldedLineWriter;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Lezvcard/io/text/FoldedLineWriter;->writeln(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    nop

    goto/16 :goto_0

    .line 299
    :cond_4
    iget-object p1, p0, Lezvcard/io/text/VCardWriter;->writer:Lezvcard/io/text/VCardRawWriter;

    invoke-virtual {p1, v2}, Lezvcard/io/text/VCardRawWriter;->writeEndComponent(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 336
    iget-object v0, p0, Lezvcard/io/text/VCardWriter;->writer:Lezvcard/io/text/VCardRawWriter;

    invoke-virtual {v0}, Lezvcard/io/text/VCardRawWriter;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 328
    iget-object v0, p0, Lezvcard/io/text/VCardWriter;->writer:Lezvcard/io/text/VCardRawWriter;

    invoke-virtual {v0}, Lezvcard/io/text/VCardRawWriter;->flush()V

    return-void
.end method

.method public getRawWriter()Lezvcard/io/text/VCardRawWriter;
    .locals 1

    .line 153
    iget-object v0, p0, Lezvcard/io/text/VCardWriter;->writer:Lezvcard/io/text/VCardRawWriter;

    return-object v0
.end method

.method public getTargetVersion()Lezvcard/VCardVersion;
    .locals 1

    .line 162
    iget-object v0, p0, Lezvcard/io/text/VCardWriter;->writer:Lezvcard/io/text/VCardRawWriter;

    invoke-virtual {v0}, Lezvcard/io/text/VCardRawWriter;->getVersion()Lezvcard/VCardVersion;

    move-result-object v0

    return-object v0
.end method

.method public setCaretEncodingEnabled(Z)V
    .locals 1

    .line 208
    iget-object v0, p0, Lezvcard/io/text/VCardWriter;->writer:Lezvcard/io/text/VCardRawWriter;

    invoke-virtual {v0, p1}, Lezvcard/io/text/VCardRawWriter;->setCaretEncodingEnabled(Z)V

    return-void
.end method

.method public setTargetVersion(Lezvcard/VCardVersion;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lezvcard/io/text/VCardWriter;->writer:Lezvcard/io/text/VCardRawWriter;

    invoke-virtual {v0, p1}, Lezvcard/io/text/VCardRawWriter;->setVersion(Lezvcard/VCardVersion;)V

    return-void
.end method
