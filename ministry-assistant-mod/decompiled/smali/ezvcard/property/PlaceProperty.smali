.class public abstract Lezvcard/property/PlaceProperty;
.super Lezvcard/property/VCardProperty;
.source "SourceFile"


# instance fields
.field protected geoUri:Lezvcard/util/GeoUri;

.field protected text:Ljava/lang/String;

.field protected uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public _supportedVersions()Ljava/util/Set;
    .locals 1

    .line 77
    sget-object v0, Lezvcard/VCardVersion;->V4_0:Lezvcard/VCardVersion;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getGeoUri()Lezvcard/util/GeoUri;
    .locals 1

    .line 101
    iget-object v0, p0, Lezvcard/property/PlaceProperty;->geoUri:Lezvcard/util/GeoUri;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lezvcard/property/PlaceProperty;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lezvcard/property/PlaceProperty;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setGeoUri(Lezvcard/util/GeoUri;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lezvcard/property/PlaceProperty;->geoUri:Lezvcard/util/GeoUri;

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lezvcard/property/PlaceProperty;->uri:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lezvcard/property/PlaceProperty;->text:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lezvcard/property/PlaceProperty;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 155
    iput-object p1, p0, Lezvcard/property/PlaceProperty;->geoUri:Lezvcard/util/GeoUri;

    .line 156
    iput-object p1, p0, Lezvcard/property/PlaceProperty;->uri:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lezvcard/property/PlaceProperty;->uri:Ljava/lang/String;

    const/4 p1, 0x0

    .line 137
    iput-object p1, p0, Lezvcard/property/PlaceProperty;->geoUri:Lezvcard/util/GeoUri;

    .line 138
    iput-object p1, p0, Lezvcard/property/PlaceProperty;->text:Ljava/lang/String;

    return-void
.end method
