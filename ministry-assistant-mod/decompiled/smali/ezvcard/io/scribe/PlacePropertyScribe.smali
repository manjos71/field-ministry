.class public abstract Lezvcard/io/scribe/PlacePropertyScribe;
.super Lezvcard/io/scribe/VCardPropertyScribe;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lezvcard/io/scribe/VCardPropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected _dataType(Lezvcard/property/PlaceProperty;Lezvcard/VCardVersion;)Lezvcard/VCardDataType;
    .locals 1

    .line 55
    invoke-virtual {p1}, Lezvcard/property/PlaceProperty;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    sget-object p1, Lezvcard/VCardDataType;->TEXT:Lezvcard/VCardDataType;

    return-object p1

    .line 59
    :cond_0
    invoke-virtual {p1}, Lezvcard/property/PlaceProperty;->getUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lezvcard/property/PlaceProperty;->getGeoUri()Lezvcard/util/GeoUri;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0, p2}, Lezvcard/io/scribe/PlacePropertyScribe;->_defaultDataType(Lezvcard/VCardVersion;)Lezvcard/VCardDataType;

    move-result-object p1

    return-object p1

    .line 60
    :cond_2
    :goto_0
    sget-object p1, Lezvcard/VCardDataType;->URI:Lezvcard/VCardDataType;

    return-object p1
.end method

.method protected bridge synthetic _dataType(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Lezvcard/VCardDataType;
    .locals 0

    .line 43
    check-cast p1, Lezvcard/property/PlaceProperty;

    invoke-virtual {p0, p1, p2}, Lezvcard/io/scribe/PlacePropertyScribe;->_dataType(Lezvcard/property/PlaceProperty;Lezvcard/VCardVersion;)Lezvcard/VCardDataType;

    move-result-object p1

    return-object p1
.end method

.method protected _defaultDataType(Lezvcard/VCardVersion;)Lezvcard/VCardDataType;
    .locals 0

    .line 50
    sget-object p1, Lezvcard/VCardDataType;->TEXT:Lezvcard/VCardDataType;

    return-object p1
.end method

.method protected _parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/PlaceProperty;
    .locals 0

    .line 88
    invoke-virtual {p0}, Lezvcard/io/scribe/PlacePropertyScribe;->newInstance()Lezvcard/property/PlaceProperty;

    move-result-object p3

    .line 89
    invoke-static {p1}, Lezvcard/io/scribe/VCardPropertyScribe;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    sget-object p4, Lezvcard/VCardDataType;->TEXT:Lezvcard/VCardDataType;

    if-ne p2, p4, :cond_0

    .line 92
    invoke-virtual {p3, p1}, Lezvcard/property/PlaceProperty;->setText(Ljava/lang/String;)V

    return-object p3

    .line 96
    :cond_0
    sget-object p4, Lezvcard/VCardDataType;->URI:Lezvcard/VCardDataType;

    if-ne p2, p4, :cond_1

    .line 98
    :try_start_0
    invoke-static {p1}, Lezvcard/util/GeoUri;->parse(Ljava/lang/String;)Lezvcard/util/GeoUri;

    move-result-object p2

    invoke-virtual {p3, p2}, Lezvcard/property/PlaceProperty;->setGeoUri(Lezvcard/util/GeoUri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    .line 100
    :catch_0
    invoke-virtual {p3, p1}, Lezvcard/property/PlaceProperty;->setUri(Ljava/lang/String;)V

    return-object p3

    .line 105
    :cond_1
    invoke-virtual {p3, p1}, Lezvcard/property/PlaceProperty;->setText(Ljava/lang/String;)V

    return-object p3
.end method

.method protected bridge synthetic _parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/VCardProperty;
    .locals 0

    .line 43
    invoke-virtual/range {p0 .. p5}, Lezvcard/io/scribe/PlacePropertyScribe;->_parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/PlaceProperty;

    move-result-object p1

    return-object p1
.end method

.method protected _writeText(Lezvcard/property/PlaceProperty;Lezvcard/VCardVersion;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-virtual {p1}, Lezvcard/property/PlaceProperty;->getText()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 70
    invoke-static {p2}, Lezvcard/io/scribe/VCardPropertyScribe;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    invoke-virtual {p1}, Lezvcard/property/PlaceProperty;->getUri()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    .line 78
    :cond_1
    invoke-virtual {p1}, Lezvcard/property/PlaceProperty;->getGeoUri()Lezvcard/util/GeoUri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p1}, Lezvcard/util/GeoUri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method protected bridge synthetic _writeText(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Ljava/lang/String;
    .locals 0

    .line 43
    check-cast p1, Lezvcard/property/PlaceProperty;

    invoke-virtual {p0, p1, p2}, Lezvcard/io/scribe/PlacePropertyScribe;->_writeText(Lezvcard/property/PlaceProperty;Lezvcard/VCardVersion;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract newInstance()Lezvcard/property/PlaceProperty;
.end method
