.class public abstract Lezvcard/property/VCardProperty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field protected group:Ljava/lang/String;

.field protected parameters:Lezvcard/parameter/VCardParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lezvcard/parameter/VCardParameters;

    invoke-direct {v0}, Lezvcard/parameter/VCardParameters;-><init>()V

    iput-object v0, p0, Lezvcard/property/VCardProperty;->parameters:Lezvcard/parameter/VCardParameters;

    return-void
.end method


# virtual methods
.method protected _supportedVersions()Ljava/util/Set;
    .locals 1

    .line 79
    invoke-static {}, Lezvcard/VCardVersion;->values()[Lezvcard/VCardVersion;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lezvcard/property/VCardProperty;)I
    .locals 1

    .line 205
    invoke-virtual {p0}, Lezvcard/property/VCardProperty;->getParameters()Lezvcard/parameter/VCardParameters;

    move-result-object v0

    invoke-virtual {v0}, Lezvcard/parameter/VCardParameters;->getPref()Ljava/lang/Integer;

    move-result-object v0

    .line 206
    invoke-virtual {p1}, Lezvcard/property/VCardProperty;->getParameters()Lezvcard/parameter/VCardParameters;

    move-result-object p1

    invoke-virtual {p1}, Lezvcard/parameter/VCardParameters;->getPref()Ljava/lang/Integer;

    move-result-object p1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, -0x1

    return p1

    .line 216
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 47
    check-cast p1, Lezvcard/property/VCardProperty;

    invoke-virtual {p0, p1}, Lezvcard/property/VCardProperty;->compareTo(Lezvcard/property/VCardProperty;)I

    move-result p1

    return p1
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lezvcard/property/VCardProperty;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Lezvcard/parameter/VCardParameters;
    .locals 1

    .line 129
    iget-object v0, p0, Lezvcard/property/VCardProperty;->parameters:Lezvcard/parameter/VCardParameters;

    return-object v0
.end method

.method public final getSupportedVersions()Ljava/util/Set;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lezvcard/property/VCardProperty;->_supportedVersions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lezvcard/property/VCardProperty;->group:Ljava/lang/String;

    return-void
.end method

.method public setParameters(Lezvcard/parameter/VCardParameters;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lezvcard/property/VCardProperty;->parameters:Lezvcard/parameter/VCardParameters;

    return-void
.end method
