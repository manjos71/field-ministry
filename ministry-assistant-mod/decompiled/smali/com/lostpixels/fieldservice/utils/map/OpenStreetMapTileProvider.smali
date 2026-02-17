.class public Lcom/lostpixels/fieldservice/utils/map/OpenStreetMapTileProvider;
.super Lcom/google/android/gms/maps/model/UrlTileProvider;
.source "SourceFile"


# instance fields
.field counter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x100

    .line 16
    invoke-direct {p0, v0, v0}, Lcom/google/android/gms/maps/model/UrlTileProvider;-><init>(II)V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/lostpixels/fieldservice/utils/map/OpenStreetMapTileProvider;->counter:I

    return-void
.end method


# virtual methods
.method public getTileUrl(III)Ljava/net/URL;
    .locals 6

    .line 23
    :try_start_0
    iget v0, p0, Lcom/lostpixels/fieldservice/utils/map/OpenStreetMapTileProvider;->counter:I

    rem-int/lit8 v1, v0, 0x3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "https://a.tile.openstreetmap.org/%d/%d/%d.png"

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    :try_start_1
    const-string v4, "https://c.tile.openstreetmap.org/%d/%d/%d.png"

    goto :goto_0

    .line 28
    :cond_1
    const-string v4, "https://b.tile.openstreetmap.org/%d/%d/%d.png"

    :cond_2
    :goto_0
    add-int/2addr v0, v3

    .line 34
    iput v0, p0, Lcom/lostpixels/fieldservice/utils/map/OpenStreetMapTileProvider;->counter:I

    .line 35
    new-instance v0, Ljava/net/URL;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v1, v5

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
