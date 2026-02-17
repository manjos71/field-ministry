.class public Lezvcard/property/Related;
.super Lezvcard/property/VCardProperty;
.source "SourceFile"


# instance fields
.field private text:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public _supportedVersions()Ljava/util/Set;
    .locals 1

    .line 130
    sget-object v0, Lezvcard/VCardVersion;->V4_0:Lezvcard/VCardVersion;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lezvcard/property/Related;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lezvcard/property/Related;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lezvcard/property/Related;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lezvcard/property/Related;->uri:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lezvcard/property/Related;->uri:Ljava/lang/String;

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lezvcard/property/Related;->text:Ljava/lang/String;

    return-void
.end method
