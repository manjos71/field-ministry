.class public Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeocoderAddress"
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final city:Ljava/lang/String;

.field public final country:Ljava/lang/String;

.field public final countryCode:Ljava/lang/String;

.field public final latitude:D

.field public final longitude:D

.field public final postalCode:Ljava/lang/String;

.field public final street:Ljava/lang/String;

.field public final streetNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/location/Address;)V
    .locals 3

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 198
    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_1
    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->city:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->country:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->street:Ljava/lang/String;

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p1, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 203
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x2c

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 205
    :cond_2
    iput-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->address:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->streetNumber:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->postalCode:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->latitude:D

    .line 209
    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->longitude:D

    .line 210
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/doctoror/geocoder/Address;)V
    .locals 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-virtual {p1}, Lcom/doctoror/geocoder/Address;->getPostTown()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/doctoror/geocoder/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/doctoror/geocoder/Address;->getPostTown()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->city:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Lcom/doctoror/geocoder/Address;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->country:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Lcom/doctoror/geocoder/Address;->getRoute()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->street:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/doctoror/geocoder/Address;->getRoute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/doctoror/geocoder/Address;->getStreetNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->address:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Lcom/doctoror/geocoder/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->postalCode:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Lcom/doctoror/geocoder/Address;->getLocation()Lcom/doctoror/geocoder/Address$Location;

    move-result-object v0

    iget-wide v0, v0, Lcom/doctoror/geocoder/Address$Location;->latitude:D

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->latitude:D

    .line 188
    invoke-virtual {p1}, Lcom/doctoror/geocoder/Address;->getLocation()Lcom/doctoror/geocoder/Address$Location;

    move-result-object v0

    iget-wide v0, v0, Lcom/doctoror/geocoder/Address$Location;->longitude:D

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->longitude:D

    .line 189
    invoke-virtual {p1}, Lcom/doctoror/geocoder/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->countryCode:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Lcom/doctoror/geocoder/Address;->getStreetNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->streetNumber:Ljava/lang/String;

    return-void
.end method
