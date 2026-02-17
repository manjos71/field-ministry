.class Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private authenticator:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

.field private context:Ljava/lang/ref/WeakReference;

.field private credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

.field private handler:Landroid/os/Handler;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private url:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->context:Ljava/lang/ref/WeakReference;

    .line 39
    iput-object p3, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    .line 41
    iput-object p2, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->authenticator:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    .line 43
    filled-new-array/range {p4 .. p9}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->url:[Ljava/lang/String;

    .line 45
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;)Landroid/app/ProgressDialog;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->context:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 51
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$1;

    invoke-direct {v1, p0}, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$1;-><init>(Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->url:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v3, v0, v1

    const/4 v1, 0x2

    aget-object v4, v0, v1

    const/4 v1, 0x3

    aget-object v5, v0, v1

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/4 v1, 0x5

    aget-object v7, v0, v1

    invoke-static/range {v2 .. v7}, Lcom/pierfrancescosoffritti/webbasedoauth/AuthorizationIO;->exchangeAuthorizationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 70
    :try_start_1
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string v2, "expires_in"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string v3, "refresh_token"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v3, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v1, v0, v2}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->authenticate(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 77
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$2;

    invoke-direct {v1, p0}, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$2;-><init>(Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->authenticator:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->unlock()V

    return-void

    .line 81
    :goto_1
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t login"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    :goto_2
    iget-object v1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    .line 84
    iget-object v1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$2;

    invoke-direct {v2, p0}, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$2;-><init>(Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->authenticator:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    invoke-virtual {v1}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->unlock()V

    throw v0
.end method
