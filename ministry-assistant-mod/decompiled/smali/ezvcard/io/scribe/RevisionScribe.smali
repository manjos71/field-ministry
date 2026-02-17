.class public Lezvcard/io/scribe/RevisionScribe;
.super Lezvcard/io/scribe/VCardPropertyScribe;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    const-class v0, Lezvcard/property/Revision;

    const-string v1, "REV"

    invoke-direct {p0, v0, v1}, Lezvcard/io/scribe/VCardPropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private parse(Ljava/lang/String;)Lezvcard/property/Revision;
    .locals 2

    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    :try_start_0
    new-instance v0, Lezvcard/property/Revision;

    invoke-static {p1}, Lezvcard/io/scribe/VCardPropertyScribe;->date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-direct {v0, p1}, Lezvcard/property/Revision;-><init>(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 123
    :catch_0
    new-instance p1, Lezvcard/io/CannotParseException;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-direct {p1, v1, v0}, Lezvcard/io/CannotParseException;-><init>(I[Ljava/lang/Object;)V

    throw p1

    .line 117
    :cond_1
    :goto_0
    new-instance p1, Lezvcard/property/Revision;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lezvcard/property/Revision;-><init>(Ljava/util/Date;)V

    return-object p1
.end method

.method private write(Lezvcard/property/Revision;Z)Ljava/lang/String;
    .locals 1

    .line 107
    invoke-virtual {p1}, Lezvcard/property/SimpleProperty;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-nez p1, :cond_0

    .line 109
    const-string p1, ""

    return-object p1

    .line 112
    :cond_0
    invoke-static {p1}, Lezvcard/io/scribe/VCardPropertyScribe;->date(Ljava/util/Date;)Lezvcard/io/scribe/VCardPropertyScribe$DateWriter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lezvcard/io/scribe/VCardPropertyScribe$DateWriter;->time(Z)Lezvcard/io/scribe/VCardPropertyScribe$DateWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lezvcard/io/scribe/VCardPropertyScribe$DateWriter;->utc(Z)Lezvcard/io/scribe/VCardPropertyScribe$DateWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lezvcard/io/scribe/VCardPropertyScribe$DateWriter;->extended(Z)Lezvcard/io/scribe/VCardPropertyScribe$DateWriter;

    move-result-object p1

    invoke-virtual {p1}, Lezvcard/io/scribe/VCardPropertyScribe$DateWriter;->write()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected _defaultDataType(Lezvcard/VCardVersion;)Lezvcard/VCardDataType;
    .locals 0

    .line 51
    sget-object p1, Lezvcard/VCardDataType;->TIMESTAMP:Lezvcard/VCardDataType;

    return-object p1
.end method

.method protected _parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/Revision;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lezvcard/io/scribe/RevisionScribe;->parse(Ljava/lang/String;)Lezvcard/property/Revision;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/VCardProperty;
    .locals 0

    .line 44
    invoke-virtual/range {p0 .. p5}, Lezvcard/io/scribe/RevisionScribe;->_parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/Revision;

    move-result-object p1

    return-object p1
.end method

.method protected _writeText(Lezvcard/property/Revision;Lezvcard/VCardVersion;)Ljava/lang/String;
    .locals 0

    const/4 p2, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lezvcard/io/scribe/RevisionScribe;->write(Lezvcard/property/Revision;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _writeText(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Ljava/lang/String;
    .locals 0

    .line 44
    check-cast p1, Lezvcard/property/Revision;

    invoke-virtual {p0, p1, p2}, Lezvcard/io/scribe/RevisionScribe;->_writeText(Lezvcard/property/Revision;Lezvcard/VCardVersion;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
