.class public Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private requestReason:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private userIp:Ljava/lang/String;

.field private userProject:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestReason()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->requestReason:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIp()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->userIp:Ljava/lang/String;

    return-object v0
.end method

.method public getUserProject()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->userProject:Ljava/lang/String;

    return-object v0
.end method

.method protected self()Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;
    .locals 0

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->key:Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->self()Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->userIp:Ljava/lang/String;

    .line 248
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->self()Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;

    move-result-object p1

    return-object p1
.end method
