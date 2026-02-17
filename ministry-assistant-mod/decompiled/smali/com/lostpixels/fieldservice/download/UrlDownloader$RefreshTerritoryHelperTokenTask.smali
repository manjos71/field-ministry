.class Lcom/lostpixels/fieldservice/download/UrlDownloader$RefreshTerritoryHelperTokenTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/download/UrlDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshTerritoryHelperTokenTask"
.end annotation


# instance fields
.field mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 473
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 474
    iput-object p1, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$RefreshTerritoryHelperTokenTask;->mContext:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 469
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader$RefreshTerritoryHelperTokenTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11

    const/4 p1, 0x0

    .line 482
    :try_start_0
    new-array v4, p1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 484
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 486
    :try_start_2
    const-string v0, "Prepare looper"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :goto_0
    new-instance p1, Lcom/pierfrancescosoffritti/webbasedoauth/TokenChecker;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$RefreshTerritoryHelperTokenTask;->mContext:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/pierfrancescosoffritti/webbasedoauth/TokenChecker;-><init>(Landroid/content/Context;)V

    .line 490
    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/webbasedoauth/TokenChecker;->isTokenOld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/webbasedoauth/TokenChecker;->logout()V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 492
    :cond_0
    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/webbasedoauth/TokenChecker;->getAuthStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 493
    new-instance v0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$RefreshTerritoryHelperTokenTask;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/webbasedoauth/TokenChecker;->getPersister()Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;

    move-result-object v2

    const-string v3, "https://www.territoryhelper.com/api/auth"

    const-string v5, "http://localhost"

    const-string v6, "code"

    const-string v7, "JihQ8AtAyLTU1RWaeNrqdaEUh7bn6m3umol77gvoqo3f"

    const-string v8, "offline"

    const-string v9, "https://www.territoryhelper.com/api/token"

    const-string v10, "DoARSXHyYAJRBuTb8VZw7C_l1HuH-9rMXpZ3tDRcBIE1"

    invoke-direct/range {v0 .. v10}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;-><init>(Landroid/app/Activity;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->getAccessToken()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 498
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Refresh token"

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method
