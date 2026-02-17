.class public final Lio/github/inflationx/viewpump/InflateResult$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/viewpump/InflateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lio/github/inflationx/viewpump/InflateResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final builder()Lio/github/inflationx/viewpump/InflateResult$Builder;
    .locals 1

    .line 72
    new-instance v0, Lio/github/inflationx/viewpump/InflateResult$Builder;

    invoke-direct {v0}, Lio/github/inflationx/viewpump/InflateResult$Builder;-><init>()V

    return-object v0
.end method
