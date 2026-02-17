.class Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->-$$Nest$fgetmMap(Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->-$$Nest$fgetmMap(Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    :cond_1
    if-eqz p2, :cond_2

    .line 121
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getLastKnownLocation(Landroid/content/Context;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 123
    new-instance p2, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p1

    .line 124
    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 125
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->-$$Nest$fgetmMap(Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_2
    :goto_0
    return-void
.end method
