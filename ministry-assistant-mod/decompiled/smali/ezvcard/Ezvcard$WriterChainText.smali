.class public Lezvcard/Ezvcard$WriterChainText;
.super Lezvcard/Ezvcard$WriterChain;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezvcard/Ezvcard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriterChainText"
.end annotation


# instance fields
.field caretEncoding:Z

.field final index:Lezvcard/io/scribe/ScribeIndex;

.field prodId:Z

.field version:Lezvcard/VCardVersion;

.field versionStrict:Z


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 1348
    invoke-direct {p0, p1}, Lezvcard/Ezvcard$WriterChain;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x1

    .line 1342
    iput-boolean p1, p0, Lezvcard/Ezvcard$WriterChainText;->prodId:Z

    .line 1343
    iput-boolean p1, p0, Lezvcard/Ezvcard$WriterChainText;->versionStrict:Z

    const/4 p1, 0x0

    .line 1344
    iput-boolean p1, p0, Lezvcard/Ezvcard$WriterChainText;->caretEncoding:Z

    .line 1345
    new-instance p1, Lezvcard/io/scribe/ScribeIndex;

    invoke-direct {p1}, Lezvcard/io/scribe/ScribeIndex;-><init>()V

    iput-object p1, p0, Lezvcard/Ezvcard$WriterChainText;->index:Lezvcard/io/scribe/ScribeIndex;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lezvcard/Ezvcard$1;)V
    .locals 0

    .line 1340
    invoke-direct {p0, p1}, Lezvcard/Ezvcard$WriterChainText;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private go(Lezvcard/io/text/VCardWriter;)V
    .locals 3

    .line 1480
    iget-boolean v0, p0, Lezvcard/Ezvcard$WriterChainText;->prodId:Z

    invoke-virtual {p1, v0}, Lezvcard/io/StreamWriter;->setAddProdId(Z)V

    .line 1481
    iget-boolean v0, p0, Lezvcard/Ezvcard$WriterChainText;->caretEncoding:Z

    invoke-virtual {p1, v0}, Lezvcard/io/text/VCardWriter;->setCaretEncodingEnabled(Z)V

    .line 1482
    iget-boolean v0, p0, Lezvcard/Ezvcard$WriterChainText;->versionStrict:Z

    invoke-virtual {p1, v0}, Lezvcard/io/StreamWriter;->setVersionStrict(Z)V

    .line 1483
    iget-object v0, p0, Lezvcard/Ezvcard$WriterChainText;->index:Lezvcard/io/scribe/ScribeIndex;

    invoke-virtual {p1, v0}, Lezvcard/io/StreamWriter;->setScribeIndex(Lezvcard/io/scribe/ScribeIndex;)V

    .line 1485
    iget-object v0, p0, Lezvcard/Ezvcard$WriterChain;->vcards:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lezvcard/VCard;

    .line 1486
    iget-object v2, p0, Lezvcard/Ezvcard$WriterChainText;->version:Lezvcard/VCardVersion;

    if-nez v2, :cond_1

    .line 1487
    invoke-virtual {v1}, Lezvcard/VCard;->getVersion()Lezvcard/VCardVersion;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1489
    sget-object v2, Lezvcard/VCardVersion;->V3_0:Lezvcard/VCardVersion;

    .line 1491
    :cond_0
    invoke-virtual {p1, v2}, Lezvcard/io/text/VCardWriter;->setTargetVersion(Lezvcard/VCardVersion;)V

    .line 1493
    :cond_1
    invoke-virtual {p1, v1}, Lezvcard/io/StreamWriter;->write(Lezvcard/VCard;)V

    .line 1494
    invoke-virtual {p1}, Lezvcard/io/text/VCardWriter;->flush()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public go(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 1450
    invoke-virtual {p0, p1, v0}, Lezvcard/Ezvcard$WriterChainText;->go(Ljava/io/File;Z)V

    return-void
.end method

.method public go(Ljava/io/File;Z)V
    .locals 2

    .line 1461
    new-instance v0, Lezvcard/io/text/VCardWriter;

    iget-object v1, p0, Lezvcard/Ezvcard$WriterChainText;->version:Lezvcard/VCardVersion;

    invoke-direct {v0, p1, p2, v1}, Lezvcard/io/text/VCardWriter;-><init>(Ljava/io/File;ZLezvcard/VCardVersion;)V

    .line 1463
    :try_start_0
    invoke-direct {p0, v0}, Lezvcard/Ezvcard$WriterChainText;->go(Lezvcard/io/text/VCardWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1465
    invoke-static {v0}, Lezvcard/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lezvcard/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public version(Lezvcard/VCardVersion;)Lezvcard/Ezvcard$WriterChainText;
    .locals 0

    .line 1367
    iput-object p1, p0, Lezvcard/Ezvcard$WriterChainText;->version:Lezvcard/VCardVersion;

    .line 1368
    iget-object p1, p0, Lezvcard/Ezvcard$WriterChain;->this_:Ljava/lang/Object;

    check-cast p1, Lezvcard/Ezvcard$WriterChainText;

    return-object p1
.end method
