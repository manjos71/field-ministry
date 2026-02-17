.class Lcom/lostpixels/fieldservice/utils/map/MyLocation$GetLastLocation;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/utils/map/MyLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetLastLocation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/utils/map/MyLocation;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$GetLastLocation;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 139
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$GetLastLocation;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->lm:Landroid/location/LocationManager;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 143
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$GetLastLocation;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->lm:Landroid/location/LocationManager;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 146
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$GetLastLocation;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->gps_enabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 147
    iget-object v0, v0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_1

    :cond_0
    move-object v0, v2

    .line 148
    :goto_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$GetLastLocation;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    iget-boolean v3, v1, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->network_enabled:Z

    if-eqz v3, :cond_1

    .line 149
    iget-object v1, v1, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->lm:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    goto :goto_2

    :cond_1
    move-object v1, v2

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 153
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 154
    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$GetLastLocation;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locationResult:Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_3

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$GetLastLocation;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locationResult:Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    :goto_3
    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 161
    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$GetLastLocation;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locationResult:Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    return-void

    :cond_4
    if-eqz v1, :cond_5

    .line 165
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$GetLastLocation;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locationResult:Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    return-void

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$GetLastLocation;->this$0:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locationResult:Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    return-void
.end method
