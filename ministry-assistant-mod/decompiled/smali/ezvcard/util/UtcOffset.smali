.class public final Lezvcard/util/UtcOffset;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final millis:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Lezvcard/util/UtcOffset;->millis:J

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 49
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 50
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    int-to-long v0, p1

    int-to-long p1, p2

    .line 52
    invoke-static {p1, p2}, Lezvcard/util/UtcOffset;->hoursToMillis(J)J

    move-result-wide p1

    int-to-long v2, p3

    invoke-static {v2, v3}, Lezvcard/util/UtcOffset;->minutesToMillis(J)J

    move-result-wide v2

    add-long/2addr p1, v2

    mul-long v0, v0, p1

    iput-wide v0, p0, Lezvcard/util/UtcOffset;->millis:J

    return-void
.end method

.method private static hoursToMillis(J)J
    .locals 2

    const-wide/32 v0, 0x36ee80

    mul-long p0, p0, v0

    return-wide p0
.end method

.method private static millisToHours(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 175
    div-long/2addr p0, v0

    const-wide/16 v0, 0x3c

    div-long/2addr p0, v0

    div-long/2addr p0, v0

    return-wide p0
.end method

.method private static millisToMinutes(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 179
    div-long/2addr p0, v0

    const-wide/16 v0, 0x3c

    div-long/2addr p0, v0

    rem-long/2addr p0, v0

    return-wide p0
.end method

.method private static minutesToMillis(J)J
    .locals 2

    const-wide/32 v0, 0xea60

    mul-long p0, p0, v0

    return-wide p0
.end method

.method public static parse(Ljava/lang/String;)Lezvcard/util/UtcOffset;
    .locals 3

    .line 69
    const-string v0, "^([-\\+])?(\\d{1,2})(:?(\\d{2}))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    .line 76
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string v2, "-"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr p0, v1

    const/4 v1, 0x2

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    .line 82
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    :goto_0
    new-instance v2, Lezvcard/util/UtcOffset;

    invoke-direct {v2, p0, v1, v0}, Lezvcard/util/UtcOffset;-><init>(ZII)V

    return-object v2

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offset string is not in ISO8610 format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 160
    :cond_1
    const-class v2, Lezvcard/util/UtcOffset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 161
    :cond_2
    check-cast p1, Lezvcard/util/UtcOffset;

    .line 162
    iget-wide v2, p0, Lezvcard/util/UtcOffset;->millis:J

    iget-wide v4, p1, Lezvcard/util/UtcOffset;->millis:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 152
    iget-wide v0, p0, Lezvcard/util/UtcOffset;->millis:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Lezvcard/util/UtcOffset;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 9

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    iget-wide v1, p0, Lezvcard/util/UtcOffset;->millis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 126
    :goto_0
    invoke-static {v1, v2}, Lezvcard/util/UtcOffset;->millisToHours(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 127
    iget-wide v4, p0, Lezvcard/util/UtcOffset;->millis:J

    invoke-static {v4, v5}, Lezvcard/util/UtcOffset;->millisToMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    if-eqz v3, :cond_1

    const/16 v3, 0x2b

    goto :goto_1

    :cond_1
    const/16 v3, 0x2d

    .line 129
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x30

    const-wide/16 v6, 0xa

    cmp-long v8, v1, v6

    if-gez v8, :cond_2

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    const/16 p1, 0x3a

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    cmp-long p1, v4, v6

    if-gez p1, :cond_4

    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_4
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
