.class public final enum Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

.field public static final enum REQUIRE_HEADER:Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;


# instance fields
.field final _defaultState:Z

.field final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

    const-string v1, "REQUIRE_HEADER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->REQUIRE_HEADER:Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

    .line 19
    new-array v1, v3, [Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

    aput-object v0, v1, v2

    sput-object v1, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->$VALUES:[Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-boolean p3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->_defaultState:Z

    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->_mask:I

    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .line 40
    invoke-static {}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->values()[Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 41
    invoke-virtual {v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 42
    invoke-virtual {v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;
    .locals 1

    .line 19
    const-class v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;
    .locals 1

    .line 19
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->$VALUES:[Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->getMask()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMask()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->_mask:I

    return v0
.end method
