.class Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/download/UrlDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadTerritoryListTask"
.end annotation


# instance fields
.field mContext:Landroid/app/Activity;

.field mListener:Lcom/lostpixels/fieldservice/download/UrlDownloader$TerritoryListDownloaderListener;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/download/UrlDownloader$TerritoryListDownloaderListener;Landroid/app/Activity;)V
    .locals 0

    .line 509
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 510
    iput-object p1, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->mListener:Lcom/lostpixels/fieldservice/download/UrlDownloader$TerritoryListDownloaderListener;

    .line 511
    iput-object p2, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->mContext:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 504
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 40

    move-object/from16 v1, p0

    .line 518
    const-string v2, "publishers/me/territories?access_token=%s"

    const-string v3, "https://www.territoryhelper.com/api/"

    const-string v4, ""

    const/4 v6, 0x0

    .line 521
    :try_start_0
    new-array v11, v6, [Ljava/lang/String;

    .line 522
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_16

    .line 524
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v8, v7

    goto :goto_1

    :catch_0
    move-exception v0

    .line 526
    :try_start_2
    const-string v8, "Prepare looper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :goto_1
    new-instance v7, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    move-object v9, v8

    iget-object v8, v1, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->mContext:Landroid/app/Activity;

    move-object v10, v9

    new-instance v9, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;

    invoke-direct {v9, v8}, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;-><init>(Landroid/content/Context;)V

    move-object v12, v10

    const-string v10, "https://www.territoryhelper.com/api/auth"

    move-object v13, v12

    const-string v12, "http://localhost"

    move-object v14, v13

    const-string v13, "code"

    move-object v15, v14

    const-string v14, "JihQ8AtAyLTU1RWaeNrqdaEUh7bn6m3umol77gvoqo3f"

    move-object/from16 v16, v15

    const-string v15, "offline"

    move-object/from16 v17, v16

    const-string v16, "https://www.territoryhelper.com/api/token"

    move-object/from16 v18, v17

    const-string v17, "DoARSXHyYAJRBuTb8VZw7C_l1HuH-9rMXpZ3tDRcBIE1"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_16

    move-object/from16 v5, v18

    const/16 p1, 0x0

    :try_start_3
    invoke-direct/range {v7 .. v17}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;-><init>(Landroid/app/Activity;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v7}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 535
    new-instance v7, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_14

    const/4 v9, 0x1

    :try_start_4
    new-array v10, v9, [Ljava/lang/Object;

    aput-object v0, v10, v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_15

    :try_start_5
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 537
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 538
    invoke-static {v8}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_14

    .line 541
    :try_start_6
    const-string v8, "access_denied"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 543
    iget-object v0, v1, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->mContext:Landroid/app/Activity;

    const-string v8, "SHARED_PREFERENCES_AUTHENTICATED_USER_PERSISTER"

    invoke-virtual {v0, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 544
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    move-object v8, v7

    .line 546
    :try_start_7
    new-instance v7, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    move-object v10, v8

    :try_start_8
    iget-object v8, v1, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->mContext:Landroid/app/Activity;

    const/4 v0, 0x1

    new-instance v9, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;

    invoke-direct {v9, v8}, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-object v12, v10

    :try_start_9
    const-string v10, "https://www.territoryhelper.com/api/auth"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-object v13, v12

    :try_start_a
    const-string v12, "http://localhost"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    move-object v14, v13

    :try_start_b
    const-string v13, "code"
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-object v15, v14

    :try_start_c
    const-string v14, "JihQ8AtAyLTU1RWaeNrqdaEUh7bn6m3umol77gvoqo3f"
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    move-object/from16 v16, v15

    :try_start_d
    const-string v15, "offline"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    move-object/from16 v17, v16

    :try_start_e
    const-string v16, "https://www.territoryhelper.com/api/token"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    move-object/from16 v18, v17

    :try_start_f
    const-string v17, "DoARSXHyYAJRBuTb8VZw7C_l1HuH-9rMXpZ3tDRcBIE1"

    invoke-direct/range {v7 .. v17}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;-><init>(Landroid/app/Activity;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual {v7}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    return-object p1

    .line 551
    :cond_0
    new-instance v8, Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v7, v10, v6

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 553
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 554
    invoke-static {v8}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v7

    move-object v7, v2

    :goto_2
    const/4 v2, 0x1

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_3
    move-object/from16 v4, v18

    goto/16 :goto_23

    :catch_2
    move-exception v0

    move-object/from16 v18, v17

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v18, v16

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v18, v15

    goto :goto_3

    :catch_5
    move-exception v0

    move-object/from16 v18, v14

    goto :goto_3

    :catch_6
    move-exception v0

    move-object/from16 v18, v13

    goto :goto_3

    :catch_7
    move-exception v0

    move-object/from16 v18, v12

    goto :goto_3

    :catch_8
    move-exception v0

    move-object/from16 v18, v10

    goto :goto_3

    :catch_9
    move-exception v0

    move-object/from16 v18, v8

    goto :goto_3

    :catch_a
    move-exception v0

    move-object/from16 v18, v7

    goto :goto_3

    :cond_1
    move-object/from16 v18, v7

    goto :goto_2

    .line 558
    :goto_4
    invoke-static {v0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getTerritoryTypes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 559
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 561
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v7, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 562
    const-string v10, "UTC"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v10, 0x0

    .line 565
    :goto_5
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    const-string v12, "TerritoryTypeId"

    const-string v13, "ViewUrl"

    const-string v14, "TerritoryImage"

    const-string v15, "Label"

    const/16 v16, 0x0

    const-string v6, "\n"

    const-string v2, "\n\n"

    move-object/from16 v19, v4

    const-string v4, "Notes"

    move-object/from16 v20, v3

    const-string v3, "Number"

    move-object/from16 v21, v5

    const-string v5, " "

    move-object/from16 v22, v7

    const-string v7, "DateAssigned"

    move-object/from16 v23, v7

    const-string v7, "Id"

    if-ge v10, v11, :cond_5

    .line 567
    :try_start_10
    new-instance v11, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;

    invoke-direct {v11}, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;-><init>()V

    move-object/from16 v24, v0

    .line 568
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v25, v9

    move/from16 v26, v10

    .line 569
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v11, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->id:J

    .line 570
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 571
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lostpixels/fieldservice/utils/StringUtils;->stripHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->notes:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 573
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->notes:Ljava/lang/String;

    .line 574
    :cond_2
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->label:Ljava/lang/String;

    .line 575
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->image:Ljava/lang/String;

    .line 576
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->url:Ljava/lang/String;

    .line 577
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    if-eqz v8, :cond_3

    .line 579
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 580
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6

    :cond_3
    move-object/from16 v0, v19

    .line 582
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->name:Ljava/lang/String;

    .line 584
    iget-wide v2, v11, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v24

    invoke-static {v9, v0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getCurrentAssignment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-static {v2}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 586
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    move-object/from16 v10, v23

    .line 588
    :try_start_11
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v22

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v11, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->assignmentDate:Ljava/util/Date;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    move-object/from16 v18, v2

    :goto_7
    move-object/from16 v2, v21

    goto :goto_8

    :catch_b
    move-exception v0

    move-object v4, v2

    goto/16 :goto_23

    :cond_4
    move-object/from16 v3, v22

    .line 590
    :try_start_12
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v11, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->assignmentDate:Ljava/util/Date;

    goto :goto_7

    .line 593
    :goto_8
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v26, 0x1

    move-object v5, v2

    move-object v7, v3

    move-object v0, v9

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    move-object/from16 v9, v25

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_5
    move-object/from16 v24, v0

    move-object/from16 v11, v21

    move-object/from16 v0, v22

    move-object/from16 v10, v23

    .line 597
    new-instance v9, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v10

    move-object/from16 v10, v20

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string v0, "campaigns/?access_token=%s"

    move-object/from16 v20, v5

    move-object/from16 v25, v8

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v24, v8, v16

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 599
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 600
    invoke-static {v5}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    .line 602
    :try_start_13
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 604
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    .line 605
    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    move-object/from16 v18, v5

    const-string v5, "Name"

    if-ge v9, v11, :cond_6

    .line 606
    :try_start_14
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 607
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v18

    move-object/from16 v0, v28

    goto :goto_9

    .line 611
    :cond_6
    new-instance v0, Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "publishers/me/campaignterritories/?access_token=%s"

    move-object/from16 v26, v5

    move-object/from16 v27, v8

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v24, v8, v16

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 613
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 614
    invoke-static {v5}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    .line 616
    :try_start_15
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 618
    :goto_a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_10

    const-string v11, "territories/%d/?access_token=%s"

    move-object/from16 v28, v5

    const-string v5, "TerritoryId"

    move-object/from16 v29, v12

    const-string v12, "CampaignId"

    move-object/from16 v30, v13

    const-string v13, " ("

    move-object/from16 v31, v13

    const-string v13, ")"

    if-ge v8, v9, :cond_c

    .line 620
    :try_start_16
    new-instance v9, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;

    invoke-direct {v9}, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;-><init>()V

    move-object/from16 v32, v13

    .line 621
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 622
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v33

    .line 623
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v35

    .line 626
    new-instance v5, Ljava/net/URL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v36, v0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v35, v0, v16

    const/16 v17, 0x1

    aput-object v24, v0, v17

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 628
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 629
    invoke-static {v5}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 630
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v9, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->id:J

    .line 633
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lostpixels/fieldservice/utils/StringUtils;->stripHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->notes:Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 636
    invoke-virtual {v11, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->notes:Ljava/lang/String;

    goto :goto_c

    :catch_c
    move-exception v0

    :goto_b
    move-object/from16 v4, v28

    goto/16 :goto_23

    .line 637
    :cond_7
    :goto_c
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->label:Ljava/lang/String;

    .line 638
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->image:Ljava/lang/String;

    move-object/from16 v11, v30

    .line 639
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->url:Ljava/lang/String;

    move-object/from16 v12, v29

    .line 640
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v29

    if-eqz v25, :cond_8

    .line 642
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v18, v8

    move-object/from16 v8, v25

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 643
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_d
    move-object/from16 v30, v11

    goto :goto_e

    :cond_8
    move/from16 v18, v8

    move-object/from16 v8, v25

    :cond_9
    move-object/from16 v5, v19

    goto :goto_d

    .line 645
    :goto_e
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v29, v12

    move-object/from16 v12, v27

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 646
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v20

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->name:Ljava/lang/String;

    move-object v11, v5

    move-object/from16 v27, v12

    :goto_f
    move-object/from16 v12, v23

    goto :goto_10

    :cond_a
    move-object/from16 v27, v12

    move-object/from16 v11, v20

    .line 648
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->name:Ljava/lang/String;

    goto :goto_f

    .line 650
    :goto_10
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 651
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, v22

    invoke-virtual {v13, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v9, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->assignmentDate:Ljava/util/Date;

    :goto_11
    move-object/from16 v5, v21

    goto :goto_12

    :cond_b
    move-object/from16 v13, v22

    .line 653
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v9, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->assignmentDate:Ljava/util/Date;

    goto :goto_11

    .line 655
    :goto_12
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v18, 0x1

    move-object/from16 v21, v5

    move-object/from16 v25, v8

    move-object/from16 v20, v11

    move-object/from16 v23, v12

    move-object/from16 v22, v13

    move-object/from16 v5, v28

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move v8, v0

    move-object/from16 v0, v36

    goto/16 :goto_a

    :cond_c
    move-object/from16 v32, v13

    move-object/from16 v13, v22

    move-object/from16 v8, v25

    move-object/from16 v9, v30

    move-object/from16 v22, v12

    move-object/from16 v12, v23

    move-object/from16 v23, v21

    move-object/from16 v21, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v11

    move-object/from16 v11, v29

    .line 659
    new-instance v0, Ljava/net/URL;

    move-object/from16 v25, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v29, v12

    const-string v12, "servicegroups/me/?access_token=%s"

    move-object/from16 v30, v5

    move-object/from16 v33, v8

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v24, v8, v16

    invoke-static {v12, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 661
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 662
    invoke-static {v5}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c

    .line 664
    :try_start_17
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 666
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v12, 0x0

    .line 667
    :goto_13
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_d

    .line 668
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 669
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v34

    move-object/from16 v28, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_e

    move-object/from16 v34, v5

    move-object/from16 v5, v26

    :try_start_18
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v26, v5

    move-object/from16 v0, v28

    move-object/from16 v5, v34

    goto :goto_13

    :catch_d
    move-exception v0

    :goto_14
    move-object/from16 v4, v34

    goto/16 :goto_23

    :catch_e
    move-exception v0

    move-object/from16 v34, v5

    goto :goto_14

    :cond_d
    move-object/from16 v34, v5

    .line 673
    new-instance v0, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "servicegroups/me/territories/?access_token=%s"

    move-object/from16 v26, v10

    const/4 v13, 0x1

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v24, v10, v16

    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 675
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 676
    invoke-static {v5}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d

    .line 678
    :try_start_19
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_12

    const/4 v10, 0x0

    .line 680
    :goto_15
    :try_start_1a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_10

    const-string v13, "ServiceGroupId"

    if-ge v10, v12, :cond_13

    .line 681
    :try_start_1b
    new-instance v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;

    invoke-direct {v12}, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;-><init>()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10

    move-object/from16 v28, v5

    .line 682
    :try_start_1c
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move/from16 v34, v10

    move-object/from16 v35, v11

    .line 683
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->id:J

    .line 684
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 685
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lostpixels/fieldservice/utils/StringUtils;->stripHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->notes:Ljava/lang/String;

    if-eqz v11, :cond_e

    .line 687
    invoke-virtual {v11, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->notes:Ljava/lang/String;

    .line 688
    :cond_e
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->label:Ljava/lang/String;

    .line 689
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->image:Ljava/lang/String;

    .line 690
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->url:Ljava/lang/String;

    move-object/from16 v11, v35

    .line 691
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v35

    if-eqz v33, :cond_f

    .line 693
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v37, v0

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 694
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_16
    move-object/from16 v33, v0

    goto :goto_17

    :cond_f
    move-object/from16 v37, v0

    move-object/from16 v0, v33

    :cond_10
    move-object/from16 v5, v19

    goto :goto_16

    .line 696
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->name:Ljava/lang/String;

    move-object/from16 v35, v11

    .line 698
    iget-wide v10, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v10, v24

    invoke-static {v10, v0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getCurrentAssignment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 699
    invoke-static {v11}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 700
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_c

    move-object/from16 v24, v10

    move-object/from16 v10, v29

    move-object/from16 v29, v11

    .line 702
    :try_start_1d
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v30, v10

    move-object/from16 v10, v25

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    iput-object v11, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->assignmentDate:Ljava/util/Date;

    .line 703
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 704
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v10

    iget-object v10, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->name:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v31

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->name:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f

    goto :goto_18

    :catch_f
    move-exception v0

    move-object/from16 v4, v29

    goto/16 :goto_23

    :cond_11
    move-object/from16 v25, v10

    move-object/from16 v10, v31

    move-object/from16 v0, v32

    :goto_18
    move-object/from16 v28, v29

    :goto_19
    move-object/from16 v11, v23

    goto :goto_1a

    :cond_12
    move-object/from16 v24, v10

    move-object/from16 v30, v29

    move-object/from16 v10, v31

    move-object/from16 v0, v32

    .line 706
    :try_start_1e
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    iput-object v11, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->assignmentDate:Ljava/util/Date;

    goto :goto_19

    .line 709
    :goto_1a
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v34, 0x1

    move-object/from16 v32, v0

    move-object/from16 v31, v10

    move-object/from16 v23, v11

    move v10, v12

    move-object/from16 v29, v30

    move-object/from16 v11, v35

    move-object/from16 v0, v37

    move-object/from16 v30, v5

    move-object/from16 v5, v28

    goto/16 :goto_15

    :catch_10
    move-exception v0

    move-object/from16 v28, v5

    goto/16 :goto_b

    :cond_13
    move-object/from16 v28, v5

    move-object/from16 v35, v11

    move-object/from16 v11, v23

    move-object/from16 v5, v30

    move-object/from16 v10, v31

    move-object/from16 v0, v32

    move-object/from16 v30, v29

    .line 713
    new-instance v12, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v8

    move-object/from16 v8, v26

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v32, v0

    const-string v0, "servicegroups/me/campaignterritories/?access_token=%s"

    move-object/from16 v31, v10

    move-object/from16 v26, v13

    const/4 v13, 0x1

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v24, v10, v16

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 715
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 716
    invoke-static {v10}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_c

    .line 718
    :try_start_1f
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 720
    :goto_1b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_1a

    .line 722
    new-instance v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;

    invoke-direct {v12}, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;-><init>()V

    .line 723
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    .line 724
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v36

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    .line 725
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v38

    move-object/from16 v21, v0

    .line 728
    new-instance v0, Ljava/net/URL;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_11

    move-object/from16 v34, v10

    :try_start_20
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-object/from16 v39, v8

    move/from16 v18, v11

    const/4 v8, 0x2

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v38, v11, v16

    const/16 v17, 0x1

    aput-object v24, v11, v17

    move-object/from16 v8, v20

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 730
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 731
    invoke-static {v10}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 732
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v8

    move-object v11, v9

    .line 734
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->id:J

    .line 735
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 736
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lostpixels/fieldservice/utils/StringUtils;->stripHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->notes:Ljava/lang/String;

    if-eqz v8, :cond_14

    .line 738
    invoke-virtual {v8, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->notes:Ljava/lang/String;

    .line 739
    :cond_14
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->label:Ljava/lang/String;

    .line 740
    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->image:Ljava/lang/String;

    .line 741
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->url:Ljava/lang/String;

    move-object/from16 v8, v35

    .line 742
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    if-eqz v33, :cond_15

    .line 744
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v35, v2

    move-object/from16 v2, v33

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 745
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1c

    :cond_15
    move-object/from16 v35, v2

    move-object/from16 v2, v33

    :cond_16
    move-object/from16 v1, v19

    .line 748
    :goto_1c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->name:Ljava/lang/String;

    .line 750
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->name:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->name:Ljava/lang/String;

    :goto_1d
    move-object/from16 v0, v26

    goto :goto_1e

    :cond_17
    move-object/from16 v10, v31

    goto :goto_1d

    .line 752
    :goto_1e
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v27, v1

    move-object/from16 v1, v29

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 753
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v2

    iget-object v2, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->name:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v32

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    :goto_1f
    move-object/from16 v0, v30

    goto :goto_20

    :cond_18
    move-object/from16 v33, v2

    move-object/from16 v2, v32

    .line 755
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v0

    iget-object v0, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->name:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->name:Ljava/lang/String;

    goto :goto_1f

    .line 757
    :goto_20
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_19

    .line 758
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v13, v25

    invoke-virtual {v13, v9}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->assignmentDate:Ljava/util/Date;

    :goto_21
    move-object/from16 v9, v23

    goto :goto_22

    :cond_19
    move-object/from16 v13, v25

    .line 760
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    iput-object v9, v12, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->assignmentDate:Ljava/util/Date;

    goto :goto_21

    .line 762
    :goto_22
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    add-int/lit8 v12, v18, 0x1

    move-object/from16 v30, v0

    move-object/from16 v29, v1

    move-object/from16 v32, v2

    move-object/from16 v23, v9

    move-object/from16 v31, v10

    move-object v9, v11

    move v11, v12

    move-object/from16 v25, v13

    move-object/from16 v0, v28

    move-object/from16 v10, v34

    move-object/from16 v2, v35

    move-object/from16 v1, p0

    move-object/from16 v35, v8

    move-object/from16 v8, v39

    goto/16 :goto_1b

    :catch_11
    move-exception v0

    move-object/from16 v34, v10

    goto/16 :goto_14

    :cond_1a
    move-object/from16 v9, v23

    return-object v9

    :catch_12
    move-exception v0

    move-object v4, v5

    goto :goto_23

    :catch_13
    move-exception v0

    move-object/from16 v18, v5

    goto/16 :goto_3

    :catch_14
    move-exception v0

    move-object/from16 v19, v4

    goto :goto_23

    :catch_15
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v4, v19

    goto :goto_23

    :catch_16
    move-exception v0

    move-object/from16 v19, v4

    const/16 p1, 0x0

    .line 769
    :goto_23
    const-string v1, "Json"

    invoke-static {v1, v4}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download territory"

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 776
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 504
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadTerritoryListTask;->mListener:Lcom/lostpixels/fieldservice/download/UrlDownloader$TerritoryListDownloaderListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 784
    :goto_0
    invoke-interface {v0, v1, p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader$TerritoryListDownloaderListener;->onListDownloaded(ZLjava/util/List;)V

    :cond_1
    return-void
.end method
