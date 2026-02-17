.class public Lezvcard/io/text/FoldedLineWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private curLineLength:I

.field private indent:Ljava/lang/String;

.field private lineLength:Ljava/lang/Integer;

.field private newline:Ljava/lang/String;

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lezvcard/io/text/FoldedLineWriter;->curLineLength:I

    const/16 v0, 0x4b

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lezvcard/io/text/FoldedLineWriter;->lineLength:Ljava/lang/Integer;

    .line 48
    const-string v0, " "

    iput-object v0, p0, Lezvcard/io/text/FoldedLineWriter;->indent:Ljava/lang/String;

    .line 49
    const-string v0, "\r\n"

    iput-object v0, p0, Lezvcard/io/text/FoldedLineWriter;->newline:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lezvcard/io/text/FoldedLineWriter;->writer:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;ZLjava/nio/charset/Charset;)Lezvcard/io/text/FoldedLineWriter;
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lezvcard/io/text/FoldedLineWriter;->write(Ljava/lang/CharSequence;ZLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public close()V
    .locals 1

    .line 258
    iget-object v0, p0, Lezvcard/io/text/FoldedLineWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 266
    iget-object v0, p0, Lezvcard/io/text/FoldedLineWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public getNewline()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lezvcard/io/text/FoldedLineWriter;->newline:Ljava/lang/String;

    return-object v0
.end method

.method public setLineLength(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Line length must be greater than 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_1
    :goto_0
    iput-object p1, p0, Lezvcard/io/text/FoldedLineWriter;->lineLength:Ljava/lang/Integer;

    return-void
.end method

.method public setNewline(Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lezvcard/io/text/FoldedLineWriter;->newline:Ljava/lang/String;

    return-void
.end method

.method public write(Ljava/lang/CharSequence;ZLjava/nio/charset/Charset;)V
    .locals 7

    .line 96
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v1, p0

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lezvcard/io/text/FoldedLineWriter;->write([CIIZLjava/nio/charset/Charset;)V

    return-void
.end method

.method public write([CII)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 101
    invoke-virtual/range {v0 .. v5}, Lezvcard/io/text/FoldedLineWriter;->write([CIIZLjava/nio/charset/Charset;)V

    return-void
.end method

.method public write([CIIZLjava/nio/charset/Charset;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-nez p5, :cond_0

    .line 119
    const-string p5, "UTF-8"

    invoke-static {p5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p5

    .line 122
    :cond_0
    new-instance v1, Lezvcard/util/org/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-virtual {p5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p5

    invoke-direct {v1, p5}, Lezvcard/util/org/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/lang/String;)V

    .line 124
    :try_start_0
    new-instance p5, Ljava/lang/String;

    invoke-direct {p5, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 125
    invoke-virtual {v1, p5}, Lezvcard/util/org/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 129
    array-length p3, p1
    :try_end_0
    .catch Lezvcard/util/org/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 141
    :cond_1
    :goto_0
    iget-object p5, p0, Lezvcard/io/text/FoldedLineWriter;->lineLength:Ljava/lang/Integer;

    if-nez p5, :cond_2

    .line 145
    iget-object p4, p0, Lezvcard/io/text/FoldedLineWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p4, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void

    .line 149
    :cond_2
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    if-eqz p4, :cond_3

    add-int/lit8 p5, p5, -0x1

    :cond_3
    add-int/2addr p3, p2

    const/4 v1, -0x1

    move v2, p2

    const/4 v3, -0x1

    :goto_1
    if-ge p2, p3, :cond_f

    .line 162
    aget-char v4, p1, p2

    if-ltz v3, :cond_4

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    const/4 v3, -0x1

    :cond_4
    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    .line 176
    iget-object v4, p0, Lezvcard/io/text/FoldedLineWriter;->writer:Ljava/io/Writer;

    sub-int v5, p2, v2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, p1, v2, v5}, Ljava/io/Writer;->write([CII)V

    .line 177
    iput v0, p0, Lezvcard/io/text/FoldedLineWriter;->curLineLength:I

    :goto_2
    add-int/lit8 v2, p2, 0x1

    goto/16 :goto_5

    :cond_5
    const/16 v6, 0xd

    if-ne v4, v6, :cond_8

    add-int/lit8 v4, p3, -0x1

    if-eq p2, v4, :cond_7

    add-int/lit8 v4, p2, 0x1

    .line 183
    aget-char v4, p1, v4

    if-eq v4, v5, :cond_6

    goto :goto_3

    .line 188
    :cond_6
    iget v4, p0, Lezvcard/io/text/FoldedLineWriter;->curLineLength:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lezvcard/io/text/FoldedLineWriter;->curLineLength:I

    goto/16 :goto_5

    .line 184
    :cond_7
    :goto_3
    iget-object v4, p0, Lezvcard/io/text/FoldedLineWriter;->writer:Ljava/io/Writer;

    sub-int v5, p2, v2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, p1, v2, v5}, Ljava/io/Writer;->write([CII)V

    .line 185
    iput v0, p0, Lezvcard/io/text/FoldedLineWriter;->curLineLength:I

    goto :goto_2

    :cond_8
    const/16 v5, 0x3d

    if-ne v4, v5, :cond_9

    if-eqz p4, :cond_9

    const/4 v3, 0x0

    .line 197
    :cond_9
    iget v6, p0, Lezvcard/io/text/FoldedLineWriter;->curLineLength:I

    if-lt v6, p5, :cond_e

    .line 205
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 206
    :goto_4
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v4, p3, -0x1

    if-ge p2, v4, :cond_a

    add-int/lit8 p2, p2, 0x1

    .line 208
    aget-char v4, p1, p2

    goto :goto_4

    :cond_a
    add-int/lit8 v4, p3, -0x1

    if-lt p2, v4, :cond_b

    goto :goto_6

    :cond_b
    if-lez v3, :cond_c

    rsub-int/lit8 v4, v3, 0x3

    add-int/2addr p2, v4

    add-int/lit8 v4, p3, -0x1

    if-lt p2, v4, :cond_c

    goto :goto_6

    .line 235
    :cond_c
    iget-object v4, p0, Lezvcard/io/text/FoldedLineWriter;->writer:Ljava/io/Writer;

    sub-int v6, p2, v2

    invoke-virtual {v4, p1, v2, v6}, Ljava/io/Writer;->write([CII)V

    if-eqz p4, :cond_d

    .line 237
    iget-object v2, p0, Lezvcard/io/text/FoldedLineWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(I)V

    .line 239
    :cond_d
    iget-object v2, p0, Lezvcard/io/text/FoldedLineWriter;->writer:Ljava/io/Writer;

    iget-object v4, p0, Lezvcard/io/text/FoldedLineWriter;->newline:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lezvcard/io/text/FoldedLineWriter;->writer:Ljava/io/Writer;

    iget-object v4, p0, Lezvcard/io/text/FoldedLineWriter;->indent:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Lezvcard/io/text/FoldedLineWriter;->indent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lezvcard/io/text/FoldedLineWriter;->curLineLength:I

    move v2, p2

    goto :goto_5

    :cond_e
    add-int/lit8 v6, v6, 0x1

    .line 247
    iput v6, p0, Lezvcard/io/text/FoldedLineWriter;->curLineLength:I

    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    .line 250
    :cond_f
    :goto_6
    iget-object p2, p0, Lezvcard/io/text/FoldedLineWriter;->writer:Ljava/io/Writer;

    sub-int/2addr p3, v2

    invoke-virtual {p2, p1, v2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method public writeln(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lezvcard/io/text/FoldedLineWriter;->newline:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
