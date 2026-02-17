.class public abstract Lcom/google/api/client/extensions/android/http/AndroidHttp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    const/16 v0, 0x9

    .line 52
    invoke-static {v0}, Lcom/google/api/client/extensions/android/AndroidUtils;->isMinimumSdkLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport;-><init>()V

    return-object v0
.end method
