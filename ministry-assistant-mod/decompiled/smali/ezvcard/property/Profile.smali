.class public Lezvcard/property/Profile;
.super Lezvcard/property/TextProperty;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    const-string v0, "VCARD"

    invoke-direct {p0, v0}, Lezvcard/property/TextProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _supportedVersions()Ljava/util/Set;
    .locals 1

    .line 71
    sget-object v0, Lezvcard/VCardVersion;->V3_0:Lezvcard/VCardVersion;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
