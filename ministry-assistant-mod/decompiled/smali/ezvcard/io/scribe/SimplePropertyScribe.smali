.class public abstract Lezvcard/io/scribe/SimplePropertyScribe;
.super Lezvcard/io/scribe/VCardPropertyScribe;
.source "SourceFile"


# instance fields
.field protected final dataType:Lezvcard/VCardDataType;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lezvcard/VCardDataType;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lezvcard/io/scribe/VCardPropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 49
    iput-object p3, p0, Lezvcard/io/scribe/SimplePropertyScribe;->dataType:Lezvcard/VCardDataType;

    return-void
.end method


# virtual methods
.method protected _defaultDataType(Lezvcard/VCardVersion;)Lezvcard/VCardDataType;
    .locals 0

    .line 54
    iget-object p1, p0, Lezvcard/io/scribe/SimplePropertyScribe;->dataType:Lezvcard/VCardDataType;

    return-object p1
.end method

.method protected _parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/VCardProperty;
    .locals 0

    .line 65
    invoke-static {p1}, Lezvcard/io/scribe/VCardPropertyScribe;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lezvcard/io/scribe/SimplePropertyScribe;->_parseValue(Ljava/lang/String;)Lezvcard/property/VCardProperty;

    move-result-object p1

    return-object p1
.end method

.method protected abstract _parseValue(Ljava/lang/String;)Lezvcard/property/VCardProperty;
.end method

.method protected _writeText(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lezvcard/io/scribe/SimplePropertyScribe;->_writeValue(Lezvcard/property/VCardProperty;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 60
    const-string p1, ""

    return-object p1

    :cond_0
    invoke-static {p1}, Lezvcard/io/scribe/VCardPropertyScribe;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract _writeValue(Lezvcard/property/VCardProperty;)Ljava/lang/String;
.end method
