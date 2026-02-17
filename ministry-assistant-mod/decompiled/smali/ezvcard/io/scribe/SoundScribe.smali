.class public Lezvcard/io/scribe/SoundScribe;
.super Lezvcard/io/scribe/BinaryPropertyScribe;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    const-class v0, Lezvcard/property/Sound;

    const-string v1, "SOUND"

    invoke-direct {p0, v0, v1}, Lezvcard/io/scribe/BinaryPropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic _mediaTypeFromFileExtension(Ljava/lang/String;)Lezvcard/parameter/MediaTypeParameter;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lezvcard/io/scribe/SoundScribe;->_mediaTypeFromFileExtension(Ljava/lang/String;)Lezvcard/parameter/SoundType;

    move-result-object p1

    return-object p1
.end method

.method protected _mediaTypeFromFileExtension(Ljava/lang/String;)Lezvcard/parameter/SoundType;
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-static {v0, v0, p1}, Lezvcard/parameter/SoundType;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lezvcard/parameter/SoundType;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _mediaTypeFromMediaTypeParameter(Ljava/lang/String;)Lezvcard/parameter/MediaTypeParameter;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lezvcard/io/scribe/SoundScribe;->_mediaTypeFromMediaTypeParameter(Ljava/lang/String;)Lezvcard/parameter/SoundType;

    move-result-object p1

    return-object p1
.end method

.method protected _mediaTypeFromMediaTypeParameter(Ljava/lang/String;)Lezvcard/parameter/SoundType;
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-static {v0, p1, v0}, Lezvcard/parameter/SoundType;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lezvcard/parameter/SoundType;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _mediaTypeFromTypeParameter(Ljava/lang/String;)Lezvcard/parameter/MediaTypeParameter;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lezvcard/io/scribe/SoundScribe;->_mediaTypeFromTypeParameter(Ljava/lang/String;)Lezvcard/parameter/SoundType;

    move-result-object p1

    return-object p1
.end method

.method protected _mediaTypeFromTypeParameter(Ljava/lang/String;)Lezvcard/parameter/SoundType;
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-static {p1, v0, v0}, Lezvcard/parameter/SoundType;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lezvcard/parameter/SoundType;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _newInstance(Ljava/lang/String;Lezvcard/parameter/MediaTypeParameter;)Lezvcard/property/BinaryProperty;
    .locals 0

    .line 40
    check-cast p2, Lezvcard/parameter/SoundType;

    invoke-virtual {p0, p1, p2}, Lezvcard/io/scribe/SoundScribe;->_newInstance(Ljava/lang/String;Lezvcard/parameter/SoundType;)Lezvcard/property/Sound;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _newInstance([BLezvcard/parameter/MediaTypeParameter;)Lezvcard/property/BinaryProperty;
    .locals 0

    .line 40
    check-cast p2, Lezvcard/parameter/SoundType;

    invoke-virtual {p0, p1, p2}, Lezvcard/io/scribe/SoundScribe;->_newInstance([BLezvcard/parameter/SoundType;)Lezvcard/property/Sound;

    move-result-object p1

    return-object p1
.end method

.method protected _newInstance(Ljava/lang/String;Lezvcard/parameter/SoundType;)Lezvcard/property/Sound;
    .locals 1

    .line 62
    new-instance v0, Lezvcard/property/Sound;

    invoke-direct {v0, p1, p2}, Lezvcard/property/Sound;-><init>(Ljava/lang/String;Lezvcard/parameter/SoundType;)V

    return-object v0
.end method

.method protected _newInstance([BLezvcard/parameter/SoundType;)Lezvcard/property/Sound;
    .locals 1

    .line 67
    new-instance v0, Lezvcard/property/Sound;

    invoke-direct {v0, p1, p2}, Lezvcard/property/Sound;-><init>([BLezvcard/parameter/SoundType;)V

    return-object v0
.end method
