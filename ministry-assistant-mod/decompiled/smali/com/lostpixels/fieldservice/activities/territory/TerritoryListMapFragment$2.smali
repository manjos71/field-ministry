.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->followMyLocation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    .line 239
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    .line 243
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 245
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 246
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x2710

    .line 247
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 249
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetgoogleApiClient(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2$1;

    invoke-direct {v3, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;Z)V

    .line 250
    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    .line 273
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
