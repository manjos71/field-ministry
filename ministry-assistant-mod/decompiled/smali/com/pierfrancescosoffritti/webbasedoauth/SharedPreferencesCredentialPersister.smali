.class public Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "SHARED_PREFERENCES_AUTHENTICATED_USER_PERSISTER"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public loadUser(Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;)V
    .locals 9

    .line 38
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ACCESS_TOKEN_KEY"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "REFRESH_TOKEN_KEY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 40
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "EXPIRES_IN_TOKEN_KEY"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 41
    new-instance v7, Ljava/util/Date;

    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "TOKEN_ACQUIRE_TIME_KEY"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 42
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTH_STATUS_KEY"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    move-object v3, p1

    .line 44
    invoke-virtual/range {v3 .. v8}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->init(Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;I)V

    return-void
.end method

.method public persistUser(Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;)V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ACCESS_TOKEN_KEY"

    .line 28
    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "REFRESH_TOKEN_KEY"

    .line 29
    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EXPIRES_IN_TOKEN_KEY"

    .line 30
    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->getExpiresIn()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->getTokenAcquisitionTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOKEN_ACQUIRE_TIME_KEY"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AUTH_STATUS_KEY"

    .line 32
    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;->getAuthStatus()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 33
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
