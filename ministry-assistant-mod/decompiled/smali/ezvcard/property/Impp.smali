.class public Lezvcard/property/Impp;
.super Lezvcard/property/VCardProperty;
.source "SourceFile"


# instance fields
.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 94
    invoke-virtual {p0, p1}, Lezvcard/property/Impp;->setUri(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 103
    invoke-virtual {p0, p1}, Lezvcard/property/Impp;->setUri(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public _supportedVersions()Ljava/util/Set;
    .locals 2

    .line 118
    sget-object v0, Lezvcard/VCardVersion;->V3_0:Lezvcard/VCardVersion;

    sget-object v1, Lezvcard/VCardVersion;->V4_0:Lezvcard/VCardVersion;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 271
    iget-object v0, p0, Lezvcard/property/Impp;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 280
    :cond_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lezvcard/property/Impp;->setUri(Ljava/net/URI;)V

    return-void
.end method

.method public setUri(Ljava/net/URI;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lezvcard/property/Impp;->uri:Ljava/net/URI;

    return-void
.end method
