.class Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/rx/RealmObservableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrongReferenceCounter"
.end annotation


# instance fields
.field private final references:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->references:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/rx/RealmObservableFactory$1;)V
    .locals 0

    .line 777
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;-><init>()V

    return-void
.end method
