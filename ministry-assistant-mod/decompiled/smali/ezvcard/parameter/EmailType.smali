.class public Lezvcard/parameter/EmailType;
.super Lezvcard/parameter/VersionedVCardParameter;
.source "SourceFile"


# static fields
.field public static final AOL:Lezvcard/parameter/EmailType;

.field public static final APPLELINK:Lezvcard/parameter/EmailType;

.field public static final ATTMAIL:Lezvcard/parameter/EmailType;

.field public static final CIS:Lezvcard/parameter/EmailType;

.field public static final EWORLD:Lezvcard/parameter/EmailType;

.field public static final HOME:Lezvcard/parameter/EmailType;

.field public static final IBMMAIL:Lezvcard/parameter/EmailType;

.field public static final INTERNET:Lezvcard/parameter/EmailType;

.field public static final MCIMAIL:Lezvcard/parameter/EmailType;

.field public static final POWERSHARE:Lezvcard/parameter/EmailType;

.field public static final PREF:Lezvcard/parameter/EmailType;

.field public static final PRODIGY:Lezvcard/parameter/EmailType;

.field public static final TLX:Lezvcard/parameter/EmailType;

.field public static final WORK:Lezvcard/parameter/EmailType;

.field public static final X400:Lezvcard/parameter/EmailType;

.field private static final enums:Lezvcard/parameter/VCardParameterCaseClasses;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 45
    new-instance v0, Lezvcard/parameter/VCardParameterCaseClasses;

    const-class v1, Lezvcard/parameter/EmailType;

    invoke-direct {v0, v1}, Lezvcard/parameter/VCardParameterCaseClasses;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lezvcard/parameter/EmailType;->enums:Lezvcard/parameter/VCardParameterCaseClasses;

    .line 50
    new-instance v0, Lezvcard/parameter/EmailType;

    sget-object v1, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    sget-object v2, Lezvcard/VCardVersion;->V3_0:Lezvcard/VCardVersion;

    const/4 v3, 0x2

    new-array v4, v3, [Lezvcard/VCardVersion;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v6, 0x1

    aput-object v2, v4, v6

    const-string v7, "internet"

    invoke-direct {v0, v7, v4}, Lezvcard/parameter/EmailType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/EmailType;->INTERNET:Lezvcard/parameter/EmailType;

    .line 55
    new-instance v0, Lezvcard/parameter/EmailType;

    new-array v4, v3, [Lezvcard/VCardVersion;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    const-string v7, "x400"

    invoke-direct {v0, v7, v4}, Lezvcard/parameter/EmailType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/EmailType;->X400:Lezvcard/parameter/EmailType;

    .line 60
    new-instance v0, Lezvcard/parameter/EmailType;

    new-array v3, v3, [Lezvcard/VCardVersion;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    const-string v2, "pref"

    invoke-direct {v0, v2, v3}, Lezvcard/parameter/EmailType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/EmailType;->PREF:Lezvcard/parameter/EmailType;

    .line 65
    new-instance v0, Lezvcard/parameter/EmailType;

    new-array v2, v6, [Lezvcard/VCardVersion;

    aput-object v1, v2, v5

    const-string v3, "aol"

    invoke-direct {v0, v3, v2}, Lezvcard/parameter/EmailType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/EmailType;->AOL:Lezvcard/parameter/EmailType;

    .line 70
    new-instance v0, Lezvcard/parameter/EmailType;

    new-array v2, v6, [Lezvcard/VCardVersion;

    aput-object v1, v2, v5

    const-string v3, "applelink"

    invoke-direct {v0, v3, v2}, Lezvcard/parameter/EmailType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/EmailType;->APPLELINK:Lezvcard/parameter/EmailType;

    .line 75
    new-instance v0, Lezvcard/parameter/EmailType;

    new-array v2, v6, [Lezvcard/VCardVersion;

    aput-object v1, v2, v5

    const-string v3, "attmail"

    invoke-direct {v0, v3, v2}, Lezvcard/parameter/EmailType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/EmailType;->ATTMAIL:Lezvcard/parameter/EmailType;

    .line 80
    new-instance v0, Lezvcard/parameter/EmailType;

    new-array v2, v6, [Lezvcard/VCardVersion;

    aput-object v1, v2, v5

    const-string v3, "cis"

    invoke-direct {v0, v3, v2}, Lezvcard/parameter/EmailType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/EmailType;->CIS:Lezvcard/parameter/EmailType;

    .line 85
    new-instance v0, Lezvcard/parameter/EmailType;

    new-array v2, v6, [Lezvcard/VCardVersion;

    aput-object v1, v2, v5

    const-string v3, "eworld"

    invoke-direct {v0, v3, v2}, Lezvcard/parameter/EmailType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/EmailType;->EWORLD:Lezvcard/parameter/EmailType;

    .line 90
    new-instance v0, Lezvcard/parameter/EmailType;

    new-array v2, v6, [Lezvcard/VCardVersion;

    aput-object v1, v2, v5

    const-string v3, "ibmmail"

    invoke-direct {v0, v3, v2}, Lezvcard/parameter/EmailType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/EmailType;->IBMMAIL:Lezvcard/parameter/EmailType;

    .line 95
    new-instance v0, Lezvcard/parameter/EmailType;

    new-array v2, v6, [Lezvcard/VCardVersion;

    aput-object v1, v2, v5

    const-string v3, "mcimail"

    invoke-direct {v0, v3, v2}, Lezvcard/parameter/EmailType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/EmailType;->MCIMAIL:Lezvcard/parameter/EmailType;

    .line 100
    new-instance v0, Lezvcard/parameter/EmailType;

    new-array v2, v6, [Lezvcard/VCardVersion;

    aput-object v1, v2, v5

    const-string v3, "powershare"

    invoke-direct {v0, v3, v2}, Lezvcard/parameter/EmailType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/EmailType;->POWERSHARE:Lezvcard/parameter/EmailType;

    .line 105
    new-instance v0, Lezvcard/parameter/EmailType;

    new-array v2, v6, [Lezvcard/VCardVersion;

    aput-object v1, v2, v5

    const-string v3, "prodigy"

    invoke-direct {v0, v3, v2}, Lezvcard/parameter/EmailType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/EmailType;->PRODIGY:Lezvcard/parameter/EmailType;

    .line 110
    new-instance v0, Lezvcard/parameter/EmailType;

    new-array v2, v6, [Lezvcard/VCardVersion;

    aput-object v1, v2, v5

    const-string v1, "tlx"

    invoke-direct {v0, v1, v2}, Lezvcard/parameter/EmailType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/EmailType;->TLX:Lezvcard/parameter/EmailType;

    .line 115
    new-instance v0, Lezvcard/parameter/EmailType;

    sget-object v1, Lezvcard/VCardVersion;->V4_0:Lezvcard/VCardVersion;

    new-array v2, v6, [Lezvcard/VCardVersion;

    aput-object v1, v2, v5

    const-string v3, "home"

    invoke-direct {v0, v3, v2}, Lezvcard/parameter/EmailType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/EmailType;->HOME:Lezvcard/parameter/EmailType;

    .line 120
    new-instance v0, Lezvcard/parameter/EmailType;

    new-array v2, v6, [Lezvcard/VCardVersion;

    aput-object v1, v2, v5

    const-string v1, "work"

    invoke-direct {v0, v1, v2}, Lezvcard/parameter/EmailType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/EmailType;->WORK:Lezvcard/parameter/EmailType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Lezvcard/parameter/VersionedVCardParameter;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    return-void
.end method
