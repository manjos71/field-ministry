.class public Lezvcard/io/text/FoldedLineReader;
.super Ljava/io/BufferedReader;
.source "SourceFile"


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final foldedQuotedPrintableValueRegex:Ljava/util/regex/Pattern;

.field private lastLine:Ljava/lang/String;

.field private lastLineNum:I

.field private lineCount:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 52
    const-string v0, "[^:]*?QUOTED-PRINTABLE.*?:.*?="

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lezvcard/io/text/FoldedLineReader;->foldedQuotedPrintableValueRegex:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lezvcard/io/text/FoldedLineReader;->lastLineNum:I

    iput v0, p0, Lezvcard/io/text/FoldedLineReader;->lineCount:I

    .line 65
    instance-of v0, p1, Ljava/io/InputStreamReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 66
    check-cast p1, Ljava/io/InputStreamReader;

    .line 67
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lezvcard/io/text/FoldedLineReader;->charset:Ljava/nio/charset/Charset;

    return-void

    .line 70
    :cond_1
    iput-object v1, p0, Lezvcard/io/text/FoldedLineReader;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method private static chop(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private readNonEmptyLine()Ljava/lang/String;
    .locals 2

    .line 113
    :cond_0
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_1
    iget v1, p0, Lezvcard/io/text/FoldedLineReader;->lineCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lezvcard/io/text/FoldedLineReader;->lineCount:I

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0
.end method


# virtual methods
.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .line 95
    iget-object v0, p0, Lezvcard/io/text/FoldedLineReader;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getLineNum()I
    .locals 1

    .line 87
    iget v0, p0, Lezvcard/io/text/FoldedLineReader;->lastLineNum:I

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 4

    .line 133
    iget-object v0, p0, Lezvcard/io/text/FoldedLineReader;->lastLine:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lezvcard/io/text/FoldedLineReader;->readNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 134
    iput-object v1, p0, Lezvcard/io/text/FoldedLineReader;->lastLine:Ljava/lang/String;

    if-nez v0, :cond_1

    return-object v1

    .line 166
    :cond_1
    iget-object v1, p0, Lezvcard/io/text/FoldedLineReader;->foldedQuotedPrintableValueRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    invoke-static {v0}, Lezvcard/io/text/FoldedLineReader;->chop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_2
    iget v2, p0, Lezvcard/io/text/FoldedLineReader;->lineCount:I

    iput v2, p0, Lezvcard/io/text/FoldedLineReader;->lastLineNum:I

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_3

    .line 175
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lezvcard/io/text/FoldedLineReader;->readNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_6

    .line 183
    invoke-static {v0}, Lezvcard/util/StringUtils;->ltrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    invoke-static {v0}, Lezvcard/io/text/FoldedLineReader;->chop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_8

    goto :goto_0

    .line 202
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 204
    invoke-static {v0}, Lezvcard/util/StringUtils;->ltrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 209
    :cond_7
    iput-object v0, p0, Lezvcard/io/text/FoldedLineReader;->lastLine:Ljava/lang/String;

    .line 213
    :cond_8
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
