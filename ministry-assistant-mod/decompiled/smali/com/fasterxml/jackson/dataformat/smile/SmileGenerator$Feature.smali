.class public final enum Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

.field public static final enum CHECK_SHARED_NAMES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

.field public static final enum CHECK_SHARED_STRING_VALUES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

.field public static final enum ENCODE_BINARY_AS_7BIT:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

.field public static final enum WRITE_END_MARKER:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

.field public static final enum WRITE_HEADER:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;


# instance fields
.field protected final _defaultState:Z

.field protected final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 38
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    const-string v1, "WRITE_HEADER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->WRITE_HEADER:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    .line 49
    new-instance v1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    const-string v4, "WRITE_END_MARKER"

    invoke-direct {v1, v4, v3, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->WRITE_END_MARKER:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    .line 61
    new-instance v4, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    const-string v5, "ENCODE_BINARY_AS_7BIT"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->ENCODE_BINARY_AS_7BIT:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    .line 71
    new-instance v5, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    const-string v7, "CHECK_SHARED_NAMES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->CHECK_SHARED_NAMES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    .line 84
    new-instance v7, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    const-string v9, "CHECK_SHARED_STRING_VALUES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    const/4 v9, 0x5

    .line 26
    new-array v9, v9, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->$VALUES:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput-boolean p3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->_defaultState:Z

    const/4 p1, 0x1

    .line 107
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->_mask:I

    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .line 97
    invoke-static {}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->values()[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 98
    invoke-virtual {v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    invoke-virtual {v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;
    .locals 1

    .line 26
    const-class v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;
    .locals 1

    .line 26
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->$VALUES:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1

    .line 112
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->_mask:I

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

    .line 111
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->_mask:I

    return v0
.end method
