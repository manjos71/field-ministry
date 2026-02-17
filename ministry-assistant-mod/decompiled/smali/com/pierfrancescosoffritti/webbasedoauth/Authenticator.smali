.class public Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final OAuthURL:Ljava/lang/String;

.field private final accessType:Ljava/lang/String;

.field private final available:Ljava/util/concurrent/Semaphore;

.field private final clientID:Ljava/lang/String;

.field private final clientSecret:Ljava/lang/String;

.field private final context:Landroid/app/Activity;

.field private final credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

.field private final logoutListeners:Ljava/util/Set;

.field private final redirectURL:Ljava/lang/String;

.field private final responseType:Ljava/lang/String;

.field private final scopes:Ljava/lang/String;

.field private final tokenURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->available:Ljava/util/concurrent/Semaphore;

    .line 73
    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->context:Landroid/app/Activity;

    .line 75
    iput-object p3, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->OAuthURL:Ljava/lang/String;

    .line 76
    invoke-direct {p0, p4}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->buildScopesString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->scopes:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->redirectURL:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->responseType:Ljava/lang/String;

    .line 79
    iput-object p7, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->clientID:Ljava/lang/String;

    .line 80
    iput-object p8, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->accessType:Ljava/lang/String;

    .line 82
    iput-object p9, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->tokenURL:Ljava/lang/String;

    .line 83
    iput-object p10, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->clientSecret:Ljava/lang/String;

    .line 85
    new-instance p1, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    invoke-direct {p1, p2}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;-><init>(Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;)V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    .line 87
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->logoutListeners:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;)Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->showDialog(Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;)V

    return-void
.end method

.method static synthetic access$200(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;)Landroid/app/Activity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->tokenURL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->clientID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->clientSecret:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->redirectURL:Ljava/lang/String;

    return-object p0
.end method

.method private authenticate()V
    .locals 2

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 187
    new-instance v1, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$1;

    invoke-direct {v1, p0}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$1;-><init>(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private buildScopesString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 92
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 93
    array-length v2, p1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    array-length v2, p1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%20"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 94
    :cond_1
    :goto_1
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private notifyListeners()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->logoutListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 288
    throw v0
.end method

.method private refreshToken()V
    .locals 7

    .line 199
    new-instance v0, Lcom/pierfrancescosoffritti/webbasedoauth/RefreshTokenTask;

    iget-object v2, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    iget-object v3, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->tokenURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->clientID:Ljava/lang/String;

    iget-object v5, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->clientSecret:Ljava/lang/String;

    const-string v6, "refresh_token"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/pierfrancescosoffritti/webbasedoauth/RefreshTokenTask;-><init>(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showDialog(Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;)V
    .locals 6

    .line 207
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 208
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 211
    new-instance v2, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    .line 212
    new-instance v3, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 213
    new-instance v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 219
    new-instance v2, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$2;

    invoke-direct {v2, p0}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$2;-><init>(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 226
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->OAuthURL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?redirect_uri="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->redirectURL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&response_type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->responseType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&client_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->clientID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&scope="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->scopes:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&access_type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->accessType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 237
    new-instance v2, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;-><init>(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;Landroid/app/Dialog;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 274
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 275
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAccessToken()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 128
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 131
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->getAuthStatus()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->refreshToken()V

    .line 139
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 134
    :cond_1
    invoke-direct {p0}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->authenticate()V

    .line 135
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->getAccessToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 129
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "don\'t call getAccessToken() from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public logout()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->clear()V

    .line 164
    invoke-direct {p0}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->notifyListeners()V

    return-void
.end method

.method protected unlock()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-gtz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    return-void
.end method
