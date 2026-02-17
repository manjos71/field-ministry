.class public abstract Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static overlay:Lcom/google/android/gms/maps/model/TileOverlay;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static clearProvider()V
    .locals 1

    .line 54
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->removeTileProvider()V

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->overlay:Lcom/google/android/gms/maps/model/TileOverlay;

    return-void
.end method

.method private static removeTileProvider()V
    .locals 1

    .line 45
    :try_start_0
    sget-object v0, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->overlay:Lcom/google/android/gms/maps/model/TileOverlay;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/TileOverlay;->remove()V

    :cond_0
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->overlay:Lcom/google/android/gms/maps/model/TileOverlay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setMapType(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Z)V
    .locals 3

    if-eqz p0, :cond_2

    .line 60
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    const-string v1, "useOSM"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 63
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->removeTileProvider()V

    if-eqz p2, :cond_0

    const/4 p0, 0x4

    .line 65
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->resetMinMaxZoomPreference()V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 70
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->setTileProvider(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;)V

    const/high16 p0, 0x41980000    # 19.0f

    .line 71
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setMaxZoomPreference(F)V

    return-void

    :cond_1
    const/4 p0, 0x1

    .line 73
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->resetMinMaxZoomPreference()V

    :cond_2
    return-void
.end method

.method public static setMapTypeNoOSM(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Z)V
    .locals 0

    if-eqz p0, :cond_1

    .line 82
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->removeTileProvider()V

    if-eqz p2, :cond_0

    const/4 p0, 0x4

    .line 84
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->resetMinMaxZoomPreference()V

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 87
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->resetMinMaxZoomPreference()V

    :cond_1
    return-void
.end method

.method private static setTileProvider(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 4

    .line 30
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getTempFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x4

    const-wide/32 v1, 0xccccccc

    const/4 v3, 0x1

    .line 31
    invoke-static {v0, v3, p0, v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object p0

    .line 32
    new-instance v0, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;

    const-string v1, "osm"

    new-instance v2, Lcom/lostpixels/fieldservice/utils/map/OpenStreetMapTileProvider;

    invoke-direct {v2}, Lcom/lostpixels/fieldservice/utils/map/OpenStreetMapTileProvider;-><init>()V

    invoke-direct {v0, v1, v2, p0}, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;-><init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/TileProvider;Lcom/jakewharton/disklrucache/DiskLruCache;)V

    .line 34
    new-instance p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;-><init>()V

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->tileProvider(Lcom/google/android/gms/maps/model/TileProvider;)Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/TileOverlay;

    move-result-object p0

    sput-object p0, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->overlay:Lcom/google/android/gms/maps/model/TileOverlay;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
