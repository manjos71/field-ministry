.class public Lezvcard/property/Geo;
.super Lezvcard/property/VCardProperty;
.source "SourceFile"


# instance fields
.field private uri:Lezvcard/util/GeoUri;


# direct methods
.method public constructor <init>(Lezvcard/util/GeoUri;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 105
    iput-object p1, p0, Lezvcard/property/Geo;->uri:Lezvcard/util/GeoUri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1

    .line 97
    new-instance v0, Lezvcard/util/GeoUri$Builder;

    invoke-direct {v0, p1, p2}, Lezvcard/util/GeoUri$Builder;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {v0}, Lezvcard/util/GeoUri$Builder;->build()Lezvcard/util/GeoUri;

    move-result-object p1

    invoke-direct {p0, p1}, Lezvcard/property/Geo;-><init>(Lezvcard/util/GeoUri;)V

    return-void
.end method


# virtual methods
.method public getGeoUri()Lezvcard/util/GeoUri;
    .locals 1

    .line 158
    iget-object v0, p0, Lezvcard/property/Geo;->uri:Lezvcard/util/GeoUri;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .line 113
    iget-object v0, p0, Lezvcard/property/Geo;->uri:Lezvcard/util/GeoUri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lezvcard/util/GeoUri;->getCoordA()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .line 133
    iget-object v0, p0, Lezvcard/property/Geo;->uri:Lezvcard/util/GeoUri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lezvcard/util/GeoUri;->getCoordB()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
