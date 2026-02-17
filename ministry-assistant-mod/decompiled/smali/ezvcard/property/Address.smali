.class public Lezvcard/property/Address;
.super Lezvcard/property/VCardProperty;
.source "SourceFile"


# instance fields
.field private country:Ljava/lang/String;

.field private extendedAddress:Ljava/lang/String;

.field private locality:Ljava/lang/String;

.field private poBox:Ljava/lang/String;

.field private postalCode:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private streetAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lezvcard/property/Address;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedAddress()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lezvcard/property/Address;->extendedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lezvcard/property/VCardProperty;->parameters:Lezvcard/parameter/VCardParameters;

    invoke-virtual {v0}, Lezvcard/parameter/VCardParameters;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lezvcard/property/Address;->locality:Ljava/lang/String;

    return-object v0
.end method

.method public getPoBox()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lezvcard/property/Address;->poBox:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lezvcard/property/Address;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lezvcard/property/Address;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lezvcard/property/Address;->streetAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTypes()Ljava/util/Set;
    .locals 3

    .line 217
    iget-object v0, p0, Lezvcard/property/VCardProperty;->parameters:Lezvcard/parameter/VCardParameters;

    invoke-virtual {v0}, Lezvcard/parameter/VCardParameters;->getTypes()Ljava/util/Set;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 219
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    invoke-static {v2}, Lezvcard/parameter/AddressType;->get(Ljava/lang/String;)Lezvcard/parameter/AddressType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lezvcard/property/Address;->country:Ljava/lang/String;

    return-void
.end method

.method public setExtendedAddress(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lezvcard/property/Address;->extendedAddress:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lezvcard/property/VCardProperty;->parameters:Lezvcard/parameter/VCardParameters;

    invoke-virtual {v0, p1}, Lezvcard/parameter/VCardParameters;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public setLocality(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lezvcard/property/Address;->locality:Ljava/lang/String;

    return-void
.end method

.method public setPoBox(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lezvcard/property/Address;->poBox:Ljava/lang/String;

    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lezvcard/property/Address;->postalCode:Ljava/lang/String;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lezvcard/property/Address;->region:Ljava/lang/String;

    return-void
.end method

.method public setStreetAddress(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lezvcard/property/Address;->streetAddress:Ljava/lang/String;

    return-void
.end method
