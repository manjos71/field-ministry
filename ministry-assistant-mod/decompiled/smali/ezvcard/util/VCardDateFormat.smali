.class public enum Lezvcard/util/VCardDateFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lezvcard/util/VCardDateFormat;

.field public static final enum DATE_BASIC:Lezvcard/util/VCardDateFormat;

.field public static final enum DATE_EXTENDED:Lezvcard/util/VCardDateFormat;

.field public static final enum DATE_TIME_BASIC:Lezvcard/util/VCardDateFormat;

.field public static final enum DATE_TIME_EXTENDED:Lezvcard/util/VCardDateFormat;

.field public static final enum HCARD_DATE_TIME:Lezvcard/util/VCardDateFormat;

.field public static final enum UTC_DATE_TIME_BASIC:Lezvcard/util/VCardDateFormat;

.field public static final enum UTC_DATE_TIME_EXTENDED:Lezvcard/util/VCardDateFormat;


# instance fields
.field protected final formatStr:Ljava/lang/String;

.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 51
    new-instance v0, Lezvcard/util/VCardDateFormat;

    const-string v1, "\\d{8}"

    const-string v2, "yyyyMMdd"

    const-string v3, "DATE_BASIC"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lezvcard/util/VCardDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lezvcard/util/VCardDateFormat;->DATE_BASIC:Lezvcard/util/VCardDateFormat;

    .line 58
    new-instance v1, Lezvcard/util/VCardDateFormat;

    const-string v2, "\\d{4}-\\d{2}-\\d{2}"

    const-string v3, "yyyy-MM-dd"

    const-string v5, "DATE_EXTENDED"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lezvcard/util/VCardDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lezvcard/util/VCardDateFormat;->DATE_EXTENDED:Lezvcard/util/VCardDateFormat;

    .line 65
    new-instance v2, Lezvcard/util/VCardDateFormat;

    const-string v3, "\\d{8}T\\d{6}[-\\+]\\d{4}"

    const-string v5, "yyyyMMdd\'T\'HHmmssZ"

    const-string v7, "DATE_TIME_BASIC"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lezvcard/util/VCardDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lezvcard/util/VCardDateFormat;->DATE_TIME_BASIC:Lezvcard/util/VCardDateFormat;

    .line 72
    new-instance v3, Lezvcard/util/VCardDateFormat$1;

    const-string v5, "DATE_TIME_EXTENDED"

    const/4 v7, 0x3

    const-string v9, "\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}[-\\+]\\d{2}:\\d{2}"

    const-string v10, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v3, v5, v7, v9, v10}, Lezvcard/util/VCardDateFormat$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lezvcard/util/VCardDateFormat;->DATE_TIME_EXTENDED:Lezvcard/util/VCardDateFormat;

    .line 111
    new-instance v5, Lezvcard/util/VCardDateFormat$2;

    const-string v9, "\\d{8}T\\d{6}Z"

    const-string v11, "yyyyMMdd\'T\'HHmmss\'Z\'"

    const-string v12, "UTC_DATE_TIME_BASIC"

    const/4 v13, 0x4

    invoke-direct {v5, v12, v13, v9, v11}, Lezvcard/util/VCardDateFormat$2;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lezvcard/util/VCardDateFormat;->UTC_DATE_TIME_BASIC:Lezvcard/util/VCardDateFormat;

    .line 125
    new-instance v9, Lezvcard/util/VCardDateFormat$3;

    const-string v11, "\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}Z"

    const-string v12, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    const-string v14, "UTC_DATE_TIME_EXTENDED"

    const/4 v15, 0x5

    invoke-direct {v9, v14, v15, v11, v12}, Lezvcard/util/VCardDateFormat$3;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lezvcard/util/VCardDateFormat;->UTC_DATE_TIME_EXTENDED:Lezvcard/util/VCardDateFormat;

    .line 139
    new-instance v11, Lezvcard/util/VCardDateFormat$4;

    const-string v12, "\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}[-\\+]\\d{2}:?\\d{2}"

    const-string v14, "HCARD_DATE_TIME"

    const/16 v16, 0x0

    const/4 v4, 0x6

    invoke-direct {v11, v14, v4, v12, v10}, Lezvcard/util/VCardDateFormat$4;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lezvcard/util/VCardDateFormat;->HCARD_DATE_TIME:Lezvcard/util/VCardDateFormat;

    const/4 v10, 0x7

    .line 46
    new-array v10, v10, [Lezvcard/util/VCardDateFormat;

    aput-object v0, v10, v16

    aput-object v1, v10, v6

    aput-object v2, v10, v8

    aput-object v3, v10, v7

    aput-object v5, v10, v13

    aput-object v9, v10, v15

    aput-object v11, v10, v4

    sput-object v10, Lezvcard/util/VCardDateFormat;->$VALUES:[Lezvcard/util/VCardDateFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 181
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lezvcard/util/VCardDateFormat;->pattern:Ljava/util/regex/Pattern;

    .line 182
    iput-object p4, p0, Lezvcard/util/VCardDateFormat;->formatStr:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lezvcard/util/VCardDateFormat$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lezvcard/util/VCardDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static find(Ljava/lang/String;)Lezvcard/util/VCardDateFormat;
    .locals 5

    .line 245
    invoke-static {}, Lezvcard/util/VCardDateFormat;->values()[Lezvcard/util/VCardDateFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 246
    invoke-virtual {v3, p0}, Lezvcard/util/VCardDateFormat;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 262
    invoke-static {p0}, Lezvcard/util/VCardDateFormat;->find(Ljava/lang/String;)Lezvcard/util/VCardDateFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lezvcard/util/VCardDateFormat;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 270
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 273
    :catch_0
    invoke-static {p0}, Lezvcard/util/VCardDateFormat;->parseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 264
    :cond_0
    invoke-static {p0}, Lezvcard/util/VCardDateFormat;->parseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static parseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date string \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" is not in a valid ISO-8601 format."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lezvcard/util/VCardDateFormat;
    .locals 1

    .line 46
    const-class v0, Lezvcard/util/VCardDateFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lezvcard/util/VCardDateFormat;

    return-object p0
.end method

.method public static values()[Lezvcard/util/VCardDateFormat;
    .locals 1

    .line 46
    sget-object v0, Lezvcard/util/VCardDateFormat;->$VALUES:[Lezvcard/util/VCardDateFormat;

    invoke-virtual {v0}, [Lezvcard/util/VCardDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lezvcard/util/VCardDateFormat;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, p1, v0}, Lezvcard/util/VCardDateFormat;->format(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 0

    .line 235
    invoke-virtual {p0, p2}, Lezvcard/util/VCardDateFormat;->getDateFormat(Ljava/util/TimeZone;)Ljava/text/DateFormat;

    move-result-object p2

    .line 236
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, v0}, Lezvcard/util/VCardDateFormat;->getDateFormat(Ljava/util/TimeZone;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public getDateFormat(Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .locals 2

    .line 211
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lezvcard/util/VCardDateFormat;->formatStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    return-object v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lezvcard/util/VCardDateFormat;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method
