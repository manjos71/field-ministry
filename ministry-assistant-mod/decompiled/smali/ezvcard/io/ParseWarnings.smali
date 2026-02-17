.class public Lezvcard/io/ParseWarnings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final warnings:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lezvcard/io/ParseWarnings;->warnings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs add(Ljava/lang/Integer;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1

    .line 52
    sget-object v0, Lezvcard/Messages;->INSTANCE:Lezvcard/Messages;

    invoke-virtual {v0, p3, p4}, Lezvcard/Messages;->getParseMessage(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lezvcard/io/ParseWarnings;->add(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 64
    iget-object p1, p0, Lezvcard/io/ParseWarnings;->warnings:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/16 v0, 0x23

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    const/16 v0, 0x25

    goto :goto_0

    :cond_2
    const/16 v0, 0x24

    .line 77
    :goto_0
    sget-object v1, Lezvcard/Messages;->INSTANCE:Lezvcard/Messages;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-virtual {v1, v0, v2}, Lezvcard/Messages;->getParseMessage(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lezvcard/io/ParseWarnings;->warnings:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 93
    iget-object v0, p0, Lezvcard/io/ParseWarnings;->warnings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public copy()Ljava/util/List;
    .locals 2

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lezvcard/io/ParseWarnings;->warnings:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
