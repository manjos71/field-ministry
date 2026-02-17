.class public abstract Lezvcard/io/StreamWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected addProdId:Z

.field protected index:Lezvcard/io/scribe/ScribeIndex;

.field protected versionStrict:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lezvcard/io/scribe/ScribeIndex;

    invoke-direct {v0}, Lezvcard/io/scribe/ScribeIndex;-><init>()V

    iput-object v0, p0, Lezvcard/io/StreamWriter;->index:Lezvcard/io/scribe/ScribeIndex;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lezvcard/io/StreamWriter;->addProdId:Z

    .line 58
    iput-boolean v0, p0, Lezvcard/io/StreamWriter;->versionStrict:Z

    return-void
.end method

.method private prepare(Lezvcard/VCard;)Ljava/util/List;
    .locals 6

    .line 168
    invoke-virtual {p0}, Lezvcard/io/StreamWriter;->getTargetVersion()Lezvcard/VCardVersion;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 171
    invoke-virtual {p1}, Lezvcard/VCard;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lezvcard/property/VCardProperty;

    .line 172
    iget-boolean v4, p0, Lezvcard/io/StreamWriter;->addProdId:Z

    if-eqz v4, :cond_1

    instance-of v4, v3, Lezvcard/property/ProductId;

    if-eqz v4, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    iget-boolean v4, p0, Lezvcard/io/StreamWriter;->versionStrict:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lezvcard/property/VCardProperty;->getSupportedVersions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 183
    :cond_2
    iget-object v4, p0, Lezvcard/io/StreamWriter;->index:Lezvcard/io/scribe/ScribeIndex;

    invoke-virtual {v4, v3}, Lezvcard/io/scribe/ScribeIndex;->hasPropertyScribe(Lezvcard/property/VCardProperty;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 184
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    instance-of v4, v3, Lezvcard/property/Address;

    if-eqz v4, :cond_0

    sget-object v4, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    if-eq v0, v4, :cond_4

    sget-object v4, Lezvcard/VCardVersion;->V3_0:Lezvcard/VCardVersion;

    if-ne v0, v4, :cond_0

    .line 192
    :cond_4
    check-cast v3, Lezvcard/property/Address;

    .line 193
    invoke-virtual {v3}, Lezvcard/property/Address;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 198
    :cond_5
    new-instance v5, Lezvcard/property/Label;

    invoke-direct {v5, v4}, Lezvcard/property/Label;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v3}, Lezvcard/property/Address;->getTypes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lezvcard/parameter/AddressType;

    .line 200
    invoke-virtual {v5, v4}, Lezvcard/property/Label;->addType(Lezvcard/parameter/AddressType;)V

    goto :goto_1

    .line 202
    :cond_6
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_7
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 212
    iget-boolean p1, p0, Lezvcard/io/StreamWriter;->addProdId:Z

    if-eqz p1, :cond_9

    .line 214
    sget-object p1, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    const-string v2, "ez-vcard "

    if-ne v0, p1, :cond_8

    .line 215
    new-instance p1, Lezvcard/property/RawProperty;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lezvcard/Ezvcard;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "X-PRODID"

    invoke-direct {p1, v2, v0}, Lezvcard/property/RawProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 217
    :cond_8
    new-instance p1, Lezvcard/property/ProductId;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lezvcard/Ezvcard;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lezvcard/property/ProductId;-><init>(Ljava/lang/String;)V

    .line 219
    :goto_2
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v1

    .line 208
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No scribes were found the following property classes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected abstract _write(Lezvcard/VCard;Ljava/util/List;)V
.end method

.method protected abstract getTargetVersion()Lezvcard/VCardVersion;
.end method

.method public setAddProdId(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lezvcard/io/StreamWriter;->addProdId:Z

    return-void
.end method

.method public setScribeIndex(Lezvcard/io/scribe/ScribeIndex;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lezvcard/io/StreamWriter;->index:Lezvcard/io/scribe/ScribeIndex;

    return-void
.end method

.method public setVersionStrict(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lezvcard/io/StreamWriter;->versionStrict:Z

    return-void
.end method

.method public write(Lezvcard/VCard;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lezvcard/io/StreamWriter;->prepare(Lezvcard/VCard;)Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-virtual {p0, p1, v0}, Lezvcard/io/StreamWriter;->_write(Lezvcard/VCard;Ljava/util/List;)V

    return-void
.end method
