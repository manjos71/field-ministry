.class public Lezvcard/property/Gender;
.super Lezvcard/property/VCardProperty;
.source "SourceFile"


# instance fields
.field private gender:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 95
    iput-object p1, p0, Lezvcard/property/Gender;->gender:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _supportedVersions()Ljava/util/Set;
    .locals 1

    .line 100
    sget-object v0, Lezvcard/VCardVersion;->V4_0:Lezvcard/VCardVersion;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lezvcard/property/Gender;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lezvcard/property/Gender;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isMale()Z
    .locals 2

    .line 141
    const-string v0, "M"

    iget-object v1, p0, Lezvcard/property/Gender;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lezvcard/property/Gender;->text:Ljava/lang/String;

    return-void
.end method
