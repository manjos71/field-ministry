.class public abstract Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;,
        Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$PositionListener;
    }
.end annotation


# static fields
.field private static gLastAddress:Ljava/lang/String;

.field private static gLastCity:Ljava/lang/String;

.field private static gLastPostal:Ljava/lang/String;

.field private static gLastStreet:Ljava/lang/String;

.field static googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$smsetFoundAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->setFoundAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->lock:Ljava/lang/Object;

    return-void
.end method

.method public static getAddressFromLatLong(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;)V
    .locals 1

    .line 350
    new-instance v0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$1GetAddressTask;

    invoke-direct {v0, p0, p2}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$1GetAddressTask;-><init>(Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/google/android/gms/maps/model/LatLng;

    const/4 p2, 0x0

    aput-object p1, p0, p2

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getCityFromPosition(Landroid/content/Context;)Lcom/lostpixels/fieldservice/utils/Triplet;
    .locals 9

    .line 116
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getLastKnownLocation(Landroid/content/Context;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 123
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getInstance()Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;

    move-result-object v2

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/4 v8, 0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getFromLocation(Landroid/content/Context;DDI)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 133
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 135
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    .line 136
    new-instance v0, Lcom/lostpixels/fieldservice/utils/Triplet;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->country:Ljava/lang/String;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->city:Ljava/lang/String;

    iget-object p0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->countryCode:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/lostpixels/fieldservice/utils/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public static getCurrentPosition(Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$PositionListener;)V
    .locals 2

    .line 355
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 356
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;

    invoke-direct {v1, p0, p1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;-><init>(Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$PositionListener;)V

    .line 357
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p0

    new-instance p1, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$1;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$1;-><init>()V

    .line 413
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p0

    .line 419
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p0

    sput-object p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 421
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method

.method public static getFoundAddressNumber()Ljava/lang/String;
    .locals 3

    .line 62
    sget-object v0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->gLastAddress:Ljava/lang/String;

    const/4 v2, 0x0

    .line 64
    sput-object v2, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->gLastAddress:Ljava/lang/String;

    .line 65
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getFoundCity()Ljava/lang/String;
    .locals 3

    .line 78
    sget-object v0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->gLastCity:Ljava/lang/String;

    const/4 v2, 0x0

    .line 80
    sput-object v2, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->gLastCity:Ljava/lang/String;

    .line 81
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getFoundPostal()Ljava/lang/String;
    .locals 3

    .line 86
    sget-object v0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->gLastPostal:Ljava/lang/String;

    const/4 v2, 0x0

    .line 88
    sput-object v2, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->gLastPostal:Ljava/lang/String;

    .line 89
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getFoundStreet()Ljava/lang/String;
    .locals 3

    .line 70
    sget-object v0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->gLastStreet:Ljava/lang/String;

    const/4 v2, 0x0

    .line 72
    sput-object v2, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->gLastStreet:Ljava/lang/String;

    .line 73
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLastKnownLocation(Landroid/content/Context;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 6

    .line 95
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    .line 101
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    move-object v3, v0

    move-object v4, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 103
    invoke-static {v3, v4}, Lcom/lostpixels/fieldservice/utils/map/PositionUtils;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 109
    new-instance p0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static getLatLngGeocoder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 7

    const/4 v0, 0x0

    .line 152
    :try_start_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getLastKnownLocation(Landroid/content/Context;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 153
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getInstance()Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, p0, p1, v3, p2}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getFromLocationName(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 154
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 155
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    iget-wide v2, p2, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->latitude:D

    .line 156
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    iget-wide v4, p2, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->longitude:D

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    .line 157
    new-instance p2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p2, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p2, v1}, Lcom/lostpixels/fieldservice/utils/map/PositionUtils;->distanceBetweenCoordinates(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result p2

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/map/PositionUtils;->distanceBetweenCoordinates(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v6

    cmpg-float p2, p2, v6

    if-gez p2, :cond_1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 158
    :cond_0
    :goto_1
    new-instance p2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p2, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 162
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLatLongFromAddress(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 144
    invoke-static {p1, p0, p2}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getLatLngGeocoder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    return-object p0
.end method

.method private static setFoundAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    sget-object v0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    sput-object p1, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->gLastAddress:Ljava/lang/String;

    .line 55
    sput-object p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->gLastStreet:Ljava/lang/String;

    .line 56
    sput-object p2, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->gLastCity:Ljava/lang/String;

    .line 57
    sput-object p3, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->gLastPostal:Ljava/lang/String;

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
