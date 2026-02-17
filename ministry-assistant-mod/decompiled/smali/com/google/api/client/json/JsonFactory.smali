.class public abstract Lcom/google/api/client/json/JsonFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toByteStream(Ljava/lang/Object;Z)Ljava/io/ByteArrayOutputStream;
    .locals 2

    .line 161
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    sget-object v1, Lcom/google/api/client/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/json/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 164
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonGenerator;->enablePrettyPrint()V

    .line 166
    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/api/client/json/JsonGenerator;->serialize(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonGenerator;->flush()V

    return-object v0
.end method

.method private toString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/json/JsonFactory;->toByteStream(Ljava/lang/Object;Z)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abstract createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;
.end method

.method public abstract createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;
.end method

.method public abstract createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;
.end method

.method public abstract createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;
.end method

.method public final toPrettyString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/google/api/client/json/JsonFactory;->toString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/google/api/client/json/JsonFactory;->toString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
