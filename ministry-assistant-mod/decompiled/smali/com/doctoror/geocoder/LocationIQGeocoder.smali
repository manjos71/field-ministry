.class public final Lcom/doctoror/geocoder/LocationIQGeocoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAllowedDate:J

.field private final mApiKey:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mLocale:Ljava/util/Locale;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 83
    iput-object p1, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mLocale:Ljava/util/Locale;

    .line 85
    iput-object p3, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mApiKey:Ljava/lang/String;

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "locale == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildBaseRequestUri(Z)Landroid/net/Uri$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 89
    const-string p1, "https://us1.locationiq.com/v1/reverse.php?"

    goto :goto_0

    :cond_0
    const-string p1, "https://us1.locationiq.com/v1/search.php?"

    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mLocale:Ljava/util/Locale;

    .line 90
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accept-language"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "format"

    const-string v1, "json"

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mApiKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    const-string v0, "key"

    iget-object v1, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mApiKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    return-object p1
.end method

.method private static download(Ljava/lang/String;)[B
    .locals 7

    const/4 v0, 0x0

    .line 247
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .line 249
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 251
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 252
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x1000

    .line 254
    :try_start_2
    new-array v2, v0, [B

    :goto_0
    const/4 v3, 0x0

    .line 258
    invoke-virtual {p0, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 265
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 275
    :catch_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 262
    :cond_0
    :try_start_5
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_1

    .line 269
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    nop

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 275
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 279
    :catch_3
    :cond_2
    throw v0
.end method

.method private getAllowedDate()J
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mContext:Landroid/content/Context;

    const-string v1, "com.doctoror.geocoder.preferences"

    const/4 v2, 0x0

    .line 316
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 317
    const-string v1, "com.doctoror.geocoder.preferences.keys.allow"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mAllowedDate:J

    .line 319
    :cond_0
    iget-wide v0, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mAllowedDate:J

    return-wide v0
.end method

.method private isLimitExceeded()Z
    .locals 5

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/doctoror/geocoder/LocationIQGeocoder;->getAllowedDate()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setAllowedDate(J)V
    .locals 3

    .line 298
    iput-wide p1, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mAllowedDate:J

    .line 299
    iget-object v0, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mContext:Landroid/content/Context;

    const-string v1, "com.doctoror.geocoder.preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/doctoror/geocoder/LocationIQGeocoder;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 304
    const-string v1, "com.doctoror.geocoder.preferences.keys.allow"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 305
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getFromLocation(DDIZ)Ljava/util/List;
    .locals 5

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_2

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_2

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p3, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v2, p3, v0

    if-gtz v2, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/doctoror/geocoder/LocationIQGeocoder;->isLimitExceeded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 137
    invoke-direct {p0, v0}, Lcom/doctoror/geocoder/LocationIQGeocoder;->buildBaseRequestUri(Z)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 138
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, p2, v3

    const-string p1, "%f"

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "lat"

    invoke-virtual {v1, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 139
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p3, p4, v3

    invoke-static {v2, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "lon"

    invoke-virtual {p2, p3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 143
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/doctoror/geocoder/LocationIQGeocoder;->download(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    invoke-static {p1, p5, p6, v0}, Lcom/doctoror/geocoder/LocationIQParser;->parseJson([BIZZ)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 145
    new-instance p2, Lcom/doctoror/geocoder/GeocoderException;

    invoke-direct {p2, p1}, Lcom/doctoror/geocoder/GeocoderException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 134
    :cond_0
    invoke-static {}, Lcom/doctoror/geocoder/GeocoderException;->forQueryOverLimit()Lcom/doctoror/geocoder/GeocoderException;

    move-result-object p1

    throw p1

    .line 130
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "longitude == "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "latitude == "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public getFromLocationName(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;
    .locals 3

    if-eqz p1, :cond_4

    .line 182
    invoke-direct {p0}, Lcom/doctoror/geocoder/LocationIQGeocoder;->isLimitExceeded()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, v0}, Lcom/doctoror/geocoder/LocationIQGeocoder;->buildBaseRequestUri(Z)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "q"

    .line 187
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 189
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    const-string v1, "countrycodes"

    invoke-virtual {p1, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    :try_start_0
    invoke-static {p1}, Lcom/doctoror/geocoder/LocationIQGeocoder;->download(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 201
    :try_start_1
    invoke-static {p2, p3, p4, v0}, Lcom/doctoror/geocoder/LocationIQParser;->parseJson([BIZZ)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Lcom/doctoror/geocoder/GeocoderException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 203
    invoke-virtual {p2}, Lcom/doctoror/geocoder/GeocoderException;->getStatus()Lcom/doctoror/geocoder/Status;

    move-result-object v1

    sget-object v2, Lcom/doctoror/geocoder/Status;->OVER_QUERY_LIMIT:Lcom/doctoror/geocoder/Status;

    if-ne v1, v2, :cond_2

    const-wide/16 v1, 0x7d0

    .line 208
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 215
    :try_start_3
    invoke-static {p1}, Lcom/doctoror/geocoder/LocationIQGeocoder;->download(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 221
    :try_start_4
    invoke-static {p1, p3, p4, v0}, Lcom/doctoror/geocoder/LocationIQParser;->parseJson([BIZZ)Ljava/util/List;

    move-result-object p1
    :try_end_4
    .catch Lcom/doctoror/geocoder/GeocoderException; {:try_start_4 .. :try_end_4} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 223
    invoke-virtual {p1}, Lcom/doctoror/geocoder/GeocoderException;->getStatus()Lcom/doctoror/geocoder/Status;

    move-result-object p2

    sget-object p3, Lcom/doctoror/geocoder/Status;->OVER_QUERY_LIMIT:Lcom/doctoror/geocoder/Status;

    if-ne p2, p3, :cond_1

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/32 v0, 0x5265c00

    add-long/2addr p2, v0

    invoke-direct {p0, p2, p3}, Lcom/doctoror/geocoder/LocationIQGeocoder;->setAllowedDate(J)V

    .line 227
    :cond_1
    throw p1

    :catch_2
    move-exception p1

    .line 217
    new-instance p2, Lcom/doctoror/geocoder/GeocoderException;

    invoke-direct {p2, p1}, Lcom/doctoror/geocoder/GeocoderException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 211
    :catch_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 230
    :cond_2
    throw p2

    :catch_4
    move-exception p1

    .line 197
    new-instance p2, Lcom/doctoror/geocoder/GeocoderException;

    invoke-direct {p2, p1}, Lcom/doctoror/geocoder/GeocoderException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 183
    :cond_3
    invoke-static {}, Lcom/doctoror/geocoder/GeocoderException;->forQueryOverLimit()Lcom/doctoror/geocoder/GeocoderException;

    move-result-object p1

    throw p1

    .line 179
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "locationName == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
