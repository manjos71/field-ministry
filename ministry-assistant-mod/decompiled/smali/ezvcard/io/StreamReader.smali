.class public abstract Lezvcard/io/StreamReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected index:Lezvcard/io/scribe/ScribeIndex;

.field protected final warnings:Lezvcard/io/ParseWarnings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lezvcard/io/ParseWarnings;

    invoke-direct {v0}, Lezvcard/io/ParseWarnings;-><init>()V

    iput-object v0, p0, Lezvcard/io/StreamReader;->warnings:Lezvcard/io/ParseWarnings;

    .line 52
    new-instance v0, Lezvcard/io/scribe/ScribeIndex;

    invoke-direct {v0}, Lezvcard/io/scribe/ScribeIndex;-><init>()V

    iput-object v0, p0, Lezvcard/io/StreamReader;->index:Lezvcard/io/scribe/ScribeIndex;

    return-void
.end method


# virtual methods
.method protected abstract _readNext()Lezvcard/VCard;
.end method

.method protected assignLabels(Lezvcard/VCard;Ljava/util/List;)V
    .locals 6

    .line 93
    invoke-virtual {p1}, Lezvcard/VCard;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lezvcard/property/Label;

    .line 96
    invoke-virtual {v1}, Lezvcard/property/Label;->getTypes()Ljava/util/Set;

    move-result-object v2

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lezvcard/property/Address;

    .line 98
    invoke-virtual {v4}, Lezvcard/property/Address;->getLabel()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v4}, Lezvcard/property/Address;->getTypes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    invoke-virtual {v1}, Lezvcard/property/SimpleProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lezvcard/property/Address;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p1, v1}, Lezvcard/VCard;->addOrphanedLabel(Lezvcard/property/Label;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getWarnings()Ljava/util/List;
    .locals 1

    .line 150
    iget-object v0, p0, Lezvcard/io/StreamReader;->warnings:Lezvcard/io/ParseWarnings;

    invoke-virtual {v0}, Lezvcard/io/ParseWarnings;->copy()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readNext()Lezvcard/VCard;
    .locals 1

    .line 74
    iget-object v0, p0, Lezvcard/io/StreamReader;->warnings:Lezvcard/io/ParseWarnings;

    invoke-virtual {v0}, Lezvcard/io/ParseWarnings;->clear()V

    .line 75
    invoke-virtual {p0}, Lezvcard/io/StreamReader;->_readNext()Lezvcard/VCard;

    move-result-object v0

    return-object v0
.end method

.method public setScribeIndex(Lezvcard/io/scribe/ScribeIndex;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lezvcard/io/StreamReader;->index:Lezvcard/io/scribe/ScribeIndex;

    return-void
.end method
