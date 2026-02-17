.class public final enum Lezvcard/VCardVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lezvcard/VCardVersion;

.field public static final enum V2_1:Lezvcard/VCardVersion;

.field public static final enum V3_0:Lezvcard/VCardVersion;

.field public static final enum V4_0:Lezvcard/VCardVersion;


# instance fields
.field private final version:Ljava/lang/String;

.field private final xmlNamespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 70
    new-instance v0, Lezvcard/VCardVersion;

    const-string v1, "V2_1"

    const/4 v2, 0x0

    const-string v3, "2.1"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lezvcard/VCardVersion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    .line 76
    new-instance v1, Lezvcard/VCardVersion;

    const-string v3, "3.0"

    const-string v5, "V3_0"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v3, v4}, Lezvcard/VCardVersion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lezvcard/VCardVersion;->V3_0:Lezvcard/VCardVersion;

    .line 82
    new-instance v3, Lezvcard/VCardVersion;

    const-string v4, "4.0"

    const-string v5, "urn:ietf:params:xml:ns:vcard-4.0"

    const-string v7, "V4_0"

    const/4 v8, 0x2

    invoke-direct {v3, v7, v8, v4, v5}, Lezvcard/VCardVersion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lezvcard/VCardVersion;->V4_0:Lezvcard/VCardVersion;

    const/4 v4, 0x3

    .line 65
    new-array v4, v4, [Lezvcard/VCardVersion;

    aput-object v0, v4, v2

    aput-object v1, v4, v6

    aput-object v3, v4, v8

    sput-object v4, Lezvcard/VCardVersion;->$VALUES:[Lezvcard/VCardVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p3, p0, Lezvcard/VCardVersion;->version:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lezvcard/VCardVersion;->xmlNamespace:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lezvcard/VCardVersion;
    .locals 1

    .line 65
    const-class v0, Lezvcard/VCardVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lezvcard/VCardVersion;

    return-object p0
.end method

.method public static valueOfByStr(Ljava/lang/String;)Lezvcard/VCardVersion;
    .locals 5

    .line 118
    invoke-static {}, Lezvcard/VCardVersion;->values()[Lezvcard/VCardVersion;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 119
    invoke-virtual {v3}, Lezvcard/VCardVersion;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static values()[Lezvcard/VCardVersion;
    .locals 1

    .line 65
    sget-object v0, Lezvcard/VCardVersion;->$VALUES:[Lezvcard/VCardVersion;

    invoke-virtual {v0}, [Lezvcard/VCardVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lezvcard/VCardVersion;

    return-object v0
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lezvcard/VCardVersion;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlNamespace()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lezvcard/VCardVersion;->xmlNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lezvcard/VCardVersion;->version:Ljava/lang/String;

    return-object v0
.end method
