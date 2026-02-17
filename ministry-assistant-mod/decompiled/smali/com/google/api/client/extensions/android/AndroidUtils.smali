.class public abstract Lcom/google/api/client/extensions/android/AndroidUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static isMinimumSdkLevel(I)Z
    .locals 1

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
