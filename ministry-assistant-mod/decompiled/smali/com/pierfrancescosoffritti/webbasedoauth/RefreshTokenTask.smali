.class Lcom/pierfrancescosoffritti/webbasedoauth/RefreshTokenTask;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private authenticator:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

.field private credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

.field private url:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/pierfrancescosoffritti/webbasedoauth/RefreshTokenTask;->credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    .line 29
    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/RefreshTokenTask;->authenticator:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    .line 31
    filled-new-array {p3, p4, p5, p6}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/RefreshTokenTask;->url:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/RefreshTokenTask;->url:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/pierfrancescosoffritti/webbasedoauth/RefreshTokenTask;->credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    invoke-virtual {v3}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pierfrancescosoffritti/webbasedoauth/RefreshTokenTask;->url:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v1, v2, v0, v3, v4}, Lcom/pierfrancescosoffritti/webbasedoauth/AuthorizationIO;->refreshAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 39
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v2, "expires_in"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/pierfrancescosoffritti/webbasedoauth/RefreshTokenTask;->credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->setNewAccessToken(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/RefreshTokenTask;->authenticator:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 44
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :goto_2
    iget-object v1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/RefreshTokenTask;->authenticator:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    invoke-virtual {v1}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->unlock()V

    throw v0
.end method
