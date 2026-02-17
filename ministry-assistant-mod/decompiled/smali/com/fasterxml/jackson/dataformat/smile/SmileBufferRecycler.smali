.class public Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _seenNamesBuffer:[Ljava/lang/Object;

.field protected _seenStringValuesBuffer:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocSeenNamesBuffer()[Ljava/lang/Object;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->_seenNamesBuffer:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->_seenNamesBuffer:[Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public allocSeenStringValuesBuffer()[Ljava/lang/Object;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->_seenStringValuesBuffer:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->_seenStringValuesBuffer:[Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public releaseSeenNamesBuffer([Ljava/lang/Object;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->_seenNamesBuffer:[Ljava/lang/Object;

    return-void
.end method

.method public releaseSeenStringValuesBuffer([Ljava/lang/Object;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->_seenStringValuesBuffer:[Ljava/lang/Object;

    return-void
.end method
