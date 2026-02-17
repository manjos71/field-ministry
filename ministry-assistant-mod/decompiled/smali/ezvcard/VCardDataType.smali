.class public Lezvcard/VCardDataType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BINARY:Lezvcard/VCardDataType;

.field public static final BOOLEAN:Lezvcard/VCardDataType;

.field public static final CONTENT_ID:Lezvcard/VCardDataType;

.field public static final DATE:Lezvcard/VCardDataType;

.field public static final DATE_AND_OR_TIME:Lezvcard/VCardDataType;

.field public static final DATE_TIME:Lezvcard/VCardDataType;

.field public static final FLOAT:Lezvcard/VCardDataType;

.field public static final INTEGER:Lezvcard/VCardDataType;

.field public static final LANGUAGE_TAG:Lezvcard/VCardDataType;

.field public static final TEXT:Lezvcard/VCardDataType;

.field public static final TIME:Lezvcard/VCardDataType;

.field public static final TIMESTAMP:Lezvcard/VCardDataType;

.field public static final URI:Lezvcard/VCardDataType;

.field public static final URL:Lezvcard/VCardDataType;

.field public static final UTC_OFFSET:Lezvcard/VCardDataType;

.field private static final enums:Lezvcard/util/CaseClasses;


# instance fields
.field private final name:Ljava/lang/String;

.field private final supportedVersions:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 45
    new-instance v0, Lezvcard/VCardDataType$1;

    const-class v1, Lezvcard/VCardDataType;

    invoke-direct {v0, v1}, Lezvcard/VCardDataType$1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lezvcard/VCardDataType;->enums:Lezvcard/util/CaseClasses;

    .line 65
    new-instance v0, Lezvcard/VCardDataType;

    sget-object v1, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    const/4 v2, 0x1

    new-array v3, v2, [Lezvcard/VCardVersion;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v5, "url"

    invoke-direct {v0, v5, v3}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/VCardDataType;->URL:Lezvcard/VCardDataType;

    .line 73
    new-instance v0, Lezvcard/VCardDataType;

    new-array v3, v2, [Lezvcard/VCardVersion;

    aput-object v1, v3, v4

    const-string v1, "content-id"

    invoke-direct {v0, v1, v3}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/VCardDataType;->CONTENT_ID:Lezvcard/VCardDataType;

    .line 81
    new-instance v0, Lezvcard/VCardDataType;

    sget-object v1, Lezvcard/VCardVersion;->V3_0:Lezvcard/VCardVersion;

    new-array v3, v2, [Lezvcard/VCardVersion;

    aput-object v1, v3, v4

    const-string v5, "binary"

    invoke-direct {v0, v5, v3}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/VCardDataType;->BINARY:Lezvcard/VCardDataType;

    .line 90
    new-instance v0, Lezvcard/VCardDataType;

    sget-object v3, Lezvcard/VCardVersion;->V4_0:Lezvcard/VCardVersion;

    const/4 v5, 0x2

    new-array v6, v5, [Lezvcard/VCardVersion;

    aput-object v1, v6, v4

    aput-object v3, v6, v2

    const-string v7, "uri"

    invoke-direct {v0, v7, v6}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/VCardDataType;->URI:Lezvcard/VCardDataType;

    .line 98
    new-instance v0, Lezvcard/VCardDataType;

    const-string v6, "text"

    new-array v7, v4, [Lezvcard/VCardVersion;

    invoke-direct {v0, v6, v7}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/VCardDataType;->TEXT:Lezvcard/VCardDataType;

    .line 106
    new-instance v0, Lezvcard/VCardDataType;

    new-array v6, v5, [Lezvcard/VCardVersion;

    aput-object v1, v6, v4

    aput-object v3, v6, v2

    const-string v7, "date"

    invoke-direct {v0, v7, v6}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/VCardDataType;->DATE:Lezvcard/VCardDataType;

    .line 114
    new-instance v0, Lezvcard/VCardDataType;

    new-array v6, v5, [Lezvcard/VCardVersion;

    aput-object v1, v6, v4

    aput-object v3, v6, v2

    const-string v7, "time"

    invoke-direct {v0, v7, v6}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/VCardDataType;->TIME:Lezvcard/VCardDataType;

    .line 122
    new-instance v0, Lezvcard/VCardDataType;

    new-array v5, v5, [Lezvcard/VCardVersion;

    aput-object v1, v5, v4

    aput-object v3, v5, v2

    const-string v1, "date-time"

    invoke-direct {v0, v1, v5}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/VCardDataType;->DATE_TIME:Lezvcard/VCardDataType;

    .line 132
    new-instance v0, Lezvcard/VCardDataType;

    new-array v1, v2, [Lezvcard/VCardVersion;

    aput-object v3, v1, v4

    const-string v5, "date-and-or-time"

    invoke-direct {v0, v5, v1}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/VCardDataType;->DATE_AND_OR_TIME:Lezvcard/VCardDataType;

    .line 140
    new-instance v0, Lezvcard/VCardDataType;

    new-array v1, v2, [Lezvcard/VCardVersion;

    aput-object v3, v1, v4

    const-string v5, "timestamp"

    invoke-direct {v0, v5, v1}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/VCardDataType;->TIMESTAMP:Lezvcard/VCardDataType;

    .line 148
    new-instance v0, Lezvcard/VCardDataType;

    new-array v1, v2, [Lezvcard/VCardVersion;

    aput-object v3, v1, v4

    const-string v5, "boolean"

    invoke-direct {v0, v5, v1}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/VCardDataType;->BOOLEAN:Lezvcard/VCardDataType;

    .line 156
    new-instance v0, Lezvcard/VCardDataType;

    new-array v1, v2, [Lezvcard/VCardVersion;

    aput-object v3, v1, v4

    const-string v5, "integer"

    invoke-direct {v0, v5, v1}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/VCardDataType;->INTEGER:Lezvcard/VCardDataType;

    .line 164
    new-instance v0, Lezvcard/VCardDataType;

    new-array v1, v2, [Lezvcard/VCardVersion;

    aput-object v3, v1, v4

    const-string v5, "float"

    invoke-direct {v0, v5, v1}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/VCardDataType;->FLOAT:Lezvcard/VCardDataType;

    .line 172
    new-instance v0, Lezvcard/VCardDataType;

    new-array v1, v2, [Lezvcard/VCardVersion;

    aput-object v3, v1, v4

    const-string v5, "utc-offset"

    invoke-direct {v0, v5, v1}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/VCardDataType;->UTC_OFFSET:Lezvcard/VCardDataType;

    .line 182
    new-instance v0, Lezvcard/VCardDataType;

    new-array v1, v2, [Lezvcard/VCardVersion;

    aput-object v3, v1, v4

    const-string v2, "language-tag"

    invoke-direct {v0, v2, v1}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/VCardDataType;->LANGUAGE_TAG:Lezvcard/VCardDataType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lezvcard/VCardDataType;->name:Ljava/lang/String;

    .line 193
    array-length p1, p2

    if-nez p1, :cond_0

    .line 194
    invoke-static {}, Lezvcard/VCardVersion;->values()[Lezvcard/VCardVersion;

    move-result-object p2

    .line 197
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    .line 198
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lezvcard/VCardDataType;->supportedVersions:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Lezvcard/VCardVersion;Lezvcard/VCardDataType$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lezvcard/VCardDataType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    return-void
.end method

.method static synthetic access$100(Lezvcard/VCardDataType;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lezvcard/VCardDataType;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static find(Ljava/lang/String;)Lezvcard/VCardDataType;
    .locals 1

    .line 230
    sget-object v0, Lezvcard/VCardDataType;->enums:Lezvcard/util/CaseClasses;

    invoke-virtual {v0, p0}, Lezvcard/util/CaseClasses;->find(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lezvcard/VCardDataType;

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Lezvcard/VCardDataType;
    .locals 1

    .line 241
    sget-object v0, Lezvcard/VCardDataType;->enums:Lezvcard/util/CaseClasses;

    invoke-virtual {v0, p0}, Lezvcard/util/CaseClasses;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lezvcard/VCardDataType;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lezvcard/VCardDataType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lezvcard/VCardDataType;->name:Ljava/lang/String;

    return-object v0
.end method
