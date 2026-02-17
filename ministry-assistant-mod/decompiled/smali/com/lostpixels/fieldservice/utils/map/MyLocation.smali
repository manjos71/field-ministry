.class public Lcom/lostpixels/fieldservice/utils/map/MyLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;,
        Lcom/lostpixels/fieldservice/utils/map/MyLocation$GetLastLocation;
    }
.end annotation


# instance fields
.field gps_enabled:Z

.field lm:Landroid/location/LocationManager;

.field private locGPS:Landroid/location/Location;

.field private locNetwork:Landroid/location/Location;

.field final locationListenerGps:Landroid/location/LocationListener;

.field final locationListenerNetwork:Landroid/location/LocationListener;

.field locationResult:Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;

.field miAccurracy:I

.field private mnGPSTimes:I

.field private mnNetworkTimes:I

.field network_enabled:Z

.field timer1:Ljava/util/Timer;


# direct methods
.method static bridge synthetic -$$Nest$fgetlocGPS(Lcom/lostpixels/fieldservice/utils/map/MyLocation;)Landroid/location/Location;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locGPS:Landroid/location/Location;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocNetwork(Lcom/lostpixels/fieldservice/utils/map/MyLocation;)Landroid/location/Location;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locNetwork:Landroid/location/Location;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmnGPSTimes(Lcom/lostpixels/fieldservice/utils/map/MyLocation;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->mnGPSTimes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmnNetworkTimes(Lcom/lostpixels/fieldservice/utils/map/MyLocation;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->mnNetworkTimes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputlocGPS(Lcom/lostpixels/fieldservice/utils/map/MyLocation;Landroid/location/Location;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locGPS:Landroid/location/Location;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlocNetwork(Lcom/lostpixels/fieldservice/utils/map/MyLocation;Landroid/location/Location;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locNetwork:Landroid/location/Location;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmnGPSTimes(Lcom/lostpixels/fieldservice/utils/map/MyLocation;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->mnGPSTimes:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmnNetworkTimes(Lcom/lostpixels/fieldservice/utils/map/MyLocation;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->mnNetworkTimes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->gps_enabled:Z

    .line 23
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->network_enabled:Z

    .line 28
    new-instance v0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/utils/map/MyLocation$1;-><init>(Lcom/lostpixels/fieldservice/utils/map/MyLocation;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    .line 57
    new-instance v0, Lcom/lostpixels/fieldservice/utils/map/MyLocation$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/utils/map/MyLocation$2;-><init>(Lcom/lostpixels/fieldservice/utils/map/MyLocation;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locationListenerGps:Landroid/location/LocationListener;

    return-void
.end method


# virtual methods
.method public getLocation(Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;I)Z
    .locals 7

    .line 98
    iput-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locationResult:Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;

    .line 99
    iput p3, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->miAccurracy:I

    const/4 p2, 0x0

    .line 100
    iput p2, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->mnGPSTimes:I

    .line 101
    iput p2, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->mnNetworkTimes:I

    .line 102
    iget-object p3, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->lm:Landroid/location/LocationManager;

    if-nez p3, :cond_0

    .line 103
    const-string p3, "location"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->lm:Landroid/location/LocationManager;

    .line 107
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->lm:Landroid/location/LocationManager;

    const-string p3, "gps"

    invoke-virtual {p1, p3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->gps_enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->lm:Landroid/location/LocationManager;

    const-string p3, "network"

    invoke-virtual {p1, p3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->network_enabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 116
    :goto_0
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->gps_enabled:Z

    if-nez p1, :cond_1

    iget-boolean p3, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->network_enabled:Z

    if-nez p3, :cond_1

    return p2

    :cond_1
    if-eqz p1, :cond_2

    .line 120
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->lm:Landroid/location/LocationManager;

    iget-object v5, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 121
    :cond_2
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->network_enabled:Z

    if-eqz p1, :cond_3

    .line 122
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->lm:Landroid/location/LocationManager;

    iget-object v5, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 123
    :cond_3
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->timer1:Ljava/util/Timer;

    .line 124
    new-instance p2, Lcom/lostpixels/fieldservice/utils/map/MyLocation$GetLastLocation;

    invoke-direct {p2, p0}, Lcom/lostpixels/fieldservice/utils/map/MyLocation$GetLastLocation;-><init>(Lcom/lostpixels/fieldservice/utils/map/MyLocation;)V

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public stop()V
    .locals 1

    .line 88
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->timer1:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method
