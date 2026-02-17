.class public Lezvcard/io/text/VCardRawLine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final group:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final parameters:Lezvcard/parameter/VCardParameters;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lezvcard/parameter/VCardParameters;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lezvcard/io/text/VCardRawLine;->group:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lezvcard/io/text/VCardRawLine;->name:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lezvcard/io/text/VCardRawLine;->value:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lezvcard/io/text/VCardRawLine;->parameters:Lezvcard/parameter/VCardParameters;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 106
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 108
    :cond_2
    check-cast p1, Lezvcard/io/text/VCardRawLine;

    .line 109
    iget-object v2, p0, Lezvcard/io/text/VCardRawLine;->group:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 110
    iget-object v2, p1, Lezvcard/io/text/VCardRawLine;->group:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 112
    :cond_3
    iget-object v3, p1, Lezvcard/io/text/VCardRawLine;->group:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 114
    :cond_4
    iget-object v2, p0, Lezvcard/io/text/VCardRawLine;->name:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 115
    iget-object v2, p1, Lezvcard/io/text/VCardRawLine;->name:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 117
    :cond_5
    iget-object v3, p1, Lezvcard/io/text/VCardRawLine;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 119
    :cond_6
    iget-object v2, p0, Lezvcard/io/text/VCardRawLine;->parameters:Lezvcard/parameter/VCardParameters;

    if-nez v2, :cond_7

    .line 120
    iget-object v2, p1, Lezvcard/io/text/VCardRawLine;->parameters:Lezvcard/parameter/VCardParameters;

    if-eqz v2, :cond_8

    return v1

    .line 122
    :cond_7
    iget-object v3, p1, Lezvcard/io/text/VCardRawLine;->parameters:Lezvcard/parameter/VCardParameters;

    invoke-virtual {v2, v3}, Lezvcard/util/ListMultimap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 124
    :cond_8
    iget-object v2, p0, Lezvcard/io/text/VCardRawLine;->value:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 125
    iget-object p1, p1, Lezvcard/io/text/VCardRawLine;->value:Ljava/lang/String;

    if-eqz p1, :cond_a

    return v1

    .line 127
    :cond_9
    iget-object p1, p1, Lezvcard/io/text/VCardRawLine;->value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lezvcard/io/text/VCardRawLine;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lezvcard/io/text/VCardRawLine;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Lezvcard/parameter/VCardParameters;
    .locals 1

    .line 86
    iget-object v0, p0, Lezvcard/io/text/VCardRawLine;->parameters:Lezvcard/parameter/VCardParameters;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lezvcard/io/text/VCardRawLine;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 93
    iget-object v0, p0, Lezvcard/io/text/VCardRawLine;->group:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget-object v3, p0, Lezvcard/io/text/VCardRawLine;->name:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-object v3, p0, Lezvcard/io/text/VCardRawLine;->parameters:Lezvcard/parameter/VCardParameters;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lezvcard/util/ListMultimap;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 96
    iget-object v2, p0, Lezvcard/io/text/VCardRawLine;->value:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method
