.class public abstract Lio/opencensus/trace/propagation/TextFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/propagation/TextFormat$NoopTextFormat;,
        Lio/opencensus/trace/propagation/TextFormat$Setter;
    }
.end annotation


# static fields
.field private static final NOOP_TEXT_FORMAT:Lio/opencensus/trace/propagation/TextFormat$NoopTextFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Lio/opencensus/trace/propagation/TextFormat$NoopTextFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/propagation/TextFormat$NoopTextFormat;-><init>(Lio/opencensus/trace/propagation/TextFormat$1;)V

    sput-object v0, Lio/opencensus/trace/propagation/TextFormat;->NOOP_TEXT_FORMAT:Lio/opencensus/trace/propagation/TextFormat$NoopTextFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract inject(Lio/opencensus/trace/SpanContext;Ljava/lang/Object;Lio/opencensus/trace/propagation/TextFormat$Setter;)V
.end method
