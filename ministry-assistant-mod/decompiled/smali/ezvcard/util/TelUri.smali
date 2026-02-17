.class public final Lezvcard/util/TelUri;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lezvcard/util/TelUri$Builder;
    }
.end annotation


# static fields
.field private static final hexPattern:Ljava/util/regex/Pattern;

.field private static final labelTextPattern:Ljava/util/regex/Pattern;

.field private static final uriPattern:Ljava/util/regex/Pattern;

.field private static final validParamValueChars:[Z


# instance fields
.field private final extension:Ljava/lang/String;

.field private final isdnSubaddress:Ljava/lang/String;

.field private final number:Ljava/lang/String;

.field private final parameters:Ljava/util/Map;

.field private final phoneContext:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x80

    .line 66
    new-array v0, v0, [Z

    sput-object v0, Lezvcard/util/TelUri;->validParamValueChars:[Z

    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    .line 69
    sget-object v1, Lezvcard/util/TelUri;->validParamValueChars:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 72
    sget-object v1, Lezvcard/util/TelUri;->validParamValueChars:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 75
    sget-object v1, Lezvcard/util/TelUri;->validParamValueChars:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 77
    :cond_2
    const-string v0, "!$&\'()*+-.:[]_~/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_3

    aget-char v4, v0, v3

    .line 78
    sget-object v5, Lezvcard/util/TelUri;->validParamValueChars:[Z

    aput-boolean v2, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 85
    :cond_3
    const-string v0, "(?i)%([0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lezvcard/util/TelUri;->hexPattern:Ljava/util/regex/Pattern;

    .line 90
    const-string v0, "(?i)^[-a-z0-9]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lezvcard/util/TelUri;->labelTextPattern:Ljava/util/regex/Pattern;

    .line 95
    const-string v0, "(?i)^tel:(.*?)(;(.*))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lezvcard/util/TelUri;->uriPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Lezvcard/util/TelUri$Builder;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p1}, Lezvcard/util/TelUri$Builder;->access$000(Lezvcard/util/TelUri$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lezvcard/util/TelUri;->number:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lezvcard/util/TelUri$Builder;->access$100(Lezvcard/util/TelUri$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lezvcard/util/TelUri;->extension:Ljava/lang/String;

    .line 110
    invoke-static {p1}, Lezvcard/util/TelUri$Builder;->access$200(Lezvcard/util/TelUri$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lezvcard/util/TelUri;->isdnSubaddress:Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lezvcard/util/TelUri$Builder;->access$300(Lezvcard/util/TelUri$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lezvcard/util/TelUri;->phoneContext:Ljava/lang/String;

    .line 112
    invoke-static {p1}, Lezvcard/util/TelUri$Builder;->access$400(Lezvcard/util/TelUri$Builder;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lezvcard/util/TelUri;->parameters:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lezvcard/util/TelUri$Builder;Lezvcard/util/TelUri$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lezvcard/util/TelUri;-><init>(Lezvcard/util/TelUri$Builder;)V

    return-void
.end method

.method private static decodeParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 335
    sget-object v0, Lezvcard/util/TelUri;->hexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 336
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 337
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 338
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 312
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 313
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 314
    sget-object v4, Lezvcard/util/TelUri;->validParamValueChars:[Z

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    if-eqz v0, :cond_2

    .line 316
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_1
    const/16 v4, 0x10

    .line 322
    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x25

    .line 323
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    return-object p0

    .line 326
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lezvcard/util/TelUri;
    .locals 8

    .line 122
    sget-object v0, Lezvcard/util/TelUri;->uriPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    new-instance p0, Lezvcard/util/TelUri$Builder;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lezvcard/util/TelUri$Builder;-><init>(Lezvcard/util/TelUri$1;)V

    const/4 v1, 0x1

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lezvcard/util/TelUri$Builder;->access$002(Lezvcard/util/TelUri$Builder;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x3

    .line 130
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 132
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 134
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    .line 135
    const-string v6, "="

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 136
    aget-object v6, v5, v3

    .line 137
    array-length v7, v5

    if-le v7, v1, :cond_0

    aget-object v5, v5, v1

    invoke-static {v5}, Lezvcard/util/TelUri;->decodeParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    const-string v5, ""

    .line 139
    :goto_1
    const-string v7, "ext"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 140
    invoke-static {p0, v5}, Lezvcard/util/TelUri$Builder;->access$102(Lezvcard/util/TelUri$Builder;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 144
    :cond_1
    const-string v7, "isub"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 145
    invoke-static {p0, v5}, Lezvcard/util/TelUri$Builder;->access$202(Lezvcard/util/TelUri$Builder;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 149
    :cond_2
    const-string v7, "phone-context"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 150
    invoke-static {p0, v5}, Lezvcard/util/TelUri$Builder;->access$302(Lezvcard/util/TelUri$Builder;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 154
    :cond_3
    invoke-static {p0}, Lezvcard/util/TelUri$Builder;->access$400(Lezvcard/util/TelUri$Builder;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    :cond_4
    invoke-virtual {p0}, Lezvcard/util/TelUri$Builder;->build()Lezvcard/util/TelUri;

    move-result-object p0

    return-object p0

    .line 124
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tel URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static writeParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    const/16 v0, 0x3b

    .line 246
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3d

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lezvcard/util/TelUri;->encodeParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 265
    :cond_1
    const-class v2, Lezvcard/util/TelUri;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 266
    :cond_2
    check-cast p1, Lezvcard/util/TelUri;

    .line 267
    iget-object v2, p0, Lezvcard/util/TelUri;->extension:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 268
    iget-object v2, p1, Lezvcard/util/TelUri;->extension:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 269
    :cond_3
    iget-object v3, p1, Lezvcard/util/TelUri;->extension:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 270
    :cond_4
    iget-object v2, p0, Lezvcard/util/TelUri;->isdnSubaddress:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 271
    iget-object v2, p1, Lezvcard/util/TelUri;->isdnSubaddress:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 272
    :cond_5
    iget-object v3, p1, Lezvcard/util/TelUri;->isdnSubaddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 273
    :cond_6
    iget-object v2, p0, Lezvcard/util/TelUri;->number:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 274
    iget-object v2, p1, Lezvcard/util/TelUri;->number:Ljava/lang/String;

    if-eqz v2, :cond_8

    return v1

    .line 275
    :cond_7
    iget-object v3, p1, Lezvcard/util/TelUri;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 276
    :cond_8
    iget-object v2, p0, Lezvcard/util/TelUri;->parameters:Ljava/util/Map;

    if-nez v2, :cond_9

    .line 277
    iget-object v2, p1, Lezvcard/util/TelUri;->parameters:Ljava/util/Map;

    if-eqz v2, :cond_a

    return v1

    .line 278
    :cond_9
    iget-object v3, p1, Lezvcard/util/TelUri;->parameters:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 279
    :cond_a
    iget-object v2, p0, Lezvcard/util/TelUri;->phoneContext:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 280
    iget-object p1, p1, Lezvcard/util/TelUri;->phoneContext:Ljava/lang/String;

    if-eqz p1, :cond_c

    return v1

    .line 281
    :cond_b
    iget-object p1, p1, Lezvcard/util/TelUri;->phoneContext:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v1

    :cond_c
    return v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lezvcard/util/TelUri;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lezvcard/util/TelUri;->number:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 253
    iget-object v0, p0, Lezvcard/util/TelUri;->extension:Ljava/lang/String;

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

    .line 254
    iget-object v3, p0, Lezvcard/util/TelUri;->isdnSubaddress:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 255
    iget-object v3, p0, Lezvcard/util/TelUri;->number:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 256
    iget-object v3, p0, Lezvcard/util/TelUri;->parameters:Ljava/util/Map;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 257
    iget-object v2, p0, Lezvcard/util/TelUri;->phoneContext:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lezvcard/util/TelUri;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v1, p0, Lezvcard/util/TelUri;->extension:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 221
    const-string v2, "ext"

    invoke-static {v2, v1, v0}, Lezvcard/util/TelUri;->writeParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 223
    :cond_0
    iget-object v1, p0, Lezvcard/util/TelUri;->isdnSubaddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 224
    const-string v2, "isub"

    invoke-static {v2, v1, v0}, Lezvcard/util/TelUri;->writeParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 226
    :cond_1
    iget-object v1, p0, Lezvcard/util/TelUri;->phoneContext:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 227
    const-string v2, "phone-context"

    invoke-static {v2, v1, v0}, Lezvcard/util/TelUri;->writeParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 230
    :cond_2
    iget-object v1, p0, Lezvcard/util/TelUri;->parameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 231
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 232
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 233
    invoke-static {v3, v2, v0}, Lezvcard/util/TelUri;->writeParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
