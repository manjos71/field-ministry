.class public Lezvcard/parameter/Encoding;
.super Lezvcard/parameter/VersionedVCardParameter;
.source "SourceFile"


# static fields
.field public static final B:Lezvcard/parameter/Encoding;

.field public static final BASE64:Lezvcard/parameter/Encoding;

.field public static final QUOTED_PRINTABLE:Lezvcard/parameter/Encoding;

.field public static final _7BIT:Lezvcard/parameter/Encoding;

.field public static final _8BIT:Lezvcard/parameter/Encoding;

.field private static final enums:Lezvcard/parameter/VCardParameterCaseClasses;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 73
    new-instance v0, Lezvcard/parameter/VCardParameterCaseClasses;

    const-class v1, Lezvcard/parameter/Encoding;

    invoke-direct {v0, v1}, Lezvcard/parameter/VCardParameterCaseClasses;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lezvcard/parameter/Encoding;->enums:Lezvcard/parameter/VCardParameterCaseClasses;

    .line 78
    new-instance v0, Lezvcard/parameter/Encoding;

    sget-object v1, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    const/4 v2, 0x1

    new-array v3, v2, [Lezvcard/VCardVersion;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v5, "quoted-printable"

    invoke-direct {v0, v5, v3}, Lezvcard/parameter/Encoding;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/Encoding;->QUOTED_PRINTABLE:Lezvcard/parameter/Encoding;

    .line 83
    new-instance v0, Lezvcard/parameter/Encoding;

    new-array v3, v2, [Lezvcard/VCardVersion;

    aput-object v1, v3, v4

    const-string v5, "base64"

    invoke-direct {v0, v5, v3}, Lezvcard/parameter/Encoding;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/Encoding;->BASE64:Lezvcard/parameter/Encoding;

    .line 88
    new-instance v0, Lezvcard/parameter/Encoding;

    new-array v3, v2, [Lezvcard/VCardVersion;

    aput-object v1, v3, v4

    const-string v5, "8bit"

    invoke-direct {v0, v5, v3}, Lezvcard/parameter/Encoding;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/Encoding;->_8BIT:Lezvcard/parameter/Encoding;

    .line 93
    new-instance v0, Lezvcard/parameter/Encoding;

    new-array v3, v2, [Lezvcard/VCardVersion;

    aput-object v1, v3, v4

    const-string v1, "7bit"

    invoke-direct {v0, v1, v3}, Lezvcard/parameter/Encoding;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/Encoding;->_7BIT:Lezvcard/parameter/Encoding;

    .line 98
    new-instance v0, Lezvcard/parameter/Encoding;

    new-array v1, v2, [Lezvcard/VCardVersion;

    sget-object v2, Lezvcard/VCardVersion;->V3_0:Lezvcard/VCardVersion;

    aput-object v2, v1, v4

    const-string v2, "b"

    invoke-direct {v0, v2, v1}, Lezvcard/parameter/Encoding;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/Encoding;->B:Lezvcard/parameter/Encoding;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lezvcard/parameter/VersionedVCardParameter;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    return-void
.end method

.method public static find(Ljava/lang/String;)Lezvcard/parameter/Encoding;
    .locals 1

    .line 111
    sget-object v0, Lezvcard/parameter/Encoding;->enums:Lezvcard/parameter/VCardParameterCaseClasses;

    invoke-virtual {v0, p0}, Lezvcard/util/CaseClasses;->find(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lezvcard/parameter/Encoding;

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Lezvcard/parameter/Encoding;
    .locals 1

    .line 122
    sget-object v0, Lezvcard/parameter/Encoding;->enums:Lezvcard/parameter/VCardParameterCaseClasses;

    invoke-virtual {v0, p0}, Lezvcard/util/CaseClasses;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lezvcard/parameter/Encoding;

    return-object p0
.end method
