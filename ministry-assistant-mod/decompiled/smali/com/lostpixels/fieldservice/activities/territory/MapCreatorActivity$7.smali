.class Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/location/Location;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 595
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    const/high16 v0, 0x41880000    # 17.0f

    .line 597
    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 598
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->-$$Nest$fgetmMap(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 599
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->-$$Nest$fgetmMap(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 590
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$7;->onSuccess(Landroid/location/Location;)V

    return-void
.end method
