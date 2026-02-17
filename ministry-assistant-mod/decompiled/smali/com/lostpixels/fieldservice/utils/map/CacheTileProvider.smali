.class public Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/model/TileProvider;


# instance fields
.field private mCache:Lcom/jakewharton/disklrucache/DiskLruCache;

.field private final mKeyTag:Ljava/lang/String;

.field private final mTileProvider:Lcom/google/android/gms/maps/model/TileProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/TileProvider;Lcom/jakewharton/disklrucache/DiskLruCache;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->mKeyTag:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->mTileProvider:Lcom/google/android/gms/maps/model/TileProvider;

    .line 68
    iput-object p3, p0, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->mCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    return-void
.end method

.method private cacheTile(Ljava/lang/String;Lcom/google/android/gms/maps/model/Tile;)Z
    .locals 5

    const/4 v0, 0x0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->mCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v1, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    .line 217
    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/maps/model/Tile;->data:[B

    invoke-virtual {p1, v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->writeByteArrayToStream([BLjava/io/OutputStream;)V

    .line 218
    iget v1, p2, Lcom/google/android/gms/maps/model/Tile;->height:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->writeIntToStream(ILjava/io/OutputStream;)V

    .line 219
    iget p2, p2, Lcom/google/android/gms/maps/model/Tile;->width:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->writeIntToStream(ILjava/io/OutputStream;)V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object p2

    invoke-static {v3, v4, p2}, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->writeLongToStream(JLjava/io/OutputStream;)V

    .line 221
    invoke-virtual {p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 229
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalStateException thrown, maybe cache is closed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 227
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return v0
.end method

.method private static generateKey(IIILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 74
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const-string p0, "%3$d_%2$d_%1$d_%4$s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCachedTile(Ljava/lang/String;)Lcom/google/android/gms/maps/model/Tile;
    .locals 8

    const/4 v0, 0x0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->mCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v1, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 188
    invoke-virtual {p1, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->readStreamAsByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    const/4 v2, 0x1

    .line 189
    invoke-virtual {p1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->readStreamAsInt(Ljava/io/InputStream;)I

    move-result v2

    const/4 v3, 0x2

    .line 190
    invoke-virtual {p1, v3}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->readStreamAsInt(Ljava/io/InputStream;)I

    move-result v3

    const/4 v4, 0x3

    .line 191
    invoke-virtual {p1, v4}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->readStreamAsLong(Ljava/io/InputStream;)J

    move-result-wide v4

    if-eqz v1, :cond_2

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide v4, 0x1cf7c5800L

    cmp-long p1, v6, v4

    if-lez p1, :cond_1

    return-object v0

    .line 197
    :cond_1
    new-instance p1, Lcom/google/android/gms/maps/model/Tile;

    invoke-direct {p1, v3, v2, v1}, Lcom/google/android/gms/maps/model/Tile;-><init>(II[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 205
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException thrown, maybe cache is closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 203
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v0
.end method

.method private static readStreamAsByteArray(Ljava/io/InputStream;)[B
    .locals 6

    .line 112
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 114
    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 116
    :try_start_0
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 117
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 122
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 120
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 121
    throw v0
.end method

.method private static readStreamAsInt(Ljava/io/InputStream;)I
    .locals 1

    .line 126
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 128
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 131
    throw v0
.end method

.method private static readStreamAsLong(Ljava/io/InputStream;)J
    .locals 2

    .line 135
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 137
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 140
    throw v0
.end method

.method private static writeByteArrayToStream([BLjava/io/OutputStream;)V
    .locals 0

    .line 79
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 82
    throw p0
.end method

.method private static writeIntToStream(ILjava/io/OutputStream;)V
    .locals 1

    .line 86
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 88
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 94
    throw p0

    :catchall_1
    move-exception p0

    .line 91
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 93
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 95
    throw p0

    :catchall_2
    move-exception p0

    .line 93
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 94
    throw p0
.end method

.method private static writeLongToStream(JLjava/io/OutputStream;)V
    .locals 1

    .line 99
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    :try_start_0
    invoke-virtual {v0, p0, p1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 107
    throw p0

    :catchall_1
    move-exception p0

    .line 104
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 106
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 108
    throw p0

    :catchall_2
    move-exception p0

    .line 106
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 107
    throw p0
.end method


# virtual methods
.method public getTile(III)Lcom/google/android/gms/maps/model/Tile;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->mKeyTag:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0}, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->generateKey(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->getCachedTile(Ljava/lang/String;)Lcom/google/android/gms/maps/model/Tile;

    move-result-object v1

    if-nez v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->mTileProvider:Lcom/google/android/gms/maps/model/TileProvider;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/maps/model/TileProvider;->getTile(III)Lcom/google/android/gms/maps/model/Tile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    invoke-direct {p0, v0, p1}, Lcom/lostpixels/fieldservice/utils/map/CacheTileProvider;->cacheTile(Ljava/lang/String;Lcom/google/android/gms/maps/model/Tile;)Z

    :cond_0
    return-object p1

    :cond_1
    return-object v1
.end method
