.class public abstract Lezvcard/io/scribe/ImagePropertyScribe;
.super Lezvcard/io/scribe/BinaryPropertyScribe;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lezvcard/io/scribe/BinaryPropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected _mediaTypeFromFileExtension(Ljava/lang/String;)Lezvcard/parameter/ImageType;
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-static {v0, v0, p1}, Lezvcard/parameter/ImageType;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lezvcard/parameter/ImageType;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _mediaTypeFromFileExtension(Ljava/lang/String;)Lezvcard/parameter/MediaTypeParameter;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lezvcard/io/scribe/ImagePropertyScribe;->_mediaTypeFromFileExtension(Ljava/lang/String;)Lezvcard/parameter/ImageType;

    move-result-object p1

    return-object p1
.end method

.method protected _mediaTypeFromMediaTypeParameter(Ljava/lang/String;)Lezvcard/parameter/ImageType;
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-static {v0, p1, v0}, Lezvcard/parameter/ImageType;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lezvcard/parameter/ImageType;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _mediaTypeFromMediaTypeParameter(Ljava/lang/String;)Lezvcard/parameter/MediaTypeParameter;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lezvcard/io/scribe/ImagePropertyScribe;->_mediaTypeFromMediaTypeParameter(Ljava/lang/String;)Lezvcard/parameter/ImageType;

    move-result-object p1

    return-object p1
.end method

.method protected _mediaTypeFromTypeParameter(Ljava/lang/String;)Lezvcard/parameter/ImageType;
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-static {p1, v0, v0}, Lezvcard/parameter/ImageType;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lezvcard/parameter/ImageType;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _mediaTypeFromTypeParameter(Ljava/lang/String;)Lezvcard/parameter/MediaTypeParameter;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lezvcard/io/scribe/ImagePropertyScribe;->_mediaTypeFromTypeParameter(Ljava/lang/String;)Lezvcard/parameter/ImageType;

    move-result-object p1

    return-object p1
.end method
