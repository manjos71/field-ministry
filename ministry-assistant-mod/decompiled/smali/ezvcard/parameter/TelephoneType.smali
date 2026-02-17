.class public Lezvcard/parameter/TelephoneType;
.super Lezvcard/parameter/VersionedVCardParameter;
.source "SourceFile"


# static fields
.field public static final BBS:Lezvcard/parameter/TelephoneType;

.field public static final CAR:Lezvcard/parameter/TelephoneType;

.field public static final CELL:Lezvcard/parameter/TelephoneType;

.field public static final FAX:Lezvcard/parameter/TelephoneType;

.field public static final HOME:Lezvcard/parameter/TelephoneType;

.field public static final ISDN:Lezvcard/parameter/TelephoneType;

.field public static final MODEM:Lezvcard/parameter/TelephoneType;

.field public static final MSG:Lezvcard/parameter/TelephoneType;

.field public static final PAGER:Lezvcard/parameter/TelephoneType;

.field public static final PCS:Lezvcard/parameter/TelephoneType;

.field public static final PREF:Lezvcard/parameter/TelephoneType;

.field public static final TEXT:Lezvcard/parameter/TelephoneType;

.field public static final TEXTPHONE:Lezvcard/parameter/TelephoneType;

.field public static final VIDEO:Lezvcard/parameter/TelephoneType;

.field public static final VOICE:Lezvcard/parameter/TelephoneType;

.field public static final WORK:Lezvcard/parameter/TelephoneType;

.field private static final enums:Lezvcard/parameter/VCardParameterCaseClasses;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 45
    new-instance v0, Lezvcard/parameter/VCardParameterCaseClasses;

    const-class v1, Lezvcard/parameter/TelephoneType;

    invoke-direct {v0, v1}, Lezvcard/parameter/VCardParameterCaseClasses;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->enums:Lezvcard/parameter/VCardParameterCaseClasses;

    .line 50
    new-instance v0, Lezvcard/parameter/TelephoneType;

    sget-object v1, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    sget-object v2, Lezvcard/VCardVersion;->V3_0:Lezvcard/VCardVersion;

    const/4 v3, 0x2

    new-array v4, v3, [Lezvcard/VCardVersion;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v6, 0x1

    aput-object v2, v4, v6

    const-string v7, "bbs"

    invoke-direct {v0, v7, v4}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->BBS:Lezvcard/parameter/TelephoneType;

    .line 55
    new-instance v0, Lezvcard/parameter/TelephoneType;

    new-array v4, v3, [Lezvcard/VCardVersion;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    const-string v7, "car"

    invoke-direct {v0, v7, v4}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->CAR:Lezvcard/parameter/TelephoneType;

    .line 60
    new-instance v0, Lezvcard/parameter/TelephoneType;

    const-string v4, "cell"

    new-array v7, v5, [Lezvcard/VCardVersion;

    invoke-direct {v0, v4, v7}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->CELL:Lezvcard/parameter/TelephoneType;

    .line 65
    new-instance v0, Lezvcard/parameter/TelephoneType;

    const-string v4, "fax"

    new-array v7, v5, [Lezvcard/VCardVersion;

    invoke-direct {v0, v4, v7}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->FAX:Lezvcard/parameter/TelephoneType;

    .line 70
    new-instance v0, Lezvcard/parameter/TelephoneType;

    const-string v4, "home"

    new-array v7, v5, [Lezvcard/VCardVersion;

    invoke-direct {v0, v4, v7}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->HOME:Lezvcard/parameter/TelephoneType;

    .line 75
    new-instance v0, Lezvcard/parameter/TelephoneType;

    new-array v4, v3, [Lezvcard/VCardVersion;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    const-string v7, "isdn"

    invoke-direct {v0, v7, v4}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->ISDN:Lezvcard/parameter/TelephoneType;

    .line 80
    new-instance v0, Lezvcard/parameter/TelephoneType;

    new-array v4, v3, [Lezvcard/VCardVersion;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    const-string v7, "modem"

    invoke-direct {v0, v7, v4}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->MODEM:Lezvcard/parameter/TelephoneType;

    .line 85
    new-instance v0, Lezvcard/parameter/TelephoneType;

    new-array v4, v3, [Lezvcard/VCardVersion;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    const-string v7, "msg"

    invoke-direct {v0, v7, v4}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->MSG:Lezvcard/parameter/TelephoneType;

    .line 90
    new-instance v0, Lezvcard/parameter/TelephoneType;

    const-string v4, "pager"

    new-array v7, v5, [Lezvcard/VCardVersion;

    invoke-direct {v0, v4, v7}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->PAGER:Lezvcard/parameter/TelephoneType;

    .line 95
    new-instance v0, Lezvcard/parameter/TelephoneType;

    new-array v4, v6, [Lezvcard/VCardVersion;

    aput-object v2, v4, v5

    const-string v7, "pcs"

    invoke-direct {v0, v7, v4}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->PCS:Lezvcard/parameter/TelephoneType;

    .line 100
    new-instance v0, Lezvcard/parameter/TelephoneType;

    new-array v3, v3, [Lezvcard/VCardVersion;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    const-string v1, "pref"

    invoke-direct {v0, v1, v3}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->PREF:Lezvcard/parameter/TelephoneType;

    .line 105
    new-instance v0, Lezvcard/parameter/TelephoneType;

    sget-object v1, Lezvcard/VCardVersion;->V4_0:Lezvcard/VCardVersion;

    new-array v2, v6, [Lezvcard/VCardVersion;

    aput-object v1, v2, v5

    const-string v3, "text"

    invoke-direct {v0, v3, v2}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->TEXT:Lezvcard/parameter/TelephoneType;

    .line 110
    new-instance v0, Lezvcard/parameter/TelephoneType;

    new-array v2, v6, [Lezvcard/VCardVersion;

    aput-object v1, v2, v5

    const-string v1, "textphone"

    invoke-direct {v0, v1, v2}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->TEXTPHONE:Lezvcard/parameter/TelephoneType;

    .line 115
    new-instance v0, Lezvcard/parameter/TelephoneType;

    const-string v1, "video"

    new-array v2, v5, [Lezvcard/VCardVersion;

    invoke-direct {v0, v1, v2}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->VIDEO:Lezvcard/parameter/TelephoneType;

    .line 120
    new-instance v0, Lezvcard/parameter/TelephoneType;

    const-string v1, "voice"

    new-array v2, v5, [Lezvcard/VCardVersion;

    invoke-direct {v0, v1, v2}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->VOICE:Lezvcard/parameter/TelephoneType;

    .line 125
    new-instance v0, Lezvcard/parameter/TelephoneType;

    const-string v1, "work"

    new-array v2, v5, [Lezvcard/VCardVersion;

    invoke-direct {v0, v1, v2}, Lezvcard/parameter/TelephoneType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/TelephoneType;->WORK:Lezvcard/parameter/TelephoneType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lezvcard/parameter/VersionedVCardParameter;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lezvcard/parameter/TelephoneType;
    .locals 1

    .line 149
    sget-object v0, Lezvcard/parameter/TelephoneType;->enums:Lezvcard/parameter/VCardParameterCaseClasses;

    invoke-virtual {v0, p0}, Lezvcard/util/CaseClasses;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lezvcard/parameter/TelephoneType;

    return-object p0
.end method
