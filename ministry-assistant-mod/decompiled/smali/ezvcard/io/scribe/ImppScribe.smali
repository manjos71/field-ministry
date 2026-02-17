.class public Lezvcard/io/scribe/ImppScribe;
.super Lezvcard/io/scribe/VCardPropertyScribe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;
    }
.end annotation


# static fields
.field private static final htmlLinkFormats:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    new-instance v1, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;

    const-string v2, "goim?screenname=%s"

    const-string v3, "aim"

    const-string v4, "(goim|addbuddy)\\?.*?\\bscreenname=(.*?)(&|$)"

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5, v2}, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;

    const-string v2, "(sendim|addfriend|sendfile|call)\\?(.*)"

    const-string v3, "sendim?%s"

    const-string v4, "ymsgr"

    invoke-direct {v1, v4, v2, v5, v3}, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;

    const-string v2, "%s"

    const-string v3, "skype"

    const-string v4, "(.*?)(\\?|$)"

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v6, v2}, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;

    const-string v2, "(chat|add|voice|video)\\?contact=(.*?)(&|$)"

    const-string v3, "chat?contact=%s"

    const-string v7, "msnim"

    invoke-direct {v1, v7, v2, v5, v3}, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;

    const-string v2, "xmpp"

    const-string v3, "%s?message"

    invoke-direct {v1, v2, v4, v6, v3}, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;

    const-string v2, "message\\?uin=(\\d+)"

    const-string v3, "message?uin=%s"

    const-string v4, "icq"

    invoke-direct {v1, v4, v2, v6, v3}, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v1, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;

    const-string v2, "sip"

    invoke-direct {v1, v2}, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v1, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;

    const-string v2, "irc"

    invoke-direct {v1, v2}, Lezvcard/io/scribe/ImppScribe$HtmlLinkFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lezvcard/io/scribe/ImppScribe;->htmlLinkFormats:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    const-class v0, Lezvcard/property/Impp;

    const-string v1, "IMPP"

    invoke-direct {p0, v0, v1}, Lezvcard/io/scribe/VCardPropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private parse(Ljava/lang/String;)Lezvcard/property/Impp;
    .locals 4

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    :try_start_0
    new-instance v0, Lezvcard/property/Impp;

    invoke-direct {v0, p1}, Lezvcard/property/Impp;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Lezvcard/io/CannotParseException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const/16 p1, 0xf

    invoke-direct {v1, p1, v2}, Lezvcard/io/CannotParseException;-><init>(I[Ljava/lang/Object;)V

    throw v1

    .line 129
    :cond_1
    :goto_0
    new-instance p1, Lezvcard/property/Impp;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lezvcard/property/Impp;-><init>(Ljava/net/URI;)V

    return-object p1
.end method

.method private write(Lezvcard/property/Impp;)Ljava/lang/String;
    .locals 0

    .line 123
    invoke-virtual {p1}, Lezvcard/property/Impp;->getUri()Ljava/net/URI;

    move-result-object p1

    if-nez p1, :cond_0

    .line 124
    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected _defaultDataType(Lezvcard/VCardVersion;)Lezvcard/VCardDataType;
    .locals 0

    .line 65
    sget-object p1, Lezvcard/VCardDataType;->URI:Lezvcard/VCardDataType;

    return-object p1
.end method

.method protected _parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/Impp;
    .locals 0

    .line 75
    invoke-static {p1}, Lezvcard/io/scribe/VCardPropertyScribe;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lezvcard/io/scribe/ImppScribe;->parse(Ljava/lang/String;)Lezvcard/property/Impp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/VCardProperty;
    .locals 0

    .line 49
    invoke-virtual/range {p0 .. p5}, Lezvcard/io/scribe/ImppScribe;->_parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/Impp;

    move-result-object p1

    return-object p1
.end method

.method protected _writeText(Lezvcard/property/Impp;Lezvcard/VCardVersion;)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lezvcard/io/scribe/ImppScribe;->write(Lezvcard/property/Impp;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _writeText(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Ljava/lang/String;
    .locals 0

    .line 49
    check-cast p1, Lezvcard/property/Impp;

    invoke-virtual {p0, p1, p2}, Lezvcard/io/scribe/ImppScribe;->_writeText(Lezvcard/property/Impp;Lezvcard/VCardVersion;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
