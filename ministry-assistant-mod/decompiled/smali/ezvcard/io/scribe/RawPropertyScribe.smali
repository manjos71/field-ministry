.class public Lezvcard/io/scribe/RawPropertyScribe;
.super Lezvcard/io/scribe/VCardPropertyScribe;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 41
    const-class v0, Lezvcard/property/RawProperty;

    invoke-direct {p0, v0, p1}, Lezvcard/io/scribe/VCardPropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected _dataType(Lezvcard/property/RawProperty;Lezvcard/VCardVersion;)Lezvcard/VCardDataType;
    .locals 0

    .line 51
    invoke-virtual {p1}, Lezvcard/property/RawProperty;->getDataType()Lezvcard/VCardDataType;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _dataType(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Lezvcard/VCardDataType;
    .locals 0

    .line 39
    check-cast p1, Lezvcard/property/RawProperty;

    invoke-virtual {p0, p1, p2}, Lezvcard/io/scribe/RawPropertyScribe;->_dataType(Lezvcard/property/RawProperty;Lezvcard/VCardVersion;)Lezvcard/VCardDataType;

    move-result-object p1

    return-object p1
.end method

.method protected _defaultDataType(Lezvcard/VCardVersion;)Lezvcard/VCardDataType;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected _parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/RawProperty;
    .locals 0

    .line 62
    new-instance p3, Lezvcard/property/RawProperty;

    iget-object p4, p0, Lezvcard/io/scribe/VCardPropertyScribe;->propertyName:Ljava/lang/String;

    invoke-direct {p3, p4, p1}, Lezvcard/property/RawProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3, p2}, Lezvcard/property/RawProperty;->setDataType(Lezvcard/VCardDataType;)V

    return-object p3
.end method

.method protected bridge synthetic _parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/VCardProperty;
    .locals 0

    .line 39
    invoke-virtual/range {p0 .. p5}, Lezvcard/io/scribe/RawPropertyScribe;->_parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/RawProperty;

    move-result-object p1

    return-object p1
.end method

.method protected _writeText(Lezvcard/property/RawProperty;Lezvcard/VCardVersion;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-virtual {p1}, Lezvcard/property/SimpleProperty;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 57
    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic _writeText(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Ljava/lang/String;
    .locals 0

    .line 39
    check-cast p1, Lezvcard/property/RawProperty;

    invoke-virtual {p0, p1, p2}, Lezvcard/io/scribe/RawPropertyScribe;->_writeText(Lezvcard/property/RawProperty;Lezvcard/VCardVersion;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
