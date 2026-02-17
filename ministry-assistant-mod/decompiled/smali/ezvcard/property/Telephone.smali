.class public Lezvcard/property/Telephone;
.super Lezvcard/property/VCardProperty;
.source "SourceFile"


# instance fields
.field private text:Ljava/lang/String;

.field private uri:Lezvcard/util/TelUri;


# direct methods
.method public constructor <init>(Lezvcard/util/TelUri;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 93
    invoke-virtual {p0, p1}, Lezvcard/property/Telephone;->setUri(Lezvcard/util/TelUri;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Lezvcard/property/Telephone;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addType(Lezvcard/parameter/TelephoneType;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lezvcard/property/VCardProperty;->parameters:Lezvcard/parameter/VCardParameters;

    invoke-virtual {p1}, Lezvcard/parameter/VCardParameter;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lezvcard/parameter/VCardParameters;->addType(Ljava/lang/String;)V

    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lezvcard/property/Telephone;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTypes()Ljava/util/Set;
    .locals 3

    .line 141
    iget-object v0, p0, Lezvcard/property/VCardProperty;->parameters:Lezvcard/parameter/VCardParameters;

    invoke-virtual {v0}, Lezvcard/parameter/VCardParameters;->getTypes()Ljava/util/Set;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 143
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 144
    invoke-static {v2}, Lezvcard/parameter/TelephoneType;->get(Ljava/lang/String;)Lezvcard/parameter/TelephoneType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getUri()Lezvcard/util/TelUri;
    .locals 1

    .line 121
    iget-object v0, p0, Lezvcard/property/Telephone;->uri:Lezvcard/util/TelUri;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lezvcard/property/Telephone;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lezvcard/property/Telephone;->uri:Lezvcard/util/TelUri;

    return-void
.end method

.method public setUri(Lezvcard/util/TelUri;)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lezvcard/property/Telephone;->text:Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lezvcard/property/Telephone;->uri:Lezvcard/util/TelUri;

    return-void
.end method
