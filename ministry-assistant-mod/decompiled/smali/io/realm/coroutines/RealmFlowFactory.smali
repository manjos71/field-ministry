.class public Lio/realm/coroutines/RealmFlowFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/coroutines/FlowFactory;


# instance fields
.field private final factory:Lio/realm/internal/coroutines/InternalFlowFactory;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lio/realm/internal/coroutines/InternalFlowFactory;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v0, p1}, Lio/realm/internal/coroutines/InternalFlowFactory;-><init>(Z)V

    iput-object v0, p0, Lio/realm/coroutines/RealmFlowFactory;->factory:Lio/realm/internal/coroutines/InternalFlowFactory;

    return-void
.end method
