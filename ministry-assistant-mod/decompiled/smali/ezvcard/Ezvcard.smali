.class public abstract Lezvcard/Ezvcard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lezvcard/Ezvcard$WriterChainText;,
        Lezvcard/Ezvcard$WriterChain;,
        Lezvcard/Ezvcard$ParserChainTextReader;,
        Lezvcard/Ezvcard$ParserChainText;,
        Lezvcard/Ezvcard$ParserChain;
    }
.end annotation


# static fields
.field public static final URL:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 123
    :try_start_0
    const-class v1, Lezvcard/Ezvcard;

    const-string v2, "/ez-vcard.properties"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 125
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 127
    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lezvcard/Ezvcard;->VERSION:Ljava/lang/String;

    .line 128
    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lezvcard/Ezvcard;->URL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-static {v0}, Lezvcard/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 130
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :goto_0
    invoke-static {v0}, Lezvcard/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static parse(Ljava/io/InputStream;)Lezvcard/Ezvcard$ParserChainTextReader;
    .locals 1

    .line 187
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lezvcard/Ezvcard;->parse(Ljava/io/Reader;)Lezvcard/Ezvcard$ParserChainTextReader;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/Reader;)Lezvcard/Ezvcard$ParserChainTextReader;
    .locals 2

    .line 205
    new-instance v0, Lezvcard/Ezvcard$ParserChainTextReader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lezvcard/Ezvcard$ParserChainTextReader;-><init>(Ljava/io/Reader;Lezvcard/Ezvcard$1;)V

    return-object v0
.end method

.method public static write(Ljava/util/Collection;)Lezvcard/Ezvcard$WriterChainText;
    .locals 2

    .line 487
    new-instance v0, Lezvcard/Ezvcard$WriterChainText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lezvcard/Ezvcard$WriterChainText;-><init>(Ljava/util/Collection;Lezvcard/Ezvcard$1;)V

    return-object v0
.end method

.method public static varargs write([Lezvcard/VCard;)Lezvcard/Ezvcard$WriterChainText;
    .locals 0

    .line 467
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lezvcard/Ezvcard;->write(Ljava/util/Collection;)Lezvcard/Ezvcard$WriterChainText;

    move-result-object p0

    return-object p0
.end method
