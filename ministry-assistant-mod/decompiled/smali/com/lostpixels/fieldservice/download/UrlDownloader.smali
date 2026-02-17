.class public abstract Lcom/lostpixels/fieldservice/download/UrlDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;,
        Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlDownloaderListener;,
        Lcom/lostpixels/fieldservice/download/UrlDownloader$RefreshTerritoryHelperTokenTask;,
        Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;,
        Lcom/lostpixels/fieldservice/download/UrlDownloader$TerritoryListDownloaderListener;,
        Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;,
        Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;
    }
.end annotation


# static fields
.field private static hasCheckedToken:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_1

    .line 420
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/16 v1, 0x400

    .line 422
    new-array v1, v1, [C

    .line 424
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 427
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 428
    invoke-virtual {v0, v1, v4, v3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 431
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 433
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 431
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 432
    throw v0

    .line 435
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static downloadTerritoryList(Landroid/app/Activity;Lcom/lostpixels/fieldservice/download/UrlDownloader$TerritoryListDownloaderListener;)V
    .locals 1

    .line 100
    new-instance v0, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;

    invoke-direct {v0, p1, p0}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;-><init>(Lcom/lostpixels/fieldservice/download/UrlDownloader$TerritoryListDownloaderListener;Landroid/app/Activity;)V

    const/4 p0, 0x0

    .line 101
    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static downloadUrl(Ljava/lang/String;Landroid/app/Activity;Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlDownloaderListener;)V
    .locals 1

    .line 82
    new-instance v0, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;

    invoke-direct {v0, p2, p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;-><init>(Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlDownloaderListener;Landroid/app/Activity;)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static getVisitType(Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_a

    .line 390
    const-string v0, "UrlTerritoryAddress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_9

    const-string v0, "EldersOnly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    const-string v0, "Locked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0xd

    return p0

    .line 394
    :cond_1
    const-string v0, "DoNotCall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 396
    :cond_2
    const-string v0, "NoTrespassing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0xb

    return p0

    .line 398
    :cond_3
    const-string v0, "NotInterested"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x3

    return p0

    .line 400
    :cond_4
    const-string v0, "LettersOnly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x0

    return p0

    .line 402
    :cond_5
    const-string v0, "Vacant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x7

    return p0

    .line 404
    :cond_6
    const-string v0, "Witness"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p0, 0x10

    return p0

    .line 406
    :cond_7
    const-string v0, "PhoneOnly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p0, 0x11

    return p0

    .line 408
    :cond_8
    const-string v0, "Referral"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/16 p0, 0xc

    return p0

    :cond_9
    :goto_0
    return v1

    :cond_a
    const/4 p0, 0x5

    return p0
.end method

.method static parseTerritoryAssistantContent3(Ljava/lang/String;Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 105
    const-string v2, "Number"

    const-string v3, "Locality"

    const-string v4, "Location"

    const-string v5, ""

    new-instance v6, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-direct {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;-><init>()V

    .line 106
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v7

    .line 108
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    const-string v10, "PolygonPoints"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 112
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 113
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v14, 0x0

    .line 114
    :goto_0
    const-string v15, "longitude"

    const-string v8, "latitude"

    if-ge v14, v11, :cond_0

    .line 115
    :try_start_1
    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    move-object/from16 v17, v10

    move/from16 v18, v11

    .line 118
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    move/from16 v19, v14

    .line 119
    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 120
    new-instance v8, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-direct {v8, v10, v11, v13, v14}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;-><init>(DD)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v14, v19, 0x1

    move-object/from16 v10, v17

    move/from16 v11, v18

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v7

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object v6, v7

    goto/16 :goto_c

    .line 125
    :cond_0
    :try_start_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    const/4 v10, 0x0

    :try_start_3
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$latitude()D

    move-result-wide v13

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v11

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$latitude()D

    move-result-wide v10

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    .line 126
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    :cond_1
    :try_start_4
    invoke-virtual {v6, v12}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setTerritoryBorder(Ljava/util/List;)V

    .line 131
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 132
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 133
    const-string v12, "GroupedContacts"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 134
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_9

    move/from16 v17, v13

    .line 136
    :try_start_5
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    move-object/from16 v18, v12

    .line 137
    const-string v12, "QRContacts"

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 138
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    move/from16 v19, v14

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_8

    move/from16 v20, v13

    .line 140
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    move-object/from16 v21, v12

    .line 142
    new-instance v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;

    move/from16 v22, v14

    const/4 v14, 0x0

    invoke-direct {v12, v14}, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;-><init>(Lcom/lostpixels/fieldservice/download/UrlDownloader-IA;)V

    .line 143
    iput-object v14, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->number:Ljava/lang/String;

    .line 144
    iput-object v14, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->street:Ljava/lang/String;

    .line 145
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "null"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-string v14, "\\D+"

    move/from16 v23, v1

    const-string v1, "[0-9]"

    move-object/from16 v24, v2

    const-string v2, "Grouping"

    move-object/from16 v25, v3

    const-string v3, "Address"

    if-nez v23, :cond_4

    move-object/from16 v23, v9

    .line 146
    :try_start_6
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v26, v6

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v27, v7

    .line 147
    :try_start_7
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    move-object/from16 v28, v8

    .line 148
    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    move-object/from16 v29, v4

    .line 149
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v4, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->pos:Lcom/google/android/gms/maps/model/LatLng;

    .line 151
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->street:Ljava/lang/String;

    .line 156
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->number:Ljava/lang/String;

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_3
    move-object/from16 v6, v27

    goto/16 :goto_d

    :catch_1
    move-exception v0

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v6, v27

    goto/16 :goto_c

    .line 158
    :cond_2
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->street:Ljava/lang/String;

    .line 159
    invoke-virtual {v3, v14, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->number:Ljava/lang/String;

    .line 161
    :goto_5
    iget-object v1, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->street:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 162
    :cond_3
    invoke-static {v0, v12}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;->getAddressFromPosition(Landroid/content/Context;Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;)Z

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v27, v7

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v27, v7

    goto :goto_4

    :cond_4
    move-object/from16 v29, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v23, v9

    .line 164
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 168
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->street:Ljava/lang/String;

    .line 169
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->number:Ljava/lang/String;

    goto :goto_6

    .line 171
    :cond_5
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->street:Ljava/lang/String;

    .line 172
    invoke-virtual {v3, v14, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->number:Ljava/lang/String;

    .line 176
    :cond_6
    :goto_6
    const-string v1, "IsAlert"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 177
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 179
    :cond_7
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_7
    add-int/lit8 v14, v22, 0x1

    move-object/from16 v1, p0

    move/from16 v13, v20

    move-object/from16 v12, v21

    move-object/from16 v9, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v8, v28

    move-object/from16 v4, v29

    goto/16 :goto_2

    :cond_8
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v29, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v23, v9

    add-int/lit8 v14, v19, 0x1

    move-object/from16 v1, p0

    move/from16 v13, v17

    move-object/from16 v12, v18

    goto/16 :goto_1

    :cond_9
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v23, v9

    .line 184
    :try_start_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_a

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;

    .line 185
    new-instance v4, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 186
    iget-object v6, v3, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->street:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 187
    new-instance v6, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iget-object v7, v3, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->number:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 188
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const v8, 0x7f1203ed

    .line 189
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setVisitComment(Ljava/lang/String;)V

    .line 190
    iget-object v3, v3, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->pos:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v7, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    const/16 v3, 0xa

    .line 191
    invoke-virtual {v7, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 192
    invoke-virtual {v4, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v3, v26

    move-object/from16 v6, v27

    const/4 v8, 0x0

    .line 193
    :try_start_9
    invoke-virtual {v3, v6, v4, v8}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-object/from16 v26, v3

    move-object/from16 v27, v6

    goto :goto_8

    :catchall_3
    move-exception v0

    goto/16 :goto_d

    :catch_3
    move-exception v0

    :goto_9
    move-object/from16 v1, p0

    goto/16 :goto_c

    :catch_4
    move-exception v0

    move-object/from16 v6, v27

    goto :goto_9

    :cond_a
    move-object/from16 v3, v26

    move-object/from16 v6, v27

    .line 196
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_b

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;

    .line 197
    new-instance v4, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 198
    iget-object v7, v2, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->street:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 199
    new-instance v7, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iget-object v8, v2, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->number:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v7, v8, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 200
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 201
    iget-object v2, v2, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->pos:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v8, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    const/4 v2, 0x5

    .line 202
    invoke-virtual {v8, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 203
    invoke-virtual {v4, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    const/4 v10, 0x0

    .line 204
    invoke-virtual {v3, v6, v4, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    goto :goto_a

    :cond_b
    move-object/from16 v1, v23

    move-object/from16 v0, v25

    .line 208
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 209
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_b

    :cond_c
    move-object/from16 v0, v24

    .line 210
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 211
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_b

    :cond_d
    const/4 v14, 0x0

    .line 213
    :goto_b
    invoke-virtual {v3, v14}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setName(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 220
    invoke-virtual {v6}, Lio/realm/Realm;->close()V

    return-object v3

    :catch_5
    move-exception v0

    move-object v6, v7

    goto :goto_9

    .line 217
    :goto_c
    :try_start_a
    invoke-static {v5, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 220
    invoke-virtual {v6}, Lio/realm/Realm;->close()V

    const/16 v16, 0x0

    return-object v16

    :goto_d
    invoke-virtual {v6}, Lio/realm/Realm;->close()V

    .line 221
    throw v0
.end method

.method static parseTerritoryHelperContent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 227
    const-string v3, "City"

    const-string v4, "Units"

    const-string v5, "Boundary"

    const-string v6, "Notes"

    const-string v7, "Number"

    new-instance v8, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-direct {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;-><init>()V

    .line 228
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v9

    .line 231
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 232
    const-string v12, "Territory"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 233
    const-string v13, "Label"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 234
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    const-string v15, "null"

    if-eqz v13, :cond_0

    :try_start_1
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_0

    if-eq v13, v15, :cond_0

    .line 237
    invoke-virtual {v8, v13}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setNote(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v9

    goto/16 :goto_13

    :catch_0
    move-exception v0

    move-object v4, v9

    goto/16 :goto_11

    :cond_0
    if-eqz v14, :cond_1

    .line 239
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    if-eq v14, v15, :cond_1

    .line 240
    invoke-virtual {v8, v14}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setNote(Ljava/lang/String;)V

    .line 242
    :cond_1
    :goto_0
    const-string v13, "TerritoryTypeId"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    const-string v16, ""

    if-eqz v0, :cond_2

    :try_start_2
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 245
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object/from16 v0, v16

    .line 247
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setName(Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 252
    const-string v13, "[{"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v14, "lng"

    move/from16 p1, v13

    const-string v13, "lat"

    if-eqz p1, :cond_4

    .line 253
    :try_start_3
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 255
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v10, v1, :cond_3

    .line 256
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v17, v9

    move/from16 v18, v10

    .line 257
    :try_start_4
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    .line 258
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 259
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-direct {v1, v9, v10, v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;-><init>(DD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v18, 0x1

    move-object/from16 v9, v17

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_3
    move-object/from16 v4, v17

    goto/16 :goto_13

    :catch_1
    move-exception v0

    :goto_4
    move-object/from16 v4, v17

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    move-object/from16 v17, v9

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v17, v9

    goto :goto_4

    :cond_3
    move-object/from16 v19, v6

    move-object/from16 v17, v9

    .line 263
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    if-le v1, v5, :cond_5

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$latitude()D

    move-result-wide v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$latitude()D

    move-result-wide v5

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    move-object/from16 v19, v6

    move-object/from16 v17, v9

    .line 265
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 266
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 268
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 269
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-direct {v1, v5, v6, v9, v10}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;-><init>(DD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_5
    :goto_5
    invoke-virtual {v8, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setTerritoryBorder(Ljava/util/List;)V

    .line 275
    const-string v0, "CompositeLocations"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 276
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 277
    :goto_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_17

    .line 278
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "Location"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v0, :cond_6

    .line 280
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 281
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    move-object v10, v0

    .line 284
    const-string v0, "StreetName"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "Address"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_7
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 286
    :goto_7
    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v18, v3

    .line 287
    new-instance v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 288
    invoke-virtual {v3, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 289
    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_8
    move-object/from16 v18, v3

    .line 292
    :goto_8
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-object/from16 v20, v5

    .line 296
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 297
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    :goto_9
    move-object/from16 v21, v1

    goto :goto_a

    :cond_9
    const/4 v5, 0x0

    goto :goto_9

    .line 298
    :goto_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v22, v4

    .line 299
    const-string v4, " Beware of dog"

    move/from16 v23, v6

    const-string v6, "BewareOfDog"

    move-object/from16 v24, v10

    const-string v10, " Day sleeper"

    move-object/from16 v25, v12

    const-string v12, "DaySleeper"

    move-object/from16 v26, v8

    const-string v8, "Id"

    move-object/from16 v27, v3

    const-string v3, "LatLng"

    move-object/from16 v28, v1

    const-string v1, "StatusId"

    if-eqz v5, :cond_10

    move-object/from16 v29, v4

    .line 300
    :try_start_5
    new-instance v4, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-object/from16 v30, v6

    const/4 v6, 0x1

    invoke-direct {v4, v11, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    const/4 v11, 0x0

    .line 301
    :goto_b
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v11, v0, :cond_f

    .line 302
    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "LocationUnit"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v31, v5

    .line 303
    new-instance v5, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {v5, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 304
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v32, v4

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v33, v3

    .line 305
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    .line 306
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 307
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v3, v4, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v5, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 308
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/high16 v9, -0x8000000000000000L

    or-long/2addr v3, v9

    invoke-virtual {v5, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setLocationIdFromTerritoryHelper(J)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 311
    :try_start_6
    const-string v0, "Floor"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setFloor(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_c

    :catch_3
    move-exception v0

    .line 313
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_c
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->getVisitType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setTypeNoHistory(I)V

    move-object/from16 v3, v19

    .line 316
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    if-ne v0, v15, :cond_b

    :cond_a
    move-object/from16 v0, v16

    .line 320
    :cond_b
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v12, :cond_c

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v35

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v10, v29

    move-object/from16 v6, v30

    goto :goto_d

    :cond_c
    move-object/from16 v9, v35

    .line 322
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v6, v30

    if-ne v4, v6, :cond_d

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v29

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_d
    move-object/from16 v10, v29

    .line 324
    :goto_d
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 325
    invoke-virtual {v5, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setVisitComment(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v4, v28

    .line 327
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v19, v3

    move-object/from16 v28, v4

    move-object/from16 v30, v6

    move-object/from16 v29, v10

    move-object/from16 v5, v31

    move-object/from16 v4, v32

    move-object/from16 v3, v33

    const/4 v6, 0x1

    move-object v10, v9

    move-object/from16 v9, v34

    goto/16 :goto_b

    :cond_f
    move-object/from16 v32, v4

    move-object/from16 v3, v19

    move-object/from16 v19, v7

    move-object/from16 v4, v28

    move-object/from16 v0, v32

    goto/16 :goto_f

    :cond_10
    move-object/from16 v33, v3

    move-object/from16 v34, v9

    move-object v9, v10

    move-object/from16 v3, v19

    move-object v10, v4

    move-object/from16 v4, v28

    .line 330
    new-instance v5, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-object/from16 v19, v7

    const/4 v7, 0x0

    invoke-direct {v5, v11, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 332
    new-instance v7, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {v7, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 333
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v29, v4

    move-object/from16 v28, v5

    move-object/from16 v4, v33

    move-object/from16 v5, v34

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v35, v9

    move-object v4, v10

    .line 334
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    move-object/from16 v30, v12

    .line 335
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    move-object/from16 v31, v4

    .line 336
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, v9, v10, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v7, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 337
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->getVisitType(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setTypeNoHistory(I)V

    .line 338
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setLocationIdFromTerritoryHelper(J)V

    .line 339
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    if-ne v4, v15, :cond_12

    :cond_11
    move-object/from16 v4, v16

    .line 344
    :cond_12
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, v30

    if-ne v8, v9, :cond_13

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v35

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 346
    :cond_13
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_14

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v31

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 348
    :cond_14
    :goto_e
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 349
    invoke-virtual {v7, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setVisitComment(Ljava/lang/String;)V

    .line 350
    :cond_15
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 351
    invoke-virtual {v7, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setVisitComment(Ljava/lang/String;)V

    .line 352
    :cond_16
    invoke-virtual {v7, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->updateLocationIdHash(Ljava/lang/String;)V

    move-object/from16 v4, v29

    .line 353
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v28

    .line 356
    :goto_f
    invoke-virtual {v0, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->setVisits(Ljava/util/List;)V

    .line 358
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->sort()V

    .line 359
    invoke-static/range {v27 .. v27}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    add-int/lit8 v6, v23, 0x1

    move-object/from16 v7, v19

    move-object/from16 v5, v20

    move-object/from16 v1, v21

    move-object/from16 v4, v22

    move-object/from16 v0, v24

    move-object/from16 v12, v25

    move-object/from16 v8, v26

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    goto/16 :goto_6

    :cond_17
    move-object/from16 v20, v5

    move-object/from16 v26, v8

    move-object/from16 v25, v12

    .line 362
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    const/4 v7, 0x0

    .line 363
    invoke-virtual {v2, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->sort(Z)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v4, v17

    move-object/from16 v3, v26

    .line 364
    :try_start_8
    invoke-virtual {v3, v4, v2, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-object/from16 v26, v3

    move-object/from16 v17, v4

    goto :goto_10

    :catchall_3
    move-exception v0

    goto :goto_13

    :catch_4
    move-exception v0

    goto :goto_11

    :cond_18
    move-object/from16 v4, v17

    move-object/from16 v3, v26

    .line 368
    const-string v1, "TerritoryImage"

    move-object/from16 v2, v25

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-virtual {v3, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setTerritoryCardPath(Ljava/lang/String;)V

    if-eqz v0, :cond_19

    .line 373
    invoke-virtual {v3, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setCity(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 381
    :cond_19
    invoke-virtual {v4}, Lio/realm/Realm;->close()V

    move-object v8, v3

    goto :goto_12

    .line 377
    :goto_11
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v0, "Content"

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 381
    invoke-virtual {v4}, Lio/realm/Realm;->close()V

    const/4 v8, 0x0

    :goto_12
    return-object v8

    :goto_13
    invoke-virtual {v4}, Lio/realm/Realm;->close()V

    .line 382
    throw v0
.end method

.method public static refreshTerritoryHelperToken(Landroid/app/Activity;)V
    .locals 1

    .line 92
    sget-boolean v0, Lcom/lostpixels/fieldservice/download/UrlDownloader;->hasCheckedToken:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 93
    sput-boolean v0, Lcom/lostpixels/fieldservice/download/UrlDownloader;->hasCheckedToken:Z

    .line 94
    new-instance v0, Lcom/lostpixels/fieldservice/download/UrlDownloader$RefreshTerritoryHelperTokenTask;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/download/UrlDownloader$RefreshTerritoryHelperTokenTask;-><init>(Landroid/app/Activity;)V

    const/4 p0, 0x0

    .line 95
    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
