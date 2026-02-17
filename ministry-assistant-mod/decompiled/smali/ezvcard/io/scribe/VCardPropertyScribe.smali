.class public abstract Lezvcard/io/scribe/VCardPropertyScribe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lezvcard/io/scribe/VCardPropertyScribe$Result;,
        Lezvcard/io/scribe/VCardPropertyScribe$DateWriter;,
        Lezvcard/io/scribe/VCardPropertyScribe$SemiStructuredIterator;,
        Lezvcard/io/scribe/VCardPropertyScribe$StructuredIterator;,
        Lezvcard/io/scribe/VCardPropertyScribe$Splitter;
    }
.end annotation


# instance fields
.field protected final clazz:Ljava/lang/Class;

.field protected final propertyName:Ljava/lang/String;

.field protected final qname:Ljavax/xml/namespace/QName;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    .line 77
    new-instance v0, Ljavax/xml/namespace/QName;

    sget-object v1, Lezvcard/VCardVersion;->V4_0:Lezvcard/VCardVersion;

    invoke-virtual {v1}, Lezvcard/VCardVersion;->getXmlNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lezvcard/io/scribe/VCardPropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljavax/xml/namespace/QName;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lezvcard/io/scribe/VCardPropertyScribe;->clazz:Ljava/lang/Class;

    .line 90
    iput-object p2, p0, Lezvcard/io/scribe/VCardPropertyScribe;->propertyName:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lezvcard/io/scribe/VCardPropertyScribe;->qname:Ljavax/xml/namespace/QName;

    return-void
.end method

.method protected static date(Ljava/util/Date;)Lezvcard/io/scribe/VCardPropertyScribe$DateWriter;
    .locals 1

    .line 1006
    new-instance v0, Lezvcard/io/scribe/VCardPropertyScribe$DateWriter;

    invoke-direct {v0, p0}, Lezvcard/io/scribe/VCardPropertyScribe$DateWriter;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method protected static date(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 997
    invoke-static {p0}, Lezvcard/util/VCardDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 653
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 654
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 655
    const-string v4, "\\,;"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    if-nez v0, :cond_1

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 658
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v4, 0x5c

    .line 660
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v0, :cond_3

    .line 664
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    return-object p0

    .line 667
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static handlePrefParam(Lezvcard/property/VCardProperty;Lezvcard/parameter/VCardParameters;Lezvcard/VCardVersion;Lezvcard/VCard;)V
    .locals 4

    .line 1118
    sget-object v0, Lezvcard/io/scribe/VCardPropertyScribe$3;->$SwitchMap$ezvcard$VCardVersion:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const-string v0, "pref"

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    goto :goto_1

    .line 1142
    :cond_0
    invoke-virtual {p0}, Lezvcard/property/VCardProperty;->getParameters()Lezvcard/parameter/VCardParameters;

    move-result-object p0

    invoke-virtual {p0}, Lezvcard/parameter/VCardParameters;->getTypes()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1143
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1144
    invoke-virtual {p1, p2}, Lezvcard/parameter/VCardParameters;->removeType(Ljava/lang/String;)V

    .line 1145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lezvcard/parameter/VCardParameters;->setPref(Ljava/lang/Integer;)V

    return-void

    :cond_2
    const/4 p2, 0x0

    .line 1121
    invoke-virtual {p1, p2}, Lezvcard/parameter/VCardParameters;->setPref(Ljava/lang/Integer;)V

    .line 1125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3, v1}, Lezvcard/VCard;->getProperties(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lezvcard/property/VCardProperty;

    .line 1126
    invoke-virtual {v1}, Lezvcard/property/VCardProperty;->getParameters()Lezvcard/parameter/VCardParameters;

    move-result-object v2

    invoke-virtual {v2}, Lezvcard/parameter/VCardParameters;->getPref()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 1131
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Lezvcard/property/VCardProperty;->getParameters()Lezvcard/parameter/VCardParameters;

    move-result-object v3

    invoke-virtual {v3}, Lezvcard/parameter/VCardParameters;->getPref()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_3

    :cond_5
    move-object p2, v1

    goto :goto_0

    :cond_6
    if-ne p0, p2, :cond_7

    .line 1137
    invoke-virtual {p1, v0}, Lezvcard/parameter/VCardParameters;->addType(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method protected static list(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2

    .line 814
    new-instance v0, Lezvcard/io/scribe/VCardPropertyScribe$1;

    invoke-direct {v0}, Lezvcard/io/scribe/VCardPropertyScribe$1;-><init>()V

    const-string v1, ","

    invoke-static {p0, v1, v0}, Lezvcard/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;Lezvcard/util/StringUtils$JoinCallback;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static list(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 787
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 788
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_0
    const/16 v0, 0x2c

    .line 790
    invoke-static {v0}, Lezvcard/io/scribe/VCardPropertyScribe;->splitter(C)Lezvcard/io/scribe/VCardPropertyScribe$Splitter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->unescape(Z)Lezvcard/io/scribe/VCardPropertyScribe$Splitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected static semistructured(Ljava/lang/String;)Lezvcard/io/scribe/VCardPropertyScribe$SemiStructuredIterator;
    .locals 1

    const/4 v0, -0x1

    .line 832
    invoke-static {p0, v0}, Lezvcard/io/scribe/VCardPropertyScribe;->semistructured(Ljava/lang/String;I)Lezvcard/io/scribe/VCardPropertyScribe$SemiStructuredIterator;

    move-result-object p0

    return-object p0
.end method

.method protected static semistructured(Ljava/lang/String;I)Lezvcard/io/scribe/VCardPropertyScribe$SemiStructuredIterator;
    .locals 2

    const/16 v0, 0x3b

    .line 845
    invoke-static {v0}, Lezvcard/io/scribe/VCardPropertyScribe;->splitter(C)Lezvcard/io/scribe/VCardPropertyScribe$Splitter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->unescape(Z)Lezvcard/io/scribe/VCardPropertyScribe$Splitter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->limit(I)Lezvcard/io/scribe/VCardPropertyScribe$Splitter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 846
    new-instance p1, Lezvcard/io/scribe/VCardPropertyScribe$SemiStructuredIterator;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {p1, p0}, Lezvcard/io/scribe/VCardPropertyScribe$SemiStructuredIterator;-><init>(Ljava/util/Iterator;)V

    return-object p1
.end method

.method protected static splitter(C)Lezvcard/io/scribe/VCardPropertyScribe$Splitter;
    .locals 1

    .line 676
    new-instance v0, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;

    invoke-direct {v0, p0}, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;-><init>(C)V

    return-object v0
.end method

.method protected static structured(Ljava/lang/String;)Lezvcard/io/scribe/VCardPropertyScribe$StructuredIterator;
    .locals 2

    const/16 v0, 0x3b

    .line 857
    invoke-static {v0}, Lezvcard/io/scribe/VCardPropertyScribe;->splitter(C)Lezvcard/io/scribe/VCardPropertyScribe$Splitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 859
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 860
    invoke-static {v1}, Lezvcard/io/scribe/VCardPropertyScribe;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 862
    :cond_0
    new-instance p0, Lezvcard/io/scribe/VCardPropertyScribe$StructuredIterator;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lezvcard/io/scribe/VCardPropertyScribe$StructuredIterator;-><init>(Ljava/util/Iterator;)V

    return-object p0
.end method

.method protected static varargs structured([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 890
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lezvcard/io/scribe/VCardPropertyScribe$2;

    invoke-direct {v0}, Lezvcard/io/scribe/VCardPropertyScribe$2;-><init>()V

    const-string v1, ";"

    invoke-static {p0, v1, v0}, Lezvcard/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;Lezvcard/util/StringUtils$JoinCallback;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 596
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 597
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v3, :cond_4

    if-nez v0, :cond_1

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    add-int/lit8 v3, v2, -0x1

    .line 602
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v3, 0x6e

    if-eq v4, v3, :cond_3

    const/16 v3, 0x4e

    if-ne v4, v3, :cond_2

    goto :goto_1

    .line 613
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 609
    :cond_3
    :goto_1
    sget-object v3, Lezvcard/util/StringUtils;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 623
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    if-nez v0, :cond_8

    return-object p0

    .line 626
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected _dataType(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Lezvcard/VCardDataType;
    .locals 0

    .line 329
    invoke-virtual {p0, p2}, Lezvcard/io/scribe/VCardPropertyScribe;->_defaultDataType(Lezvcard/VCardVersion;)Lezvcard/VCardDataType;

    move-result-object p1

    return-object p1
.end method

.method protected abstract _defaultDataType(Lezvcard/VCardVersion;)Lezvcard/VCardDataType;
.end method

.method protected abstract _parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/VCardProperty;
.end method

.method protected _prepareParameters(Lezvcard/property/VCardProperty;Lezvcard/parameter/VCardParameters;Lezvcard/VCardVersion;Lezvcard/VCard;)V
    .locals 0

    return-void
.end method

.method protected abstract _writeText(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Ljava/lang/String;
.end method

.method public final dataType(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Lezvcard/VCardDataType;
    .locals 0

    .line 162
    invoke-virtual {p0, p1, p2}, Lezvcard/io/scribe/VCardPropertyScribe;->_dataType(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Lezvcard/VCardDataType;

    move-result-object p1

    return-object p1
.end method

.method public final defaultDataType(Lezvcard/VCardVersion;)Lezvcard/VCardDataType;
    .locals 0

    .line 152
    invoke-virtual {p0, p1}, Lezvcard/io/scribe/VCardPropertyScribe;->_defaultDataType(Lezvcard/VCardVersion;)Lezvcard/VCardDataType;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyClass()Ljava/lang/Class;
    .locals 1

    .line 99
    iget-object v0, p0, Lezvcard/io/scribe/VCardPropertyScribe;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lezvcard/io/scribe/VCardPropertyScribe;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getQName()Ljavax/xml/namespace/QName;
    .locals 1

    .line 115
    iget-object v0, p0, Lezvcard/io/scribe/VCardPropertyScribe;->qname:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public final parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;)Lezvcard/io/scribe/VCardPropertyScribe$Result;
    .locals 6

    .line 220
    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 221
    invoke-virtual/range {v0 .. v5}, Lezvcard/io/scribe/VCardPropertyScribe;->_parseText(Ljava/lang/String;Lezvcard/VCardDataType;Lezvcard/VCardVersion;Lezvcard/parameter/VCardParameters;Ljava/util/List;)Lezvcard/property/VCardProperty;

    move-result-object p1

    .line 222
    invoke-virtual {p1, v4}, Lezvcard/property/VCardProperty;->setParameters(Lezvcard/parameter/VCardParameters;)V

    .line 223
    new-instance p2, Lezvcard/io/scribe/VCardPropertyScribe$Result;

    invoke-direct {p2, p1, v5}, Lezvcard/io/scribe/VCardPropertyScribe$Result;-><init>(Lezvcard/property/VCardProperty;Ljava/util/List;)V

    return-object p2
.end method

.method public final prepareParameters(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;Lezvcard/VCard;)Lezvcard/parameter/VCardParameters;
    .locals 2

    .line 129
    new-instance v0, Lezvcard/parameter/VCardParameters;

    invoke-virtual {p1}, Lezvcard/property/VCardProperty;->getParameters()Lezvcard/parameter/VCardParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lezvcard/parameter/VCardParameters;-><init>(Lezvcard/parameter/VCardParameters;)V

    .line 130
    invoke-virtual {p0, p1, v0, p2, p3}, Lezvcard/io/scribe/VCardPropertyScribe;->_prepareParameters(Lezvcard/property/VCardProperty;Lezvcard/parameter/VCardParameters;Lezvcard/VCardVersion;Lezvcard/VCard;)V

    return-object v0
.end method

.method public final writeText(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Ljava/lang/String;
    .locals 0

    .line 174
    invoke-virtual {p0, p1, p2}, Lezvcard/io/scribe/VCardPropertyScribe;->_writeText(Lezvcard/property/VCardProperty;Lezvcard/VCardVersion;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
