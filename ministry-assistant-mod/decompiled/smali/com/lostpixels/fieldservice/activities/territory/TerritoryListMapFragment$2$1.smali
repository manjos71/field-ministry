.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;

.field final synthetic val$hasGps:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;Z)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2$1;->val$hasGps:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 256
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmMap(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 257
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 258
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmMap(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 259
    new-instance v2, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 260
    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmMap(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 263
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetgoogleApiClient(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetgoogleApiClient(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2$1;->val$hasGps:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    :goto_0
    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 264
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetgoogleApiClient(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 265
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetgoogleApiClient(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_1
    return-void
.end method
