.class public final Lio/github/inflationx/viewpump/InflateRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/viewpump/InflateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field private context:Landroid/content/Context;

.field private fallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

.field private name:Ljava/lang/String;

.field private parent:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/github/inflationx/viewpump/InflateRequest;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lio/github/inflationx/viewpump/InflateRequest;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lio/github/inflationx/viewpump/InflateRequest;->context()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context:Landroid/content/Context;

    .line 36
    invoke-virtual {p1}, Lio/github/inflationx/viewpump/InflateRequest;->attrs()Landroid/util/AttributeSet;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs:Landroid/util/AttributeSet;

    .line 37
    invoke-virtual {p1}, Lio/github/inflationx/viewpump/InflateRequest;->parent()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->parent:Landroid/view/View;

    .line 38
    invoke-virtual {p1}, Lio/github/inflationx/viewpump/InflateRequest;->fallbackViewCreator()Lio/github/inflationx/viewpump/FallbackViewCreator;

    move-result-object p1

    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    return-void
.end method


# virtual methods
.method public final attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateRequest$Builder;
    .locals 0

    .line 50
    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs:Landroid/util/AttributeSet;

    return-object p0
.end method

.method public final build()Lio/github/inflationx/viewpump/InflateRequest;
    .locals 6

    .line 62
    new-instance v0, Lio/github/inflationx/viewpump/InflateRequest;

    iget-object v1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 63
    iget-object v2, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 64
    iget-object v3, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs:Landroid/util/AttributeSet;

    .line 65
    iget-object v4, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->parent:Landroid/view/View;

    .line 66
    iget-object v5, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    if-eqz v5, :cond_0

    .line 62
    invoke-direct/range {v0 .. v5}, Lio/github/inflationx/viewpump/InflateRequest;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Lio/github/inflationx/viewpump/FallbackViewCreator;)V

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "fallbackViewCreator == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateRequest$Builder;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final fallbackViewCreator(Lio/github/inflationx/viewpump/FallbackViewCreator;)Lio/github/inflationx/viewpump/InflateRequest$Builder;
    .locals 1

    const-string v0, "fallbackViewCreator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateRequest$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final parent(Landroid/view/View;)Lio/github/inflationx/viewpump/InflateRequest$Builder;
    .locals 0

    .line 54
    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->parent:Landroid/view/View;

    return-object p0
.end method
