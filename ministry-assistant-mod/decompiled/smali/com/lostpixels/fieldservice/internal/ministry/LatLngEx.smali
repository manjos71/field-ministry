.class public Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmModel;
.implements Landroid/os/Parcelable;
.implements Lio/realm/com_lostpixels_fieldservice_internal_ministry_LatLngExRealmProxyInterface;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public latitude:D

.field public longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx$1;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx$1;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmSet$latitude(D)V

    .line 28
    invoke-virtual {p0, p3, p4}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmSet$longitude(D)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmSet$latitude(D)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmSet$longitude(D)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 32
    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmSet$latitude(D)V

    .line 33
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmSet$longitude(D)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public realmGet$latitude()D
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->latitude:D

    return-wide v0
.end method

.method public realmGet$longitude()D
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->longitude:D

    return-wide v0
.end method

.method public realmSet$latitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->latitude:D

    return-void
.end method

.method public realmSet$longitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->longitude:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$latitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 78
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$longitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
