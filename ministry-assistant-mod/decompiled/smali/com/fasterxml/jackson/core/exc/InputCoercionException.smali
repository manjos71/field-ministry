.class public Lcom/fasterxml/jackson/core/exc/InputCoercionException;
.super Lcom/fasterxml/jackson/core/exc/StreamReadException;
.source "SourceFile"


# instance fields
.field protected final _inputType:Lcom/fasterxml/jackson/core/JsonToken;

.field protected final _targetType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Class;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/exc/StreamReadException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    .line 36
    iput-object p3, p0, Lcom/fasterxml/jackson/core/exc/InputCoercionException;->_inputType:Lcom/fasterxml/jackson/core/JsonToken;

    .line 37
    iput-object p4, p0, Lcom/fasterxml/jackson/core/exc/InputCoercionException;->_targetType:Ljava/lang/Class;

    return-void
.end method
