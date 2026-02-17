.class public Lezvcard/io/text/VCardRawReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private caretDecodingEnabled:Z

.field private final reader:Lezvcard/io/text/FoldedLineReader;

.field private version:Lezvcard/VCardVersion;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lezvcard/io/text/VCardRawReader;->caretDecodingEnabled:Z

    .line 53
    sget-object v0, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    iput-object v0, p0, Lezvcard/io/text/VCardRawReader;->version:Lezvcard/VCardVersion;

    .line 59
    new-instance v0, Lezvcard/io/text/FoldedLineReader;

    invoke-direct {v0, p1}, Lezvcard/io/text/FoldedLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lezvcard/io/text/VCardRawReader;->reader:Lezvcard/io/text/FoldedLineReader;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 320
    iget-object v0, p0, Lezvcard/io/text/VCardRawReader;->reader:Lezvcard/io/text/FoldedLineReader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .line 313
    iget-object v0, p0, Lezvcard/io/text/VCardRawReader;->reader:Lezvcard/io/text/FoldedLineReader;

    invoke-virtual {v0}, Lezvcard/io/text/FoldedLineReader;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getLineNum()I
    .locals 1

    .line 67
    iget-object v0, p0, Lezvcard/io/text/VCardRawReader;->reader:Lezvcard/io/text/FoldedLineReader;

    invoke-virtual {v0}, Lezvcard/io/text/FoldedLineReader;->getLineNum()I

    move-result v0

    return v0
.end method

.method public getVersion()Lezvcard/VCardVersion;
    .locals 1

    .line 75
    iget-object v0, p0, Lezvcard/io/text/VCardRawReader;->version:Lezvcard/VCardVersion;

    return-object v0
.end method

.method public readLine()Lezvcard/io/text/VCardRawLine;
    .locals 16

    move-object/from16 v0, p0

    .line 87
    iget-object v1, v0, Lezvcard/io/text/VCardRawReader;->reader:Lezvcard/io/text/FoldedLineReader;

    invoke-virtual {v1}, Lezvcard/io/text/FoldedLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 94
    :cond_0
    new-instance v3, Lezvcard/parameter/VCardParameters;

    invoke-direct {v3}, Lezvcard/parameter/VCardParameters;-><init>()V

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v2

    move-object v9, v8

    move-object v11, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 101
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v6, v12, :cond_19

    .line 102
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3b

    const/16 v14, 0x5e

    const/16 v15, 0x22

    const/16 v2, 0x5c

    if-eqz v7, :cond_b

    const/16 v5, 0x6e

    if-ne v7, v2, :cond_6

    if-ne v12, v2, :cond_1

    .line 108
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    if-eq v12, v5, :cond_5

    const/16 v2, 0x4e

    if-ne v12, v2, :cond_2

    goto :goto_1

    :cond_2
    if-ne v12, v15, :cond_3

    .line 112
    iget-object v2, v0, Lezvcard/io/text/VCardRawReader;->version:Lezvcard/VCardVersion;

    sget-object v5, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    if-eq v2, v5, :cond_3

    .line 114
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-ne v12, v13, :cond_4

    .line 115
    iget-object v2, v0, Lezvcard/io/text/VCardRawReader;->version:Lezvcard/VCardVersion;

    sget-object v5, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    if-ne v2, v5, :cond_4

    .line 118
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 121
    :cond_4
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 111
    :cond_5
    :goto_1
    sget-object v2, Lezvcard/util/StringUtils;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    if-ne v7, v14, :cond_a

    if-ne v12, v14, :cond_7

    .line 125
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    if-ne v12, v5, :cond_8

    .line 127
    sget-object v2, Lezvcard/util/StringUtils;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const/16 v2, 0x27

    if-ne v12, v2, :cond_9

    .line 129
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 132
    :cond_9
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    :goto_2
    const/4 v2, 0x0

    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_b
    if-eq v12, v2, :cond_c

    if-ne v12, v14, :cond_d

    .line 139
    iget-object v2, v0, Lezvcard/io/text/VCardRawReader;->version:Lezvcard/VCardVersion;

    sget-object v5, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    if-eq v2, v5, :cond_d

    iget-boolean v2, v0, Lezvcard/io/text/VCardRawReader;->caretDecodingEnabled:Z

    if-eqz v2, :cond_d

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_d
    const/16 v2, 0x2e

    if-ne v12, v2, :cond_e

    if-nez v8, :cond_e

    if-nez v9, :cond_e

    .line 147
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    .line 148
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_6

    :cond_e
    const/16 v2, 0x3a

    if-eq v12, v13, :cond_f

    if-ne v12, v2, :cond_14

    :cond_f
    if-nez v10, :cond_14

    if-nez v9, :cond_10

    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    const/4 v5, 0x0

    goto :goto_4

    .line 158
    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 159
    iget-object v13, v0, Lezvcard/io/text/VCardRawReader;->version:Lezvcard/VCardVersion;

    sget-object v14, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    if-ne v13, v14, :cond_11

    .line 161
    invoke-static {v5}, Lezvcard/util/StringUtils;->ltrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 163
    :cond_11
    invoke-virtual {v3, v11, v5}, Lezvcard/util/ListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x0

    goto :goto_3

    .line 166
    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    if-ne v12, v2, :cond_13

    .line 170
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v6, v2, :cond_12

    add-int/lit8 v6, v6, 0x1

    .line 171
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 175
    :cond_12
    const-string v2, ""

    goto :goto_7

    :cond_13
    const/4 v2, 0x0

    goto :goto_6

    :cond_14
    const/16 v2, 0x2c

    if-ne v12, v2, :cond_15

    if-nez v10, :cond_15

    .line 180
    iget-object v2, v0, Lezvcard/io/text/VCardRawReader;->version:Lezvcard/VCardVersion;

    sget-object v5, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    if-eq v2, v5, :cond_15

    .line 182
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v11, v2}, Lezvcard/util/ListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 183
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_6

    :cond_15
    const/16 v2, 0x3d

    if-ne v12, v2, :cond_17

    if-nez v11, :cond_17

    .line 189
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    iget-object v5, v0, Lezvcard/io/text/VCardRawReader;->version:Lezvcard/VCardVersion;

    sget-object v11, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    if-ne v5, v11, :cond_16

    .line 192
    invoke-static {v2}, Lezvcard/util/StringUtils;->rtrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_16
    move-object v11, v2

    const/4 v2, 0x0

    .line 195
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_6

    :cond_17
    const/4 v2, 0x0

    if-ne v12, v15, :cond_18

    .line 199
    iget-object v5, v0, Lezvcard/io/text/VCardRawReader;->version:Lezvcard/VCardVersion;

    sget-object v13, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    if-eq v5, v13, :cond_18

    xor-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 205
    :cond_18
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :goto_5
    move v7, v12

    :goto_6
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_19
    const/4 v2, 0x0

    :goto_7
    if-eqz v9, :cond_1c

    if-eqz v2, :cond_1c

    .line 212
    const-string v4, "VERSION"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 213
    invoke-static {v2}, Lezvcard/VCardVersion;->valueOfByStr(Ljava/lang/String;)Lezvcard/VCardVersion;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 217
    iput-object v4, v0, Lezvcard/io/text/VCardRawReader;->version:Lezvcard/VCardVersion;

    goto :goto_8

    .line 215
    :cond_1a
    new-instance v3, Lezvcard/io/text/InvalidVersionException;

    invoke-direct {v3, v2, v1}, Lezvcard/io/text/InvalidVersionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 220
    :cond_1b
    :goto_8
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 221
    new-instance v2, Lezvcard/io/text/VCardRawLine;

    invoke-direct {v2, v8, v9, v3, v1}, Lezvcard/io/text/VCardRawLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lezvcard/parameter/VCardParameters;Ljava/lang/String;)V

    return-object v2

    .line 209
    :cond_1c
    new-instance v2, Lezvcard/io/text/VCardParseException;

    invoke-direct {v2, v1}, Lezvcard/io/text/VCardParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setCaretDecodingEnabled(Z)V
    .locals 0

    .line 305
    iput-boolean p1, p0, Lezvcard/io/text/VCardRawReader;->caretDecodingEnabled:Z

    return-void
.end method
