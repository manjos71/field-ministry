.class public Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private authStatus:I

.field private expiresIn:I

.field private persister:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;

.field private refreshToken:Ljava/lang/String;

.field private tokenAcquisitionTime:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->authStatus:I

    .line 33
    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->persister:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;

    .line 35
    invoke-interface {p1, p0}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;->loadUser(Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;)V

    return-void
.end method


# virtual methods
.method declared-synchronized authenticate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    .line 125
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->authenticate(Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized authenticate(Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;)V
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->accessToken:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->refreshToken:Ljava/lang/String;

    .line 112
    iput p3, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->expiresIn:I

    .line 114
    iput-object p4, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->tokenAcquisitionTime:Ljava/util/Date;

    const/4 p1, 0x2

    .line 116
    iput p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->authStatus:I

    .line 118
    iget-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->persister:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;

    invoke-interface {p1, p0}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;->persistUser(Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 108
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accessToken.isEmpty() || refreshToken.isEmpty()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 149
    :try_start_0
    iput-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->accessToken:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->refreshToken:Ljava/lang/String;

    const/4 v0, -0x1

    .line 151
    iput v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->expiresIn:I

    .line 152
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->tokenAcquisitionTime:Ljava/util/Date;

    const/4 v0, 0x0

    .line 154
    iput v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->authStatus:I

    .line 156
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->persister:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;

    invoke-interface {v0, p0}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;->persistUser(Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getAuthStatus()I
    .locals 6

    monitor-enter p0

    .line 89
    :try_start_0
    iget v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->authStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 90
    monitor-exit p0

    return v0

    .line 93
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 94
    iget-object v4, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->tokenAcquisitionTime:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 97
    iget v2, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->expiresIn:I

    add-int/lit16 v2, v2, -0x258

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const/4 v0, 0x1

    .line 98
    iput v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->authStatus:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    iget v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->authStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getExpiresIn()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->expiresIn:I

    return v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenAcquisitionTime()Ljava/util/Date;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->tokenAcquisitionTime:Ljava/util/Date;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;I)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    if-nez p5, :cond_2

    .line 55
    :cond_1
    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->accessToken:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->refreshToken:Ljava/lang/String;

    .line 57
    iput p3, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->expiresIn:I

    .line 58
    iput-object p4, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->tokenAcquisitionTime:Ljava/util/Date;

    .line 59
    iput p5, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->authStatus:I

    return-void

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "(accessToken == null || refreshToken == null || tokenAcquireTime == null) && authStatus != NOT_AUTHENTICATED"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method declared-synchronized setNewAccessToken(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    .line 132
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->accessToken:Ljava/lang/String;

    .line 136
    iput p2, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->expiresIn:I

    .line 138
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->tokenAcquisitionTime:Ljava/util/Date;

    const/4 p1, 0x2

    .line 140
    iput p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->authStatus:I

    .line 142
    iget-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->persister:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;

    invoke-interface {p1, p0}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;->persistUser(Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 133
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accessToken.isEmpty()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
