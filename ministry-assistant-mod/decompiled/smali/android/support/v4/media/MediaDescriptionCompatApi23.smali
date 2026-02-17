.class abstract Landroid/support/v4/media/MediaDescriptionCompatApi23;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaDescriptionCompatApi23$Builder;
    }
.end annotation


# direct methods
.method public static getMediaUri(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 0

    .line 26
    check-cast p0, Landroid/media/MediaDescription;

    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompatApi23$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
