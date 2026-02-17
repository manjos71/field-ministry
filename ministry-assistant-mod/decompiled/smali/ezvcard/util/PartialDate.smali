.class public final Lezvcard/util/PartialDate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lezvcard/util/PartialDate$Builder;,
        Lezvcard/util/PartialDate$Format;
    }
.end annotation


# static fields
.field private static final dateFormats:[Lezvcard/util/PartialDate$Format;

.field private static final timeFormats:[Lezvcard/util/PartialDate$Format;


# instance fields
.field private final components:[Ljava/lang/Integer;

.field private final offset:Lezvcard/util/UtcOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 75
    new-instance v0, Lezvcard/util/PartialDate$Format;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Integer;

    aput-object v2, v4, v1

    const-string v5, "(\\d{4})"

    invoke-direct {v0, v5, v4}, Lezvcard/util/PartialDate$Format;-><init>(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-instance v4, Lezvcard/util/PartialDate$Format;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Integer;

    aput-object v2, v7, v1

    aput-object v5, v7, v3

    const-string v8, "(\\d{4})-(\\d{2})"

    invoke-direct {v4, v8, v7}, Lezvcard/util/PartialDate$Format;-><init>(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-instance v7, Lezvcard/util/PartialDate$Format;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Integer;

    aput-object v2, v10, v1

    aput-object v5, v10, v3

    aput-object v8, v10, v6

    const-string v2, "(\\d{4})-?(\\d{2})-?(\\d{2})"

    invoke-direct {v7, v2, v10}, Lezvcard/util/PartialDate$Format;-><init>(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-instance v2, Lezvcard/util/PartialDate$Format;

    new-array v10, v6, [Ljava/lang/Integer;

    aput-object v5, v10, v1

    aput-object v8, v10, v3

    const-string v11, "--(\\d{2})-?(\\d{2})"

    invoke-direct {v2, v11, v10}, Lezvcard/util/PartialDate$Format;-><init>(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-instance v10, Lezvcard/util/PartialDate$Format;

    new-array v11, v3, [Ljava/lang/Integer;

    aput-object v5, v11, v1

    const-string v5, "--(\\d{2})"

    invoke-direct {v10, v5, v11}, Lezvcard/util/PartialDate$Format;-><init>(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-instance v5, Lezvcard/util/PartialDate$Format;

    new-array v11, v3, [Ljava/lang/Integer;

    aput-object v8, v11, v1

    const-string v8, "---(\\d{2})"

    invoke-direct {v5, v8, v11}, Lezvcard/util/PartialDate$Format;-><init>(Ljava/lang/String;[Ljava/lang/Integer;)V

    const/4 v8, 0x6

    new-array v11, v8, [Lezvcard/util/PartialDate$Format;

    aput-object v0, v11, v1

    aput-object v4, v11, v3

    aput-object v7, v11, v6

    aput-object v2, v11, v9

    const/4 v0, 0x4

    aput-object v10, v11, v0

    const/4 v2, 0x5

    aput-object v5, v11, v2

    sput-object v11, Lezvcard/util/PartialDate;->dateFormats:[Lezvcard/util/PartialDate$Format;

    .line 88
    new-instance v4, Lezvcard/util/PartialDate$Format;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v11, v0, [Ljava/lang/Integer;

    aput-object v5, v11, v1

    const/4 v12, 0x0

    aput-object v12, v11, v3

    aput-object v7, v11, v6

    aput-object v10, v11, v9

    const-string v13, "(\\d{2})(([-+]\\d{1,2}):?(\\d{2})?)?"

    invoke-direct {v4, v13, v11}, Lezvcard/util/PartialDate$Format;-><init>(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-instance v11, Lezvcard/util/PartialDate$Format;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v14, v2, [Ljava/lang/Integer;

    aput-object v5, v14, v1

    aput-object v13, v14, v3

    aput-object v12, v14, v6

    aput-object v7, v14, v9

    aput-object v10, v14, v0

    const-string v15, "(\\d{2}):?(\\d{2})(([-+]\\d{1,2}):?(\\d{2})?)?"

    invoke-direct {v11, v15, v14}, Lezvcard/util/PartialDate$Format;-><init>(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-instance v14, Lezvcard/util/PartialDate$Format;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    new-array v1, v8, [Ljava/lang/Integer;

    aput-object v5, v1, v16

    aput-object v13, v1, v3

    aput-object v15, v1, v6

    aput-object v12, v1, v9

    aput-object v7, v1, v0

    aput-object v10, v1, v2

    const-string v5, "(\\d{2}):?(\\d{2}):?(\\d{2})(([-+]\\d{1,2}):?(\\d{2})?)?"

    invoke-direct {v14, v5, v1}, Lezvcard/util/PartialDate$Format;-><init>(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-instance v1, Lezvcard/util/PartialDate$Format;

    new-array v5, v2, [Ljava/lang/Integer;

    aput-object v13, v5, v16

    aput-object v15, v5, v3

    aput-object v12, v5, v6

    aput-object v7, v5, v9

    aput-object v10, v5, v0

    const/16 v17, 0x5

    const-string v2, "-(\\d{2}):?(\\d{2})(([-+]\\d{1,2}):?(\\d{2})?)?"

    invoke-direct {v1, v2, v5}, Lezvcard/util/PartialDate$Format;-><init>(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-instance v2, Lezvcard/util/PartialDate$Format;

    new-array v5, v0, [Ljava/lang/Integer;

    aput-object v13, v5, v16

    aput-object v12, v5, v3

    aput-object v7, v5, v6

    aput-object v10, v5, v9

    const-string v13, "-(\\d{2})(([-+]\\d{1,2}):?(\\d{2})?)?"

    invoke-direct {v2, v13, v5}, Lezvcard/util/PartialDate$Format;-><init>(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-instance v5, Lezvcard/util/PartialDate$Format;

    new-array v13, v0, [Ljava/lang/Integer;

    aput-object v15, v13, v16

    aput-object v12, v13, v3

    aput-object v7, v13, v6

    aput-object v10, v13, v9

    const-string v7, "--(\\d{2})(([-+]\\d{1,2}):?(\\d{2})?)?"

    invoke-direct {v5, v7, v13}, Lezvcard/util/PartialDate$Format;-><init>(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v7, v8, [Lezvcard/util/PartialDate$Format;

    aput-object v4, v7, v16

    aput-object v11, v7, v3

    aput-object v14, v7, v6

    aput-object v1, v7, v9

    aput-object v2, v7, v0

    aput-object v5, v7, v17

    sput-object v7, Lezvcard/util/PartialDate;->timeFormats:[Lezvcard/util/PartialDate$Format;

    return-void
.end method

.method private constructor <init>([Ljava/lang/Integer;Lezvcard/util/UtcOffset;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lezvcard/util/PartialDate;->components:[Ljava/lang/Integer;

    .line 107
    iput-object p2, p0, Lezvcard/util/PartialDate;->offset:Lezvcard/util/UtcOffset;

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/Integer;Lezvcard/util/UtcOffset;Lezvcard/util/PartialDate$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lezvcard/util/PartialDate;-><init>([Ljava/lang/Integer;Lezvcard/util/UtcOffset;)V

    return-void
.end method

.method private hasDate()Z
    .locals 1

    .line 214
    invoke-virtual {p0}, Lezvcard/util/PartialDate;->getDate()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasHour()Z
    .locals 1

    .line 230
    invoke-virtual {p0}, Lezvcard/util/PartialDate;->getHour()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasMinute()Z
    .locals 1

    .line 246
    invoke-virtual {p0}, Lezvcard/util/PartialDate;->getMinute()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasMonth()Z
    .locals 1

    .line 198
    invoke-virtual {p0}, Lezvcard/util/PartialDate;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasSecond()Z
    .locals 1

    .line 262
    invoke-virtual {p0}, Lezvcard/util/PartialDate;->getSecond()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasUtcOffset()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lezvcard/util/PartialDate;->offset:Lezvcard/util/UtcOffset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasYear()Z
    .locals 1

    .line 182
    invoke-virtual {p0}, Lezvcard/util/PartialDate;->getYear()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static parse(Ljava/lang/String;)Lezvcard/util/PartialDate;
    .locals 5

    .line 132
    new-instance v0, Lezvcard/util/PartialDate$Builder;

    invoke-direct {v0}, Lezvcard/util/PartialDate$Builder;-><init>()V

    .line 133
    const-string v1, "T"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 135
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 137
    invoke-static {p0, v0}, Lezvcard/util/PartialDate;->parseDate(Ljava/lang/String;Lezvcard/util/PartialDate$Builder;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lezvcard/util/PartialDate;->parseTime(Ljava/lang/String;Lezvcard/util/PartialDate$Builder;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 138
    :cond_1
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 140
    aget-object v1, v1, v4

    invoke-static {v1, v0}, Lezvcard/util/PartialDate;->parseTime(Ljava/lang/String;Lezvcard/util/PartialDate$Builder;)Z

    move-result v3

    goto :goto_1

    .line 143
    :cond_2
    aget-object v2, v1, v3

    invoke-static {v2, v0}, Lezvcard/util/PartialDate;->parseDate(Ljava/lang/String;Lezvcard/util/PartialDate$Builder;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v1, v1, v4

    invoke-static {v1, v0}, Lezvcard/util/PartialDate;->parseTime(Ljava/lang/String;Lezvcard/util/PartialDate$Builder;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 149
    invoke-virtual {v0}, Lezvcard/util/PartialDate$Builder;->build()Lezvcard/util/PartialDate;

    move-result-object p0

    return-object p0

    .line 147
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseDate(Ljava/lang/String;Lezvcard/util/PartialDate$Builder;)Z
    .locals 1

    .line 153
    sget-object v0, Lezvcard/util/PartialDate;->dateFormats:[Lezvcard/util/PartialDate$Format;

    invoke-static {p0, p1, v0}, Lezvcard/util/PartialDate;->parseFormats(Ljava/lang/String;Lezvcard/util/PartialDate$Builder;[Lezvcard/util/PartialDate$Format;)Z

    move-result p0

    return p0
.end method

.method private static parseFormats(Ljava/lang/String;Lezvcard/util/PartialDate$Builder;[Lezvcard/util/PartialDate$Format;)Z
    .locals 4

    .line 161
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 162
    invoke-virtual {v3, p1, p0}, Lezvcard/util/PartialDate$Format;->parse(Lezvcard/util/PartialDate$Builder;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static parseTime(Ljava/lang/String;Lezvcard/util/PartialDate$Builder;)Z
    .locals 1

    .line 157
    sget-object v0, Lezvcard/util/PartialDate;->timeFormats:[Lezvcard/util/PartialDate$Format;

    invoke-static {p0, p1, v0}, Lezvcard/util/PartialDate;->parseFormats(Ljava/lang/String;Lezvcard/util/PartialDate$Builder;[Lezvcard/util/PartialDate$Format;)Z

    move-result p0

    return p0
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

    .line 376
    :cond_1
    const-class v2, Lezvcard/util/PartialDate;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 377
    :cond_2
    check-cast p1, Lezvcard/util/PartialDate;

    .line 378
    iget-object v2, p0, Lezvcard/util/PartialDate;->components:[Ljava/lang/Integer;

    iget-object v3, p1, Lezvcard/util/PartialDate;->components:[Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 379
    :cond_3
    iget-object v2, p0, Lezvcard/util/PartialDate;->offset:Lezvcard/util/UtcOffset;

    if-nez v2, :cond_4

    .line 380
    iget-object p1, p1, Lezvcard/util/PartialDate;->offset:Lezvcard/util/UtcOffset;

    if-eqz p1, :cond_5

    return v1

    .line 381
    :cond_4
    iget-object p1, p1, Lezvcard/util/PartialDate;->offset:Lezvcard/util/UtcOffset;

    invoke-virtual {v2, p1}, Lezvcard/util/UtcOffset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getDate()Ljava/lang/Integer;
    .locals 2

    .line 206
    iget-object v0, p0, Lezvcard/util/PartialDate;->components:[Ljava/lang/Integer;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getHour()Ljava/lang/Integer;
    .locals 2

    .line 222
    iget-object v0, p0, Lezvcard/util/PartialDate;->components:[Ljava/lang/Integer;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMinute()Ljava/lang/Integer;
    .locals 2

    .line 238
    iget-object v0, p0, Lezvcard/util/PartialDate;->components:[Ljava/lang/Integer;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMonth()Ljava/lang/Integer;
    .locals 2

    .line 190
    iget-object v0, p0, Lezvcard/util/PartialDate;->components:[Ljava/lang/Integer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSecond()Ljava/lang/Integer;
    .locals 2

    .line 254
    iget-object v0, p0, Lezvcard/util/PartialDate;->components:[Ljava/lang/Integer;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getYear()Ljava/lang/Integer;
    .locals 2

    .line 174
    iget-object v0, p0, Lezvcard/util/PartialDate;->components:[Ljava/lang/Integer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hasTimeComponent()Z
    .locals 1

    .line 294
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasHour()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMinute()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasSecond()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 367
    iget-object v0, p0, Lezvcard/util/PartialDate;->components:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 368
    iget-object v1, p0, Lezvcard/util/PartialDate;->offset:Lezvcard/util/UtcOffset;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lezvcard/util/UtcOffset;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toISO8601(Z)Ljava/lang/String;
    .locals 11

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasYear()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lezvcard/util/PartialDate;->getYear()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 311
    :goto_0
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMonth()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lezvcard/util/PartialDate;->getMonth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 312
    :goto_1
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasDate()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lezvcard/util/PartialDate;->getDate()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v3

    .line 314
    :goto_2
    const-string v6, ""

    const-string v7, "-"

    if-eqz p1, :cond_3

    move-object v8, v7

    goto :goto_3

    :cond_3
    move-object v8, v6

    .line 315
    :goto_3
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasYear()Z

    move-result v9

    const-string v10, "--"

    if-eqz v9, :cond_4

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMonth()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasDate()Z

    move-result v9

    if-nez v9, :cond_4

    .line 316
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 317
    :cond_4
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasYear()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMonth()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasDate()Z

    move-result v9

    if-nez v9, :cond_5

    .line 318
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 319
    :cond_5
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasYear()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMonth()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasDate()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 320
    const-string v2, "---"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 321
    :cond_6
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasYear()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMonth()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasDate()Z

    move-result v9

    if-nez v9, :cond_7

    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 323
    :cond_7
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasYear()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMonth()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasDate()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 324
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 325
    :cond_8
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasYear()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMonth()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasDate()Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_4

    .line 326
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid date component combination: year, date"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 327
    :cond_a
    :goto_4
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasYear()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMonth()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasDate()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lezvcard/util/PartialDate;->hasTimeComponent()Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x54

    .line 332
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasHour()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lezvcard/util/PartialDate;->getHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_c
    move-object v2, v3

    .line 335
    :goto_6
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMinute()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lezvcard/util/PartialDate;->getMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_d
    move-object v4, v3

    .line 336
    :goto_7
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasSecond()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Lezvcard/util/PartialDate;->getSecond()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_e
    if-eqz p1, :cond_f

    .line 338
    const-string v6, ":"

    .line 339
    :cond_f
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasHour()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMinute()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasSecond()Z

    move-result v1

    if-nez v1, :cond_10

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 341
    :cond_10
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasHour()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMinute()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasSecond()Z

    move-result v1

    if-nez v1, :cond_11

    .line 342
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 343
    :cond_11
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasHour()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMinute()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasSecond()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 344
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 345
    :cond_12
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasHour()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMinute()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasSecond()Z

    move-result v1

    if-nez v1, :cond_13

    .line 346
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 347
    :cond_13
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasHour()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMinute()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasSecond()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 348
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 349
    :cond_14
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasHour()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMinute()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasSecond()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_8

    .line 350
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid time component combination: hour, second"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 351
    :cond_16
    :goto_8
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasHour()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasMinute()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasSecond()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 352
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_17
    :goto_9
    invoke-direct {p0}, Lezvcard/util/PartialDate;->hasUtcOffset()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 356
    iget-object v1, p0, Lezvcard/util/PartialDate;->offset:Lezvcard/util/UtcOffset;

    invoke-virtual {v1, p1}, Lezvcard/util/UtcOffset;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 387
    invoke-virtual {p0, v0}, Lezvcard/util/PartialDate;->toISO8601(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
