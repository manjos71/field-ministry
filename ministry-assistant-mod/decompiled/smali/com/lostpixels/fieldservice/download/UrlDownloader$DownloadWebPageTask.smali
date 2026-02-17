.class Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/download/UrlDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadWebPageTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask$DefaultTrustManager;
    }
.end annotation


# instance fields
.field mContext:Landroid/app/Activity;

.field mListener:Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlDownloaderListener;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlDownloaderListener;Landroid/app/Activity;)V
    .locals 0

    .line 792
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 793
    iput-object p1, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;->mListener:Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlDownloaderListener;

    .line 794
    iput-object p2, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;->mContext:Landroid/app/Activity;

    return-void
.end method

.method static getAddressFromPosition(Landroid/content/Context;Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;)Z
    .locals 9

    .line 800
    iget-object v0, p1, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->pos:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v1, 0x0

    .line 805
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getInstance()Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;

    move-result-object v2

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/4 v8, 0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getFromLocation(Landroid/content/Context;DDI)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 810
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v1

    :goto_0
    if-nez p0, :cond_0

    .line 814
    invoke-static {p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;->getLocationInfo(Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;)Z

    move-result p0

    return p0

    .line 816
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 818
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    .line 822
    iget-object v2, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->street:Ljava/lang/String;

    .line 823
    iget-object p0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->address:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 826
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 827
    invoke-static {v2}, Lcom/lostpixels/fieldservice/utils/map/PositionUtils;->toDisplayCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 828
    const-string v0, ""

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    .line 831
    :goto_1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 832
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-lez v2, :cond_4

    .line 838
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 839
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    move-object p0, v1

    .line 843
    :goto_3
    iput-object v1, p1, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->street:Ljava/lang/String;

    .line 844
    iput-object p0, p1, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->number:Ljava/lang/String;

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static getLocationInfo(Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;)Z
    .locals 9

    .line 852
    const-string v0, "Url"

    .line 854
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://maps.google.com/maps/api/geocode/json?latlng="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->pos:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->pos:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "&sensor=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 856
    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 860
    :try_start_1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 867
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 869
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    int-to-char v4, v4

    .line 870
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 874
    :catch_1
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 875
    throw p0

    .line 878
    :goto_3
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 879
    const-string v0, "results"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 880
    const-string v1, "address_components"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 881
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 882
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 883
    const-string v4, "types"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 884
    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 885
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "street_number"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    const-string v7, "long_name"

    if-eqz v6, :cond_1

    .line 886
    :try_start_4
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->number:Ljava/lang/String;

    goto :goto_6

    :catch_2
    move-exception p0

    goto :goto_8

    .line 889
    :cond_1
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "route"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 890
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->street:Ljava/lang/String;

    goto :goto_6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 894
    :cond_3
    :goto_6
    iget-object v3, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->number:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;->street:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 895
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v3, :cond_4

    goto :goto_7

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_7
    const/4 p0, 0x1

    return p0

    .line 900
    :goto_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v2

    :catch_3
    move-exception p0

    .line 862
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 29

    move-object/from16 v1, p0

    .line 910
    const-string v2, "%.4f"

    const-string v3, "territoryassistant"

    const/4 v4, 0x0

    .line 915
    :try_start_0
    const-string v0, ""

    const/4 v5, 0x0

    .line 916
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v7, 0x2

    .line 917
    const-string v8, "compositeterritories/%s?access_token=%s"

    const-string v9, "https://www.territoryhelper.com/api/"

    const/4 v10, 0x1

    if-eqz v6, :cond_0

    .line 918
    :try_start_1
    new-instance v11, Ljava/net/URL;

    const-string v12, "https://www.territoryassistant.com/api/QRTerritory/GetTerritoryAsync?GID=%s"

    aget-object v13, p1, v5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x24

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v13, v14, v5

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v12, v4

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto/16 :goto_b

    .line 921
    :cond_0
    :try_start_2
    aget-object v0, p1, v5

    const/16 v11, 0x2f

    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 922
    aget-object v11, p1, v5

    add-int/2addr v0, v10

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 923
    new-array v12, v5, [Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 925
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    move-object/from16 v16, v12

    goto :goto_1

    :catch_2
    move-exception v0

    .line 927
    :try_start_4
    const-string v13, "Prepare looper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 931
    :goto_1
    new-instance v12, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    iget-object v13, v1, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;->mContext:Landroid/app/Activity;

    new-instance v14, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;

    invoke-direct {v14, v13}, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;-><init>(Landroid/content/Context;)V

    const-string v15, "https://www.territoryhelper.com/api/auth"

    const-string v17, "http://localhost"

    const-string v18, "code"

    const-string v19, "JihQ8AtAyLTU1RWaeNrqdaEUh7bn6m3umol77gvoqo3f"

    const-string v20, "offline"

    const-string v21, "https://www.territoryhelper.com/api/token"

    const-string v22, "DoARSXHyYAJRBuTb8VZw7C_l1HuH-9rMXpZ3tDRcBIE1"

    invoke-direct/range {v12 .. v22}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;-><init>(Landroid/app/Activity;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-virtual {v12}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 935
    new-instance v12, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v11, v14, v5

    aput-object v0, v14, v10

    invoke-static {v8, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v28, v12

    move-object v12, v11

    move-object/from16 v11, v28

    .line 939
    :goto_2
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    if-eqz v6, :cond_2

    .line 943
    instance-of v13, v11, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v13, :cond_1

    .line 944
    :try_start_5
    move-object v13, v11

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v14, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask$1;

    invoke-direct {v14, v1}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask$1;-><init>(Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;)V

    invoke-virtual {v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 951
    :cond_1
    :try_start_6
    const-string v13, "TLS"

    invoke-static {v13}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v13

    .line 952
    new-array v14, v5, [Ljavax/net/ssl/KeyManager;

    new-instance v15, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask$DefaultTrustManager;

    invoke-direct {v15, v4}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask$DefaultTrustManager;-><init>(Lcom/lostpixels/fieldservice/download/UrlDownloader-IA;)V

    new-array v4, v10, [Ljavax/net/ssl/TrustManager;

    aput-object v15, v4, v5

    new-instance v15, Ljava/security/SecureRandom;

    invoke-direct {v15}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v13, v14, v4, v15}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 953
    move-object v4, v11

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v13}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_3

    :catch_3
    move-exception v0

    const/4 v4, 0x0

    goto/16 :goto_a

    :catch_4
    move-exception v0

    const/4 v4, 0x0

    goto/16 :goto_b

    .line 957
    :cond_2
    :goto_3
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 958
    invoke-static {v4}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    if-nez v6, :cond_3

    .line 963
    new-array v6, v5, [Ljava/lang/String;

    .line 965
    const-string v11, "access_denied"

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 966
    iget-object v0, v1, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;->mContext:Landroid/app/Activity;

    const-string v4, "SHARED_PREFERENCES_AUTHENTICATED_USER_PERSISTER"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 967
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 968
    new-instance v17, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    iget-object v0, v1, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;->mContext:Landroid/app/Activity;

    new-instance v4, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;

    invoke-direct {v4, v0}, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;-><init>(Landroid/content/Context;)V

    const-string v20, "https://www.territoryhelper.com/api/auth"

    const-string v22, "http://localhost"

    const-string v23, "code"

    const-string v24, "JihQ8AtAyLTU1RWaeNrqdaEUh7bn6m3umol77gvoqo3f"

    const-string v25, "offline"

    const-string v26, "https://www.territoryhelper.com/api/token"

    const-string v27, "DoARSXHyYAJRBuTb8VZw7C_l1HuH-9rMXpZ3tDRcBIE1"

    move-object/from16 v18, v0

    move-object/from16 v19, v4

    move-object/from16 v21, v6

    invoke-direct/range {v17 .. v27}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;-><init>(Landroid/app/Activity;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-virtual/range {v17 .. v17}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 971
    new-instance v4, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v12, v7, v5

    aput-object v0, v7, v10

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 973
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 974
    invoke-static {v6}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 978
    :cond_3
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "territoryhelper"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 979
    invoke-static {v0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getTerritoryTypes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 980
    invoke-static {v0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getStatusTypes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 981
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {v4, v3, v0}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->parseTerritoryHelperContent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    :goto_4
    move-object v4, v0

    goto :goto_5

    .line 982
    :cond_4
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 983
    iget-object v0, v1, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;->mContext:Landroid/app/Activity;

    invoke-static {v4, v0}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->parseTerritoryAssistantContent3(Ljava/lang/String;Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 989
    :goto_5
    :try_start_7
    aget-object v0, p1, v5

    invoke-virtual {v4, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setUrlToTerritory(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryCard()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryCard()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v10, :cond_c

    .line 994
    :cond_6
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryCard()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryCard()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    .line 1010
    :cond_7
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryCard()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 995
    :cond_8
    :goto_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 996
    const-string v3, "https://maps.googleapis.com/maps/api/staticmap?size=1000x1000&format=jpg&path=color:red"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 997
    :goto_7
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 998
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    .line 1000
    const-string v7, "|"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1001
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$latitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v8, v9, v5

    invoke-static {v7, v2, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1002
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1003
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$longitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v5

    invoke-static {v7, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1006
    :cond_9
    const-string v2, "&key=AIzaSyD1chZYC58UUhRhCwOLCPbLtdMi4bAMaHI"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1008
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 1013
    :goto_8
    new-instance v2, Ljava/io/File;

    aget-object v3, p1, v10

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1014
    const-string v3, "tempfile"

    const-string v6, "png"

    invoke-static {v3, v6, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 1016
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1017
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x800

    .line 1019
    new-array v6, v6, [B

    .line 1022
    :goto_9
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_a

    .line 1023
    invoke-virtual {v3, v6, v5, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_9

    .line 1026
    :cond_a
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setTerritoryCardPath(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1029
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_c

    .line 985
    :cond_b
    :try_start_8
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v2, "Unknown url"

    invoke-direct {v0, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1034
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1032
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_c
    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 788
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;->doInBackground([Ljava/lang/String;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 2

    .line 1041
    iget-object v0, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;->mListener:Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlDownloaderListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1042
    :goto_0
    invoke-interface {v0, v1, p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlDownloaderListener;->onUrlDownloaded(ZLcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 788
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader$DownloadWebPageTask;->onPostExecute(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void
.end method
