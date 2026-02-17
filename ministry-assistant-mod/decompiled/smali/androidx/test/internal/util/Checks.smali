.class public abstract Landroidx/test/internal/util/Checks;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
