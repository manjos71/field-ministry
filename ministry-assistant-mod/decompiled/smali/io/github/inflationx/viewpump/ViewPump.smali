.class public final Lio/github/inflationx/viewpump/ViewPump;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/inflationx/viewpump/ViewPump$Builder;,
        Lio/github/inflationx/viewpump/ViewPump$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/github/inflationx/viewpump/ViewPump$Companion;

.field private static INSTANCE:Lio/github/inflationx/viewpump/ViewPump;

.field private static final reflectiveFallbackViewCreator$delegate:Lkotlin/Lazy;


# instance fields
.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final interceptorsWithFallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final isCustomViewCreation:Z

.field private final isReflection:Z

.field private final isStoreLayoutResId:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/inflationx/viewpump/ViewPump$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/inflationx/viewpump/ViewPump$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/inflationx/viewpump/ViewPump;->Companion:Lio/github/inflationx/viewpump/ViewPump$Companion;

    .line 149
    sget-object v0, Lio/github/inflationx/viewpump/ViewPump$Companion$reflectiveFallbackViewCreator$2;->INSTANCE:Lio/github/inflationx/viewpump/ViewPump$Companion$reflectiveFallbackViewCreator$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/github/inflationx/viewpump/ViewPump;->reflectiveFallbackViewCreator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/inflationx/viewpump/ViewPump;->interceptors:Ljava/util/List;

    iput-boolean p2, p0, Lio/github/inflationx/viewpump/ViewPump;->isReflection:Z

    iput-boolean p3, p0, Lio/github/inflationx/viewpump/ViewPump;->isCustomViewCreation:Z

    iput-boolean p4, p0, Lio/github/inflationx/viewpump/ViewPump;->isStoreLayoutResId:Z

    .line 31
    new-instance p2, Lio/github/inflationx/viewpump/internal/-FallbackViewCreationInterceptor;

    invoke-direct {p2}, Lio/github/inflationx/viewpump/internal/-FallbackViewCreationInterceptor;-><init>()V

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/github/inflationx/viewpump/ViewPump;->interceptorsWithFallback:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lio/github/inflationx/viewpump/ViewPump;-><init>(Ljava/util/List;ZZZ)V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lio/github/inflationx/viewpump/ViewPump;
    .locals 1

    .line 12
    sget-object v0, Lio/github/inflationx/viewpump/ViewPump;->INSTANCE:Lio/github/inflationx/viewpump/ViewPump;

    return-object v0
.end method

.method public static final synthetic access$getReflectiveFallbackViewCreator$cp()Lkotlin/Lazy;
    .locals 1

    .line 12
    sget-object v0, Lio/github/inflationx/viewpump/ViewPump;->reflectiveFallbackViewCreator$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lio/github/inflationx/viewpump/ViewPump;)V
    .locals 0

    .line 12
    sput-object p0, Lio/github/inflationx/viewpump/ViewPump;->INSTANCE:Lio/github/inflationx/viewpump/ViewPump;

    return-void
.end method

.method public static final builder()Lio/github/inflationx/viewpump/ViewPump$Builder;
    .locals 1

    sget-object v0, Lio/github/inflationx/viewpump/ViewPump;->Companion:Lio/github/inflationx/viewpump/ViewPump$Companion;

    invoke-virtual {v0}, Lio/github/inflationx/viewpump/ViewPump$Companion;->builder()Lio/github/inflationx/viewpump/ViewPump$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final create(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    sget-object v0, Lio/github/inflationx/viewpump/ViewPump;->Companion:Lio/github/inflationx/viewpump/ViewPump$Companion;

    invoke-virtual {v0, p0, p1}, Lio/github/inflationx/viewpump/ViewPump$Companion;->create(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final get()Lio/github/inflationx/viewpump/ViewPump;
    .locals 1

    sget-object v0, Lio/github/inflationx/viewpump/ViewPump;->Companion:Lio/github/inflationx/viewpump/ViewPump$Companion;

    invoke-virtual {v0}, Lio/github/inflationx/viewpump/ViewPump$Companion;->get()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v0

    return-object v0
.end method

.method public static final init(Lio/github/inflationx/viewpump/ViewPump;)V
    .locals 1

    sget-object v0, Lio/github/inflationx/viewpump/ViewPump;->Companion:Lio/github/inflationx/viewpump/ViewPump$Companion;

    invoke-virtual {v0, p0}, Lio/github/inflationx/viewpump/ViewPump$Companion;->init(Lio/github/inflationx/viewpump/ViewPump;)V

    return-void
.end method


# virtual methods
.method public final inflate(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;
    .locals 3

    const-string v0, "originalRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lio/github/inflationx/viewpump/internal/-InterceptorChain;

    iget-object v1, p0, Lio/github/inflationx/viewpump/ViewPump;->interceptorsWithFallback:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lio/github/inflationx/viewpump/internal/-InterceptorChain;-><init>(Ljava/util/List;ILio/github/inflationx/viewpump/InflateRequest;)V

    .line 36
    invoke-virtual {v0, p1}, Lio/github/inflationx/viewpump/internal/-InterceptorChain;->proceed(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;

    move-result-object p1

    return-object p1
.end method

.method public final interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lio/github/inflationx/viewpump/ViewPump;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public final isCustomViewCreation()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lio/github/inflationx/viewpump/ViewPump;->isCustomViewCreation:Z

    return v0
.end method

.method public final isReflection()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lio/github/inflationx/viewpump/ViewPump;->isReflection:Z

    return v0
.end method

.method public final isStoreLayoutResId()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lio/github/inflationx/viewpump/ViewPump;->isStoreLayoutResId:Z

    return v0
.end method
