.class abstract Lezvcard/Ezvcard$ParserChainText;
.super Lezvcard/Ezvcard$ParserChain;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezvcard/Ezvcard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ParserChainText"
.end annotation


# instance fields
.field caretDecoding:Z

.field final closeWhenDone:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 1

    .line 649
    invoke-direct {p0}, Lezvcard/Ezvcard$ParserChain;-><init>()V

    const/4 v0, 0x1

    .line 646
    iput-boolean v0, p0, Lezvcard/Ezvcard$ParserChainText;->caretDecoding:Z

    .line 650
    iput-boolean p1, p0, Lezvcard/Ezvcard$ParserChainText;->closeWhenDone:Z

    return-void
.end method

.method synthetic constructor <init>(ZLezvcard/Ezvcard$1;)V
    .locals 0

    .line 645
    invoke-direct {p0, p1}, Lezvcard/Ezvcard$ParserChainText;-><init>(Z)V

    return-void
.end method

.method private constructReader()Lezvcard/io/text/VCardReader;
    .locals 2

    .line 706
    invoke-virtual {p0}, Lezvcard/Ezvcard$ParserChainText;->_constructReader()Lezvcard/io/text/VCardReader;

    move-result-object v0

    .line 707
    iget-object v1, p0, Lezvcard/Ezvcard$ParserChain;->index:Lezvcard/io/scribe/ScribeIndex;

    invoke-virtual {v0, v1}, Lezvcard/io/StreamReader;->setScribeIndex(Lezvcard/io/scribe/ScribeIndex;)V

    .line 708
    iget-boolean v1, p0, Lezvcard/Ezvcard$ParserChainText;->caretDecoding:Z

    invoke-virtual {v0, v1}, Lezvcard/io/text/VCardReader;->setCaretDecodingEnabled(Z)V

    return-object v0
.end method


# virtual methods
.method abstract _constructReader()Lezvcard/io/text/VCardReader;
.end method

.method public first()Lezvcard/VCard;
    .locals 4

    .line 669
    invoke-direct {p0}, Lezvcard/Ezvcard$ParserChainText;->constructReader()Lezvcard/io/text/VCardReader;

    move-result-object v0

    .line 672
    :try_start_0
    invoke-virtual {v0}, Lezvcard/io/StreamReader;->readNext()Lezvcard/VCard;

    move-result-object v1

    .line 673
    iget-object v2, p0, Lezvcard/Ezvcard$ParserChain;->warnings:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 674
    invoke-virtual {v0}, Lezvcard/io/StreamReader;->getWarnings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 678
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lezvcard/Ezvcard$ParserChainText;->closeWhenDone:Z

    if-eqz v2, :cond_1

    .line 679
    invoke-static {v0}, Lezvcard/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    return-object v1

    .line 678
    :goto_1
    iget-boolean v2, p0, Lezvcard/Ezvcard$ParserChainText;->closeWhenDone:Z

    if-eqz v2, :cond_2

    .line 679
    invoke-static {v0}, Lezvcard/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    throw v1
.end method
