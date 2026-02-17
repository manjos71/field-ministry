.class Lcom/lostpixels/fieldservice/utils/map/MyLocation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/utils/map/MyLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/utils/map/MyLocation;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->-$$Nest$fgetmnNetworkTimes(Lcom/lostpixels/fieldservice/utils/map/MyLocation;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->-$$Nest$fputmnNetworkTimes(Lcom/lostpixels/fieldservice/utils/map/MyLocation;I)V

    .line 31
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    iget v2, v1, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->miAccurracy:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 32
    invoke-static {v1}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->-$$Nest$fgetlocNetwork(Lcom/lostpixels/fieldservice/utils/map/MyLocation;)Landroid/location/Location;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/utils/map/PositionUtils;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->-$$Nest$fputlocNetwork(Lcom/lostpixels/fieldservice/utils/map/MyLocation;Landroid/location/Location;)V

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->-$$Nest$fgetmnNetworkTimes(Lcom/lostpixels/fieldservice/utils/map/MyLocation;)I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 36
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 37
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    iget-object v0, p1, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locationResult:Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->-$$Nest$fgetlocNetwork(Lcom/lostpixels/fieldservice/utils/map/MyLocation;)Landroid/location/Location;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    .line 38
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->lm:Landroid/location/LocationManager;

    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 39
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    iget-object v0, p1, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->lm:Landroid/location/LocationManager;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 41
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
