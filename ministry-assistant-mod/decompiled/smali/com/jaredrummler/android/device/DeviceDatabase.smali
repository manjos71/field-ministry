.class public Lcom/jaredrummler/android/device/DeviceDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 39
    const-string v2, "android-devices.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jaredrummler/android/device/DeviceDatabase;->context:Landroid/content/Context;

    .line 41
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/jaredrummler/android/device/DeviceDatabase;->file:Ljava/io/File;

    .line 42
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/jaredrummler/android/device/DeviceDatabase;->create()V

    :cond_0
    return-void
.end method

.method private close(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 173
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private create()V
    .locals 3

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 150
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 151
    invoke-direct {p0}, Lcom/jaredrummler/android/device/DeviceDatabase;->transferDatabaseAsset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 153
    new-instance v1, Landroid/database/SQLException;

    const-string v2, "Error creating android-devices.db database"

    invoke-direct {v1, v2, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private transferDatabaseAsset()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/jaredrummler/android/device/DeviceDatabase;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "android-devices.db"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/jaredrummler/android/device/DeviceDatabase;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x800

    .line 160
    new-array v2, v2, [B

    .line 162
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 163
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 166
    invoke-direct {p0, v1}, Lcom/jaredrummler/android/device/DeviceDatabase;->close(Ljava/io/Closeable;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/jaredrummler/android/device/DeviceDatabase;->close(Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    if-le p3, p2, :cond_1

    .line 141
    iget-object p1, p0, Lcom/jaredrummler/android/device/DeviceDatabase;->context:Landroid/content/Context;

    const-string p2, "android-devices.db"

    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jaredrummler/android/device/DeviceDatabase;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jaredrummler/android/device/DeviceDatabase;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/jaredrummler/android/device/DeviceDatabase;->create()V

    :cond_1
    return-void
.end method

.method public queryToDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;
    .locals 12

    .line 96
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 98
    const-string v8, "name"

    const-string v9, "codename"

    const-string v10, "model"

    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 104
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v4

    aput-object p2, v1, v3

    const-string p1, "codename LIKE ? OR model LIKE ?"

    :goto_0
    move-object v3, p1

    move-object v4, v1

    goto :goto_1

    .line 105
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v4

    const-string p1, "codename LIKE ?"

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 110
    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v4

    const-string p1, "model LIKE ?"

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 116
    const-string v1, "devices"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 120
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 121
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 122
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    new-instance v11, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;

    invoke-direct {v11, p2, v1, v2}, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_2
    invoke-direct {p0, p1}, Lcom/jaredrummler/android/device/DeviceDatabase;->close(Ljava/io/Closeable;)V

    .line 128
    invoke-direct {p0, v0}, Lcom/jaredrummler/android/device/DeviceDatabase;->close(Ljava/io/Closeable;)V

    :cond_3
    return-object v11
.end method
