.class public abstract Lezvcard/io/scribe/ListPropertyScribe;
.super Lezvcard/io/scribe/VCardPropertyScribe;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lezvcard/io/scribe/VCardPropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private parse(Ljava/util/List;)Lezvcard/property/TextListProperty;
    .locals 2

    .line 95
    invoke-virtual {p0}, Lezvcard/io/scribe/ListPropertyScribe;->_newInstance()Lezvcard/property/TextListProperty;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lezvcard/property/ListProperty;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method protected _defaultDataType(Lezvcard/VCardVersion;)Lezvcard/VCardDataType;
    .locals 0

    .line 49
    sget-object p1, Lezvcard/VCardDataType;->TEXT:Lezvcard/VCardDataType;

    return-object p1
.end method

.method protected abstract _newInstance()Lezvcard/property/TextListProperty;
.end method

.method protected _parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/TextListProperty;
    .locals 0

    .line 59
    invoke-static {p1}, Lezvcard/io/scribe/VCardPropertyScribe;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Lezvcard/io/scribe/ListPropertyScribe;->parse(Ljava/util/List;)Lezvcard/property/TextListProperty;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/VCardProperty;
    .locals 0

    .line 42
    invoke-virtual/range {p0 .. p5}, Lezvcard/io/scribe/ListPropertyScribe;->_parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/TextListProperty;

    move-result-object p1

    return-object p1
.end method

.method protected _writeText(Lezvcard/property/TextListProperty;Lezvcard/VCardVersion;)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-virtual {p1}, Lezvcard/property/ListProperty;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lezvcard/io/scribe/VCardPropertyScribe;->list(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _writeText(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Ljava/lang/String;
    .locals 0

    .line 42
    check-cast p1, Lezvcard/property/TextListProperty;

    invoke-virtual {p0, p1, p2}, Lezvcard/io/scribe/ListPropertyScribe;->_writeText(Lezvcard/property/TextListProperty;Lezvcard/VCardVersion;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
