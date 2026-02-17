.class public Lezvcard/io/scribe/AddressScribe;
.super Lezvcard/io/scribe/VCardPropertyScribe;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    const-class v0, Lezvcard/property/Address;

    const-string v1, "ADR"

    invoke-direct {p0, v0, v1}, Lezvcard/io/scribe/VCardPropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected _defaultDataType(Lezvcard/VCardVersion;)Lezvcard/VCardDataType;
    .locals 0

    .line 50
    sget-object p1, Lezvcard/VCardDataType;->TEXT:Lezvcard/VCardDataType;

    return-object p1
.end method

.method protected _parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/Address;
    .locals 0

    .line 81
    new-instance p2, Lezvcard/property/Address;

    invoke-direct {p2}, Lezvcard/property/Address;-><init>()V

    .line 82
    invoke-static {p1}, Lezvcard/io/scribe/VCardPropertyScribe;->structured(Ljava/lang/String;)Lezvcard/io/scribe/VCardPropertyScribe$StructuredIterator;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lezvcard/io/scribe/VCardPropertyScribe$StructuredIterator;->nextString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lezvcard/property/Address;->setPoBox(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lezvcard/io/scribe/VCardPropertyScribe$StructuredIterator;->nextString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lezvcard/property/Address;->setExtendedAddress(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lezvcard/io/scribe/VCardPropertyScribe$StructuredIterator;->nextString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lezvcard/property/Address;->setStreetAddress(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lezvcard/io/scribe/VCardPropertyScribe$StructuredIterator;->nextString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lezvcard/property/Address;->setLocality(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lezvcard/io/scribe/VCardPropertyScribe$StructuredIterator;->nextString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lezvcard/property/Address;->setRegion(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lezvcard/io/scribe/VCardPropertyScribe$StructuredIterator;->nextString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lezvcard/property/Address;->setPostalCode(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lezvcard/io/scribe/VCardPropertyScribe$StructuredIterator;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lezvcard/property/Address;->setCountry(Ljava/lang/String;)V

    return-object p2
.end method

.method protected bridge synthetic _parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/VCardProperty;
    .locals 0

    .line 43
    invoke-virtual/range {p0 .. p5}, Lezvcard/io/scribe/AddressScribe;->_parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/Address;

    move-result-object p1

    return-object p1
.end method

.method protected _prepareParameters(Lezvcard/property/Address;Lezvcard/parameter/VCardParameters;Lezvcard/VCardVersion;Lezvcard/VCard;)V
    .locals 0

    .line 55
    invoke-static {p1, p2, p3, p4}, Lezvcard/io/scribe/VCardPropertyScribe;->handlePrefParam(Lezvcard/property/VCardProperty;Lezvcard/parameter/VCardParameters;Lezvcard/VCardVersion;Lezvcard/VCard;)V

    .line 57
    sget-object p1, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    if-eq p3, p1, :cond_1

    sget-object p1, Lezvcard/VCardVersion;->V3_0:Lezvcard/VCardVersion;

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 60
    :cond_1
    :goto_0
    const-string p1, "LABEL"

    invoke-virtual {p2, p1}, Lezvcard/util/ListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method protected bridge synthetic _prepareParameters(Lezvcard/property/VCardProperty;Lezvcard/parameter/VCardParameters;Lezvcard/VCardVersion;Lezvcard/VCard;)V
    .locals 0

    .line 43
    check-cast p1, Lezvcard/property/Address;

    invoke-virtual {p0, p1, p2, p3, p4}, Lezvcard/io/scribe/AddressScribe;->_prepareParameters(Lezvcard/property/Address;Lezvcard/parameter/VCardParameters;Lezvcard/VCardVersion;Lezvcard/VCard;)V

    return-void
.end method

.method protected _writeText(Lezvcard/property/Address;Lezvcard/VCardVersion;)Ljava/lang/String;
    .locals 7

    .line 67
    invoke-virtual {p1}, Lezvcard/property/Address;->getPoBox()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lezvcard/property/Address;->getExtendedAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lezvcard/property/Address;->getStreetAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lezvcard/property/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lezvcard/property/Address;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lezvcard/property/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lezvcard/property/Address;->getCountry()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 p2, 0x1

    aput-object v0, v5, p2

    const/4 p2, 0x2

    aput-object v1, v5, p2

    const/4 p2, 0x3

    aput-object v2, v5, p2

    const/4 p2, 0x4

    aput-object v3, v5, p2

    const/4 p2, 0x5

    aput-object v4, v5, p2

    const/4 p2, 0x6

    aput-object p1, v5, p2

    invoke-static {v5}, Lezvcard/io/scribe/VCardPropertyScribe;->structured([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _writeText(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Ljava/lang/String;
    .locals 0

    .line 43
    check-cast p1, Lezvcard/property/Address;

    invoke-virtual {p0, p1, p2}, Lezvcard/io/scribe/AddressScribe;->_writeText(Lezvcard/property/Address;Lezvcard/VCardVersion;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
