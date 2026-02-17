.class Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;

.field final synthetic val$hasGps:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;Z)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2$1;->val$hasGps:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 378
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;->val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$PositionListener;

    if-eqz v0, :cond_0

    .line 379
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$PositionListener;->onPositionFound(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 381
    :cond_0
    sget-object v0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2$1;->val$hasGps:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x12c

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d0

    :goto_0
    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 382
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    sget-object v0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 383
    sget-object p1, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_2
    return-void
.end method
