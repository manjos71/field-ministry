.class public Lezvcard/property/Agent;
.super Lezvcard/property/VCardProperty;
.source "SourceFile"


# instance fields
.field private url:Ljava/lang/String;

.field private vcard:Lezvcard/VCard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public _supportedVersions()Ljava/util/Set;
    .locals 2

    .line 125
    sget-object v0, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    sget-object v1, Lezvcard/VCardVersion;->V3_0:Lezvcard/VCardVersion;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lezvcard/property/Agent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVCard()Lezvcard/VCard;
    .locals 1

    .line 150
    iget-object v0, p0, Lezvcard/property/Agent;->vcard:Lezvcard/VCard;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lezvcard/property/Agent;->url:Ljava/lang/String;

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lezvcard/property/Agent;->vcard:Lezvcard/VCard;

    return-void
.end method

.method public setVCard(Lezvcard/VCard;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lezvcard/property/Agent;->vcard:Lezvcard/VCard;

    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lezvcard/property/Agent;->url:Ljava/lang/String;

    return-void
.end method
