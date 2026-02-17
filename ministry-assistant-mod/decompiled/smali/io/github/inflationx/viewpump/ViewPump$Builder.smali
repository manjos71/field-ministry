.class public final Lio/github/inflationx/viewpump/ViewPump$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/viewpump/ViewPump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private customViewCreation:Z

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private reflection:Z

.field private reflectiveFallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

.field private storeLayoutResId:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->interceptors:Ljava/util/List;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->reflection:Z

    .line 48
    iput-boolean v0, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->customViewCreation:Z

    return-void
.end method


# virtual methods
.method public final addInterceptor(Lio/github/inflationx/viewpump/Interceptor;)Lio/github/inflationx/viewpump/ViewPump$Builder;
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Lio/github/inflationx/viewpump/ViewPump;
    .locals 6

    .line 135
    new-instance v0, Lio/github/inflationx/viewpump/ViewPump;

    .line 136
    iget-object v1, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->interceptors:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 137
    iget-boolean v2, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->reflection:Z

    .line 138
    iget-boolean v3, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->customViewCreation:Z

    .line 139
    iget-boolean v4, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->storeLayoutResId:Z

    const/4 v5, 0x0

    .line 135
    invoke-direct/range {v0 .. v5}, Lio/github/inflationx/viewpump/ViewPump;-><init>(Ljava/util/List;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final setCustomViewInflationEnabled(Z)Lio/github/inflationx/viewpump/ViewPump$Builder;
    .locals 0

    .line 116
    iput-boolean p1, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->customViewCreation:Z

    return-object p0
.end method

.method public final setPrivateFactoryInjectionEnabled(Z)Lio/github/inflationx/viewpump/ViewPump$Builder;
    .locals 0

    .line 88
    iput-boolean p1, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->reflection:Z

    return-object p0
.end method

.method public final setReflectiveFallbackViewCreator(Lio/github/inflationx/viewpump/FallbackViewCreator;)Lio/github/inflationx/viewpump/ViewPump$Builder;
    .locals 1

    const-string v0, "reflectiveFallbackViewCreator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->reflectiveFallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    return-object p0
.end method

.method public final setStoreLayoutResId(Z)Lio/github/inflationx/viewpump/ViewPump$Builder;
    .locals 0

    .line 131
    iput-boolean p1, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->storeLayoutResId:Z

    return-object p0
.end method
