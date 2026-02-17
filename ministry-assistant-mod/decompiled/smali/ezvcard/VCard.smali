.class public Lezvcard/VCard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final properties:Lezvcard/util/ListMultimap;

.field private version:Lezvcard/VCardVersion;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-object v0, Lezvcard/VCardVersion;->V3_0:Lezvcard/VCardVersion;

    iput-object v0, p0, Lezvcard/VCard;->version:Lezvcard/VCardVersion;

    .line 113
    new-instance v0, Lezvcard/util/ListMultimap;

    invoke-direct {v0}, Lezvcard/util/ListMultimap;-><init>()V

    iput-object v0, p0, Lezvcard/VCard;->properties:Lezvcard/util/ListMultimap;

    return-void
.end method


# virtual methods
.method public addAddress(Lezvcard/property/Address;)V
    .locals 0

    .line 2281
    invoke-virtual {p0, p1}, Lezvcard/VCard;->addProperty(Lezvcard/property/VCardProperty;)V

    return-void
.end method

.method public varargs addEmail(Ljava/lang/String;[Lezvcard/parameter/EmailType;)Lezvcard/property/Email;
    .locals 3

    .line 2398
    new-instance v0, Lezvcard/property/Email;

    invoke-direct {v0, p1}, Lezvcard/property/Email;-><init>(Ljava/lang/String;)V

    .line 2399
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    .line 2400
    invoke-virtual {v0, v2}, Lezvcard/property/Email;->addType(Lezvcard/parameter/EmailType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2402
    :cond_0
    invoke-virtual {p0, v0}, Lezvcard/VCard;->addEmail(Lezvcard/property/Email;)V

    return-object v0
.end method

.method public addEmail(Lezvcard/property/Email;)V
    .locals 0

    .line 2381
    invoke-virtual {p0, p1}, Lezvcard/VCard;->addProperty(Lezvcard/property/VCardProperty;)V

    return-void
.end method

.method public addNote(Ljava/lang/String;)Lezvcard/property/Note;
    .locals 1

    .line 3405
    new-instance v0, Lezvcard/property/Note;

    invoke-direct {v0, p1}, Lezvcard/property/Note;-><init>(Ljava/lang/String;)V

    .line 3406
    invoke-virtual {p0, v0}, Lezvcard/VCard;->addNote(Lezvcard/property/Note;)V

    return-object v0
.end method

.method public addNote(Lezvcard/property/Note;)V
    .locals 0

    .line 3389
    invoke-virtual {p0, p1}, Lezvcard/VCard;->addProperty(Lezvcard/property/VCardProperty;)V

    return-void
.end method

.method public addOrphanedLabel(Lezvcard/property/Label;)V
    .locals 0

    .line 2353
    invoke-virtual {p0, p1}, Lezvcard/VCard;->addProperty(Lezvcard/property/VCardProperty;)V

    return-void
.end method

.method public addProperty(Lezvcard/property/VCardProperty;)V
    .locals 2

    .line 4501
    iget-object v0, p0, Lezvcard/VCard;->properties:Lezvcard/util/ListMultimap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lezvcard/util/ListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs addTelephoneNumber(Ljava/lang/String;[Lezvcard/parameter/TelephoneType;)Lezvcard/property/Telephone;
    .locals 3

    .line 2490
    new-instance v0, Lezvcard/property/Telephone;

    invoke-direct {v0, p1}, Lezvcard/property/Telephone;-><init>(Ljava/lang/String;)V

    .line 2491
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    .line 2492
    invoke-virtual {v0, v2}, Lezvcard/property/Telephone;->addType(Lezvcard/parameter/TelephoneType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2494
    :cond_0
    invoke-virtual {p0, v0}, Lezvcard/VCard;->addTelephoneNumber(Lezvcard/property/Telephone;)V

    return-object v0
.end method

.method public addTelephoneNumber(Lezvcard/property/Telephone;)V
    .locals 0

    .line 2471
    invoke-virtual {p0, p1}, Lezvcard/VCard;->addProperty(Lezvcard/property/VCardProperty;)V

    return-void
.end method

.method public getAddresses()Ljava/util/List;
    .locals 1

    .line 2267
    const-class v0, Lezvcard/property/Address;

    invoke-virtual {p0, v0}, Lezvcard/VCard;->getProperties(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEmails()Ljava/util/List;
    .locals 1

    .line 2367
    const-class v0, Lezvcard/property/Email;

    invoke-virtual {p0, v0}, Lezvcard/VCard;->getProperties(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Lezvcard/property/Gender;
    .locals 1

    .line 472
    const-class v0, Lezvcard/property/Gender;

    invoke-virtual {p0, v0}, Lezvcard/VCard;->getProperty(Ljava/lang/Class;)Lezvcard/property/VCardProperty;

    move-result-object v0

    check-cast v0, Lezvcard/property/Gender;

    return-object v0
.end method

.method public getGeo()Lezvcard/property/Geo;
    .locals 1

    .line 2857
    const-class v0, Lezvcard/property/Geo;

    invoke-virtual {p0, v0}, Lezvcard/VCard;->getProperty(Ljava/lang/Class;)Lezvcard/property/VCardProperty;

    move-result-object v0

    check-cast v0, Lezvcard/property/Geo;

    return-object v0
.end method

.method public getNotes()Ljava/util/List;
    .locals 1

    .line 3375
    const-class v0, Lezvcard/property/Note;

    invoke-virtual {p0, v0}, Lezvcard/VCard;->getProperties(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProperties(Ljava/lang/Class;)Ljava/util/List;
    .locals 3

    .line 4444
    iget-object v0, p0, Lezvcard/VCard;->properties:Lezvcard/util/ListMultimap;

    invoke-virtual {v0, p1}, Lezvcard/util/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4447
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4448
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lezvcard/property/VCardProperty;

    .line 4449
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getProperty(Ljava/lang/Class;)Lezvcard/property/VCardProperty;
    .locals 1

    .line 4435
    iget-object v0, p0, Lezvcard/VCard;->properties:Lezvcard/util/ListMultimap;

    invoke-virtual {v0, p1}, Lezvcard/util/ListMultimap;->first(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lezvcard/property/VCardProperty;

    return-object p1
.end method

.method public getStructuredName()Lezvcard/property/StructuredName;
    .locals 1

    .line 1019
    const-class v0, Lezvcard/property/StructuredName;

    invoke-virtual {p0, v0}, Lezvcard/VCard;->getProperty(Ljava/lang/Class;)Lezvcard/property/VCardProperty;

    move-result-object v0

    check-cast v0, Lezvcard/property/StructuredName;

    return-object v0
.end method

.method public getTelephoneNumbers()Ljava/util/List;
    .locals 1

    .line 2457
    const-class v0, Lezvcard/property/Telephone;

    invoke-virtual {p0, v0}, Lezvcard/VCard;->getProperties(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Lezvcard/VCardVersion;
    .locals 1

    .line 418
    iget-object v0, p0, Lezvcard/VCard;->version:Lezvcard/VCardVersion;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 4426
    iget-object v0, p0, Lezvcard/VCard;->properties:Lezvcard/util/ListMultimap;

    invoke-virtual {v0}, Lezvcard/util/ListMultimap;->values()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setFormattedName(Ljava/lang/String;)Lezvcard/property/FormattedName;
    .locals 1

    if-eqz p1, :cond_0

    .line 981
    new-instance v0, Lezvcard/property/FormattedName;

    invoke-direct {v0, p1}, Lezvcard/property/FormattedName;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 983
    :goto_0
    invoke-virtual {p0, v0}, Lezvcard/VCard;->setFormattedName(Lezvcard/property/FormattedName;)V

    return-object v0
.end method

.method public setFormattedName(Lezvcard/property/FormattedName;)V
    .locals 1

    .line 942
    const-class v0, Lezvcard/property/FormattedName;

    invoke-virtual {p0, v0, p1}, Lezvcard/VCard;->setProperty(Ljava/lang/Class;Lezvcard/property/VCardProperty;)V

    return-void
.end method

.method public setGeo(DD)Lezvcard/property/Geo;
    .locals 1

    .line 2970
    new-instance v0, Lezvcard/property/Geo;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lezvcard/property/Geo;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 2971
    invoke-virtual {p0, v0}, Lezvcard/VCard;->setGeo(Lezvcard/property/Geo;)V

    return-object v0
.end method

.method public setGeo(Lezvcard/property/Geo;)V
    .locals 1

    .line 2933
    const-class v0, Lezvcard/property/Geo;

    invoke-virtual {p0, v0, p1}, Lezvcard/VCard;->setProperty(Ljava/lang/Class;Lezvcard/property/VCardProperty;)V

    return-void
.end method

.method public setProperty(Ljava/lang/Class;Lezvcard/property/VCardProperty;)V
    .locals 1

    .line 4512
    iget-object v0, p0, Lezvcard/VCard;->properties:Lezvcard/util/ListMultimap;

    invoke-virtual {v0, p1, p2}, Lezvcard/util/ListMultimap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method public setStructuredName(Lezvcard/property/StructuredName;)V
    .locals 1

    .line 1074
    const-class v0, Lezvcard/property/StructuredName;

    invoke-virtual {p0, v0, p1}, Lezvcard/VCard;->setProperty(Ljava/lang/Class;Lezvcard/property/VCardProperty;)V

    return-void
.end method

.method public setVersion(Lezvcard/VCardVersion;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lezvcard/VCard;->version:Lezvcard/VCardVersion;

    return-void
.end method
