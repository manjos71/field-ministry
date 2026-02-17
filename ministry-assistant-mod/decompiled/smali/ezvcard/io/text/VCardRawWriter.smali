.class public Lezvcard/io/text/VCardRawWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final invalidParamValueChars:Ljava/util/Map;

.field private static final newlineRegex:Ljava/util/regex/Pattern;

.field private static final propertyNameAndGroupRegex:Ljava/util/regex/Pattern;

.field private static final quoteMeRegex:Ljava/util/regex/Pattern;


# instance fields
.field private caretEncodingEnabled:Z

.field private version:Lezvcard/VCardVersion;

.field private final writer:Lezvcard/io/text/FoldedLineWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    const-string v0, ".*?[,:;].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lezvcard/io/text/VCardRawWriter;->quoteMeRegex:Ljava/util/regex/Pattern;

    .line 65
    const-string v0, "\\r\\n|\\r|\\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lezvcard/io/text/VCardRawWriter;->newlineRegex:Ljava/util/regex/Pattern;

    .line 72
    const-string v0, "(?i)[-a-z0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lezvcard/io/text/VCardRawWriter;->propertyNameAndGroupRegex:Ljava/util/regex/Pattern;

    .line 80
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/16 v2, 0x1f

    const/4 v3, 0x0

    .line 81
    invoke-virtual {v0, v3, v2}, Ljava/util/BitSet;->set(II)V

    const/16 v2, 0x7f

    .line 82
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x9

    .line 83
    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    const/16 v2, 0xa

    .line 84
    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    const/16 v2, 0xd

    .line 85
    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 87
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lezvcard/VCardVersion;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 91
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 92
    invoke-virtual {v3, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    const/16 v4, 0x2c

    .line 94
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x2e

    .line 95
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x3a

    .line 96
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x3d

    .line 97
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x5b

    .line 98
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x5d

    .line 99
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 101
    sget-object v4, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 107
    invoke-virtual {v3, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 109
    sget-object v0, Lezvcard/VCardVersion;->V3_0:Lezvcard/VCardVersion;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lezvcard/VCardVersion;->V4_0:Lezvcard/VCardVersion;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lezvcard/io/text/VCardRawWriter;->invalidParamValueChars:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lezvcard/VCardVersion;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lezvcard/io/text/VCardRawWriter;->caretEncodingEnabled:Z

    .line 126
    new-instance v0, Lezvcard/io/text/FoldedLineWriter;

    invoke-direct {v0, p1}, Lezvcard/io/text/FoldedLineWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lezvcard/io/text/VCardRawWriter;->writer:Lezvcard/io/text/FoldedLineWriter;

    .line 127
    iput-object p2, p0, Lezvcard/io/text/VCardRawWriter;->version:Lezvcard/VCardVersion;

    return-void
.end method

.method private applyCaretEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 557
    const-string v0, "^"

    const-string v1, "^^"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 558
    sget-object v0, Lezvcard/io/text/VCardRawWriter;->newlineRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "^n"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 559
    const-string v0, "\""

    const-string v1, "^\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private containsNewlines(Ljava/lang/String;)Z
    .locals 1

    .line 594
    sget-object v0, Lezvcard/io/text/VCardRawWriter;->newlineRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method

.method private containsSpecialChars(Ljava/lang/String;)Z
    .locals 1

    .line 603
    sget-object v0, Lezvcard/io/text/VCardRawWriter;->quoteMeRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private escapeNewlines(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 577
    sget-object v0, Lezvcard/io/text/VCardRawWriter;->newlineRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "\\\\n"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private removeInvalidParameterValueChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 530
    sget-object v0, Lezvcard/io/text/VCardRawWriter;->invalidParamValueChars:Ljava/util/Map;

    iget-object v1, p0, Lezvcard/io/text/VCardRawWriter;->version:Lezvcard/VCardVersion;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 533
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 534
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 535
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 538
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 544
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    return-object p1

    .line 548
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private sanitizeParameterValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 455
    sget-object p2, Lezvcard/io/text/VCardRawWriter$1;->$SwitchMap$ezvcard$VCardVersion:[I

    iget-object p3, p0, Lezvcard/io/text/VCardRawWriter;->version:Lezvcard/VCardVersion;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    const-string v0, " "

    if-eq p2, p3, :cond_4

    const/4 p3, 0x2

    const/16 v1, 0x27

    const/16 v2, 0x22

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 497
    :cond_0
    invoke-direct {p0, p1}, Lezvcard/io/text/VCardRawWriter;->removeInvalidParameterValueChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 499
    iget-boolean p3, p0, Lezvcard/io/text/VCardRawWriter;->caretEncodingEnabled:Z

    if-eqz p3, :cond_1

    .line 500
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 503
    invoke-direct {p0, p2}, Lezvcard/io/text/VCardRawWriter;->applyCaretEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 506
    :cond_1
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 508
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 511
    sget-object p1, Lezvcard/io/text/VCardRawWriter;->newlineRegex:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string p2, "\\\\\\n"

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 476
    :cond_2
    invoke-direct {p0, p1}, Lezvcard/io/text/VCardRawWriter;->removeInvalidParameterValueChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 478
    iget-boolean p3, p0, Lezvcard/io/text/VCardRawWriter;->caretEncodingEnabled:Z

    if-eqz p3, :cond_3

    .line 479
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 482
    invoke-direct {p0, p2}, Lezvcard/io/text/VCardRawWriter;->applyCaretEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 485
    :cond_3
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 488
    sget-object p3, Lezvcard/io/text/VCardRawWriter;->newlineRegex:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 490
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-object p1, p2

    goto :goto_0

    .line 458
    :cond_4
    invoke-direct {p0, p1}, Lezvcard/io/text/VCardRawWriter;->removeInvalidParameterValueChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 461
    sget-object p3, Lezvcard/io/text/VCardRawWriter;->newlineRegex:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 464
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    const-string p1, "\\"

    const-string p3, "\\\\"

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 470
    const-string p2, ";"

    const-string p3, "\\;"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private sanitizeValue(Lezvcard/parameter/VCardParameters;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    .line 427
    const-string p1, ""

    return-object p1

    .line 435
    :cond_0
    iget-object v0, p0, Lezvcard/io/text/VCardRawWriter;->version:Lezvcard/VCardVersion;

    sget-object v1, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p2}, Lezvcard/io/text/VCardRawWriter;->containsNewlines(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    sget-object v0, Lezvcard/parameter/Encoding;->QUOTED_PRINTABLE:Lezvcard/parameter/Encoding;

    invoke-virtual {p1, v0}, Lezvcard/parameter/VCardParameters;->setEncoding(Lezvcard/parameter/Encoding;)V

    return-object p2

    .line 440
    :cond_1
    invoke-direct {p0, p2}, Lezvcard/io/text/VCardRawWriter;->escapeNewlines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 619
    iget-object v0, p0, Lezvcard/io/text/VCardRawWriter;->writer:Lezvcard/io/text/FoldedLineWriter;

    invoke-virtual {v0}, Lezvcard/io/text/FoldedLineWriter;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 611
    iget-object v0, p0, Lezvcard/io/text/VCardRawWriter;->writer:Lezvcard/io/text/FoldedLineWriter;

    invoke-virtual {v0}, Lezvcard/io/text/FoldedLineWriter;->flush()V

    return-void
.end method

.method public getFoldedLineWriter()Lezvcard/io/text/FoldedLineWriter;
    .locals 1

    .line 135
    iget-object v0, p0, Lezvcard/io/text/VCardRawWriter;->writer:Lezvcard/io/text/FoldedLineWriter;

    return-object v0
.end method

.method public getVersion()Lezvcard/VCardVersion;
    .locals 1

    .line 251
    iget-object v0, p0, Lezvcard/io/text/VCardRawWriter;->version:Lezvcard/VCardVersion;

    return-object v0
.end method

.method public setCaretEncodingEnabled(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lezvcard/io/text/VCardRawWriter;->caretEncodingEnabled:Z

    return-void
.end method

.method public setVersion(Lezvcard/VCardVersion;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lezvcard/io/text/VCardRawWriter;->version:Lezvcard/VCardVersion;

    return-void
.end method

.method public writeBeginComponent(Ljava/lang/String;)V
    .locals 1

    .line 285
    const-string v0, "BEGIN"

    invoke-virtual {p0, v0, p1}, Lezvcard/io/text/VCardRawWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeEndComponent(Ljava/lang/String;)V
    .locals 1

    .line 295
    const-string v0, "END"

    invoke-virtual {p0, v0, p1}, Lezvcard/io/text/VCardRawWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 316
    new-instance v0, Lezvcard/parameter/VCardParameters;

    invoke-direct {v0}, Lezvcard/parameter/VCardParameters;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lezvcard/io/text/VCardRawWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;Lezvcard/parameter/VCardParameters;Ljava/lang/String;)V

    return-void
.end method

.method public writeProperty(Ljava/lang/String;Ljava/lang/String;Lezvcard/parameter/VCardParameters;Ljava/lang/String;)V
    .locals 10

    if-eqz p1, :cond_1

    .line 332
    sget-object v0, Lezvcard/io/text/VCardRawWriter;->propertyNameAndGroupRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Group contains invalid characters.  Valid characters are letters, numbers, and hyphens: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 337
    :cond_1
    :goto_0
    sget-object v0, Lezvcard/io/text/VCardRawWriter;->propertyNameAndGroupRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 341
    invoke-direct {p0, p3, p4}, Lezvcard/io/text/VCardRawWriter;->sanitizeValue(Lezvcard/parameter/VCardParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 347
    invoke-virtual {p3}, Lezvcard/parameter/VCardParameters;->getEncoding()Lezvcard/parameter/Encoding;

    move-result-object v0

    sget-object v1, Lezvcard/parameter/Encoding;->QUOTED_PRINTABLE:Lezvcard/parameter/Encoding;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 350
    invoke-virtual {p3}, Lezvcard/parameter/VCardParameters;->getCharset()Ljava/lang/String;

    move-result-object v1

    .line 351
    const-string v4, "UTF-8"

    if-nez v1, :cond_3

    .line 352
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_2

    .line 355
    :cond_3
    :try_start_0
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 357
    :catchall_0
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 360
    :goto_2
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lezvcard/parameter/VCardParameters;->setCharset(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz p1, :cond_5

    .line 365
    iget-object v4, p0, Lezvcard/io/text/VCardRawWriter;->writer:Lezvcard/io/text/FoldedLineWriter;

    invoke-virtual {v4, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 369
    :cond_5
    iget-object p1, p0, Lezvcard/io/text/VCardRawWriter;->writer:Lezvcard/io/text/FoldedLineWriter;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 372
    invoke-virtual {p3}, Lezvcard/util/ListMultimap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 373
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 374
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 375
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 379
    :cond_7
    iget-object v5, p0, Lezvcard/io/text/VCardRawWriter;->version:Lezvcard/VCardVersion;

    sget-object v6, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    const/16 v7, 0x3d

    const/16 v8, 0x3b

    if-ne v5, v6, :cond_9

    .line 380
    const-string v5, "TYPE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 381
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 382
    invoke-direct {p0, v6, v4, p2}, Lezvcard/io/text/VCardRawWriter;->sanitizeParameterValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_8

    .line 386
    iget-object v9, p0, Lezvcard/io/text/VCardRawWriter;->writer:Lezvcard/io/text/FoldedLineWriter;

    invoke-virtual {v9, v8}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_5

    .line 389
    :cond_8
    iget-object v9, p0, Lezvcard/io/text/VCardRawWriter;->writer:Lezvcard/io/text/FoldedLineWriter;

    invoke-virtual {v9, v8}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_5

    .line 397
    :cond_9
    iget-object v5, p0, Lezvcard/io/text/VCardRawWriter;->writer:Lezvcard/io/text/FoldedLineWriter;

    invoke-virtual {v5, v8}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 398
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v5, 0x1

    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v5, :cond_a

    .line 400
    iget-object v5, p0, Lezvcard/io/text/VCardRawWriter;->writer:Lezvcard/io/text/FoldedLineWriter;

    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 403
    :cond_a
    invoke-direct {p0, v6, v4, p2}, Lezvcard/io/text/VCardRawWriter;->sanitizeParameterValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 404
    invoke-direct {p0, v5}, Lezvcard/io/text/VCardRawWriter;->containsSpecialChars(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 405
    iget-object v6, p0, Lezvcard/io/text/VCardRawWriter;->writer:Lezvcard/io/text/FoldedLineWriter;

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_7

    .line 407
    :cond_b
    iget-object v6, p0, Lezvcard/io/text/VCardRawWriter;->writer:Lezvcard/io/text/FoldedLineWriter;

    invoke-virtual {v6, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :goto_7
    const/4 v5, 0x0

    goto :goto_6

    .line 414
    :cond_c
    iget-object p1, p0, Lezvcard/io/text/VCardRawWriter;->writer:Lezvcard/io/text/FoldedLineWriter;

    const/16 p2, 0x3a

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 415
    iget-object p1, p0, Lezvcard/io/text/VCardRawWriter;->writer:Lezvcard/io/text/FoldedLineWriter;

    invoke-virtual {p1, p4, v0, v1}, Lezvcard/io/text/FoldedLineWriter;->append(Ljava/lang/CharSequence;ZLjava/nio/charset/Charset;)Lezvcard/io/text/FoldedLineWriter;

    .line 416
    iget-object p1, p0, Lezvcard/io/text/VCardRawWriter;->writer:Lezvcard/io/text/FoldedLineWriter;

    invoke-virtual {p1}, Lezvcard/io/text/FoldedLineWriter;->getNewline()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void

    .line 338
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Property name contains invalid characters.  Valid characters are letters, numbers, and hyphens: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeVersion()V
    .locals 2

    .line 304
    iget-object v0, p0, Lezvcard/io/text/VCardRawWriter;->version:Lezvcard/VCardVersion;

    invoke-virtual {v0}, Lezvcard/VCardVersion;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERSION"

    invoke-virtual {p0, v1, v0}, Lezvcard/io/text/VCardRawWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
