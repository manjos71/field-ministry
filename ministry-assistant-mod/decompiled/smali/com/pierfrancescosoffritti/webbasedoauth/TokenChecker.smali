.class public Lcom/pierfrancescosoffritti/webbasedoauth/TokenChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final persister:Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;

.field private final store:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;

    invoke-direct {v0, p1}, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/TokenChecker;->persister:Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;

    .line 16
    new-instance p1, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    invoke-direct {p1, v0}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;-><init>(Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;)V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/TokenChecker;->store:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    return-void
.end method


# virtual methods
.method public getAuthStatus()I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/TokenChecker;->store:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->getAuthStatus()I

    move-result v0

    return v0
.end method

.method public getPersister()Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/TokenChecker;->persister:Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;

    return-object v0
.end method

.method public isTokenOld()Z
    .locals 8

    .line 32
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/TokenChecker;->store:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->getAuthStatus()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 35
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 36
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/TokenChecker;->store:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->getTokenAcquisitionTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    div-long/2addr v6, v4

    const-wide/32 v4, 0x1d905c0

    sub-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public logout()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/TokenChecker;->store:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->clear()V

    return-void
.end method
