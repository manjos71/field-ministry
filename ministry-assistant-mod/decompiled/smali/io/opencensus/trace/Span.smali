.class public abstract Lio/opencensus/trace/Span;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/Span$Options;
    }
.end annotation


# static fields
.field private static final DEFAULT_OPTIONS:Ljava/util/Set;

.field private static final EMPTY_ATTRIBUTES:Ljava/util/Map;


# instance fields
.field private final context:Lio/opencensus/trace/SpanContext;

.field private final options:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sput-object v0, Lio/opencensus/trace/Span;->EMPTY_ATTRIBUTES:Ljava/util/Map;

    .line 62
    const-class v0, Lio/opencensus/trace/Span$Options;

    .line 63
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Span;->DEFAULT_OPTIONS:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Lio/opencensus/trace/SpanContext;Ljava/util/EnumSet;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "context"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/opencensus/trace/SpanContext;

    iput-object v0, p0, Lio/opencensus/trace/Span;->context:Lio/opencensus/trace/SpanContext;

    if-nez p2, :cond_0

    .line 80
    sget-object p2, Lio/opencensus/trace/Span;->DEFAULT_OPTIONS:Ljava/util/Set;

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p2}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lio/opencensus/trace/Span;->options:Ljava/util/Set;

    .line 83
    invoke-virtual {p1}, Lio/opencensus/trace/SpanContext;->getTraceOptions()Lio/opencensus/trace/TraceOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/trace/TraceOptions;->isSampled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lio/opencensus/trace/Span$Options;->RECORD_EVENTS:Lio/opencensus/trace/Span$Options;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    const-string p2, "Span is sampled, but does not have RECORD_EVENTS set."

    .line 82
    invoke-static {p1, p2}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addAnnotation(Ljava/lang/String;)V
    .locals 1

    .line 140
    const-string v0, "description"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lio/opencensus/trace/Span;->EMPTY_ATTRIBUTES:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lio/opencensus/trace/Span;->addAnnotation(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public abstract addAnnotation(Ljava/lang/String;Ljava/util/Map;)V
.end method

.method public abstract addMessageEvent(Lio/opencensus/trace/MessageEvent;)V
.end method

.method public final end()V
    .locals 1

    .line 244
    sget-object v0, Lio/opencensus/trace/EndSpanOptions;->DEFAULT:Lio/opencensus/trace/EndSpanOptions;

    invoke-virtual {p0, v0}, Lio/opencensus/trace/Span;->end(Lio/opencensus/trace/EndSpanOptions;)V

    return-void
.end method

.method public abstract end(Lio/opencensus/trace/EndSpanOptions;)V
.end method

.method public final getContext()Lio/opencensus/trace/SpanContext;
    .locals 1

    .line 254
    iget-object v0, p0, Lio/opencensus/trace/Span;->context:Lio/opencensus/trace/SpanContext;

    return-object v0
.end method

.method public abstract putAttribute(Ljava/lang/String;Lio/opencensus/trace/AttributeValue;)V
.end method
