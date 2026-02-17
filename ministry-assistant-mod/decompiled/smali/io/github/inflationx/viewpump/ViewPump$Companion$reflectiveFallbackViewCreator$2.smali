.class final Lio/github/inflationx/viewpump/ViewPump$Companion$reflectiveFallbackViewCreator$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/viewpump/ViewPump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/github/inflationx/viewpump/ViewPump$Companion$reflectiveFallbackViewCreator$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/inflationx/viewpump/ViewPump$Companion$reflectiveFallbackViewCreator$2;

    invoke-direct {v0}, Lio/github/inflationx/viewpump/ViewPump$Companion$reflectiveFallbackViewCreator$2;-><init>()V

    sput-object v0, Lio/github/inflationx/viewpump/ViewPump$Companion$reflectiveFallbackViewCreator$2;->INSTANCE:Lio/github/inflationx/viewpump/ViewPump$Companion$reflectiveFallbackViewCreator$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/github/inflationx/viewpump/internal/-ReflectiveFallbackViewCreator;
    .locals 1

    .line 150
    new-instance v0, Lio/github/inflationx/viewpump/internal/-ReflectiveFallbackViewCreator;

    invoke-direct {v0}, Lio/github/inflationx/viewpump/internal/-ReflectiveFallbackViewCreator;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lio/github/inflationx/viewpump/ViewPump$Companion$reflectiveFallbackViewCreator$2;->invoke()Lio/github/inflationx/viewpump/internal/-ReflectiveFallbackViewCreator;

    move-result-object v0

    return-object v0
.end method
