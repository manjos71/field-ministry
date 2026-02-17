.class public final Lio/realm/internal/coroutines/InternalFlowFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/coroutines/FlowFactory;


# instance fields
.field private final returnFrozenObjects:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory;->returnFrozenObjects:Z

    return-void
.end method
