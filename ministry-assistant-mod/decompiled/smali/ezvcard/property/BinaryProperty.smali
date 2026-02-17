.class public abstract Lezvcard/property/BinaryProperty;
.super Lezvcard/property/VCardProperty;
.source "SourceFile"


# instance fields
.field protected contentType:Lezvcard/parameter/MediaTypeParameter;

.field protected data:[B

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lezvcard/parameter/MediaTypeParameter;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 75
    invoke-virtual {p0, p1, p2}, Lezvcard/property/BinaryProperty;->setUrl(Ljava/lang/String;Lezvcard/parameter/MediaTypeParameter;)V

    return-void
.end method

.method public constructor <init>([BLezvcard/parameter/MediaTypeParameter;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 84
    invoke-virtual {p0, p1, p2}, Lezvcard/property/BinaryProperty;->setData([BLezvcard/parameter/MediaTypeParameter;)V

    return-void
.end method


# virtual methods
.method public getContentType()Lezvcard/parameter/MediaTypeParameter;
    .locals 1

    .line 150
    iget-object v0, p0, Lezvcard/property/BinaryProperty;->contentType:Lezvcard/parameter/MediaTypeParameter;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 112
    iget-object v0, p0, Lezvcard/property/BinaryProperty;->data:[B

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lezvcard/property/BinaryProperty;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Lezvcard/parameter/MediaTypeParameter;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lezvcard/property/BinaryProperty;->contentType:Lezvcard/parameter/MediaTypeParameter;

    return-void
.end method

.method public setData([BLezvcard/parameter/MediaTypeParameter;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lezvcard/property/BinaryProperty;->url:Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lezvcard/property/BinaryProperty;->data:[B

    .line 123
    invoke-virtual {p0, p2}, Lezvcard/property/BinaryProperty;->setContentType(Lezvcard/parameter/MediaTypeParameter;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;Lezvcard/parameter/MediaTypeParameter;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lezvcard/property/BinaryProperty;->url:Ljava/lang/String;

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lezvcard/property/BinaryProperty;->data:[B

    .line 142
    invoke-virtual {p0, p2}, Lezvcard/property/BinaryProperty;->setContentType(Lezvcard/parameter/MediaTypeParameter;)V

    return-void
.end method
