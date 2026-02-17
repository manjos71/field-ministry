.class Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getCurrentPosition(Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$PositionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$PositionListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$PositionListener;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;->val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$PositionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    .line 360
    sget-object p1, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 362
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;->val$context:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    .line 364
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 366
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 367
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x2710

    .line 368
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 370
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    sget-object v2, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v3, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2$1;

    invoke-direct {v3, p0, p1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2$1;-><init>(Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;Z)V

    .line 371
    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    .line 391
    new-instance v0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2$2;-><init>(Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .line 409
    sget-object p1, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 410
    sget-object p1, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method
