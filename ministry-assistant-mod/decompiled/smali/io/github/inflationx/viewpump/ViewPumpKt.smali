.class public final Lio/github/inflationx/viewpump/ViewPumpKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final addInterceptor(Lio/github/inflationx/viewpump/ViewPump$Builder;Lkotlin/jvm/functions/Function1;)Lio/github/inflationx/viewpump/ViewPump$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/inflationx/viewpump/ViewPump$Builder;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lio/github/inflationx/viewpump/ViewPump$Builder;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lio/github/inflationx/viewpump/Interceptor;->Companion:Lio/github/inflationx/viewpump/Interceptor$Companion;

    .line 17
    new-instance v0, Lio/github/inflationx/viewpump/Interceptor$Companion$invoke$1;

    invoke-direct {v0, p1}, Lio/github/inflationx/viewpump/Interceptor$Companion$invoke$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 194
    invoke-virtual {p0, v0}, Lio/github/inflationx/viewpump/ViewPump$Builder;->addInterceptor(Lio/github/inflationx/viewpump/Interceptor;)Lio/github/inflationx/viewpump/ViewPump$Builder;

    return-object p0
.end method
