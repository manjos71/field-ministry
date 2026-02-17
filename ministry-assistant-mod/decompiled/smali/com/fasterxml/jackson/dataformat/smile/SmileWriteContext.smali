.class public final Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;
.super Lcom/fasterxml/jackson/core/JsonStreamContext;
.source "SourceFile"


# instance fields
.field protected _childToRecycle:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

.field protected _currentName:Ljava/lang/String;

.field protected _currentValue:Ljava/lang/Object;

.field protected _dups:Lcom/fasterxml/jackson/core/json/DupDetector;

.field protected _gotFieldId:Z

.field protected final _parent:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;


# direct methods
.method protected constructor <init>(ILcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/Object;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;-><init>()V

    .line 62
    iput p1, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    .line 63
    iput-object p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_parent:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    .line 64
    iput-object p3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    const/4 p1, -0x1

    .line 65
    iput p1, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    .line 66
    iput-object p4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_currentValue:Ljava/lang/Object;

    return-void
.end method

.method private final _checkDup(Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/String;)V
    .locals 3

    .line 168
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/json/DupDetector;->isDup(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/DupDetector;->getSource()Ljava/lang/Object;

    move-result-object p1

    .line 170
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    instance-of v1, p1, Lcom/fasterxml/jackson/core/JsonGenerator;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/fasterxml/jackson/core/JsonGenerator;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;
    .locals 3

    .line 101
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;-><init>(ILcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/Object;)V

    return-object v0
.end method

.method private reset(ILjava/lang/Object;)Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;
    .locals 0

    .line 70
    iput p1, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    const/4 p1, -0x1

    .line 71
    iput p1, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_gotFieldId:Z

    .line 74
    iput-object p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_currentValue:Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/DupDetector;->reset()V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public createChildArrayContext(Ljava/lang/Object;)Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_childToRecycle:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/DupDetector;->child()Lcom/fasterxml/jackson/core/json/DupDetector;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, p0, v2, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;-><init>(ILcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_childToRecycle:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    return-object v0

    .line 111
    :cond_1
    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->reset(ILjava/lang/Object;)Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    move-result-object p1

    return-object p1
.end method

.method public createChildObjectContext(Ljava/lang/Object;)Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_childToRecycle:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/DupDetector;->child()Lcom/fasterxml/jackson/core/json/DupDetector;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, p0, v2, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;-><init>(ILcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_childToRecycle:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    return-object v0

    .line 121
    :cond_1
    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->reset(ILjava/lang/Object;)Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    move-result-object p1

    return-object p1
.end method

.method public final getCurrentName()Ljava/lang/String;
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_gotFieldId:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_currentName:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getParent()Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_parent:Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;

    return-object v0
.end method

.method public writeFieldName(Ljava/lang/String;)Z
    .locals 2

    .line 158
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_gotFieldId:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_gotFieldId:Z

    .line 162
    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_currentName:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_checkDup(Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/String;)V

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public writeValue()Z
    .locals 2

    .line 177
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 178
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_gotFieldId:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 181
    :cond_0
    iput-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileWriteContext;->_gotFieldId:Z

    .line 183
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    return v1
.end method
