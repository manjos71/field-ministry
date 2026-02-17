.class public Lio/realm/internal/RealmObjectProxy$CacheData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/RealmObjectProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheData"
.end annotation


# instance fields
.field public minDepth:I

.field public final object:Lio/realm/RealmModel;


# direct methods
.method public constructor <init>(ILio/realm/RealmModel;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 45
    iput-object p2, p0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    return-void
.end method
