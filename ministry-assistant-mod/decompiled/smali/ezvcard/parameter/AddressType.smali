.class public Lezvcard/parameter/AddressType;
.super Lezvcard/parameter/VersionedVCardParameter;
.source "SourceFile"


# static fields
.field public static final DOM:Lezvcard/parameter/AddressType;

.field public static final HOME:Lezvcard/parameter/AddressType;

.field public static final INTL:Lezvcard/parameter/AddressType;

.field public static final PARCEL:Lezvcard/parameter/AddressType;

.field public static final POSTAL:Lezvcard/parameter/AddressType;

.field public static final PREF:Lezvcard/parameter/AddressType;

.field public static final WORK:Lezvcard/parameter/AddressType;

.field private static final enums:Lezvcard/parameter/VCardParameterCaseClasses;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 47
    new-instance v0, Lezvcard/parameter/VCardParameterCaseClasses;

    const-class v1, Lezvcard/parameter/AddressType;

    invoke-direct {v0, v1}, Lezvcard/parameter/VCardParameterCaseClasses;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lezvcard/parameter/AddressType;->enums:Lezvcard/parameter/VCardParameterCaseClasses;

    .line 52
    new-instance v0, Lezvcard/parameter/AddressType;

    const/4 v1, 0x0

    new-array v2, v1, [Lezvcard/VCardVersion;

    const-string v3, "home"

    invoke-direct {v0, v3, v2}, Lezvcard/parameter/AddressType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/AddressType;->HOME:Lezvcard/parameter/AddressType;

    .line 57
    new-instance v0, Lezvcard/parameter/AddressType;

    const-string v2, "work"

    new-array v3, v1, [Lezvcard/VCardVersion;

    invoke-direct {v0, v2, v3}, Lezvcard/parameter/AddressType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/AddressType;->WORK:Lezvcard/parameter/AddressType;

    .line 62
    new-instance v0, Lezvcard/parameter/AddressType;

    sget-object v2, Lezvcard/VCardVersion;->V2_1:Lezvcard/VCardVersion;

    sget-object v3, Lezvcard/VCardVersion;->V3_0:Lezvcard/VCardVersion;

    const/4 v4, 0x2

    new-array v5, v4, [Lezvcard/VCardVersion;

    aput-object v2, v5, v1

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v7, "dom"

    invoke-direct {v0, v7, v5}, Lezvcard/parameter/AddressType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/AddressType;->DOM:Lezvcard/parameter/AddressType;

    .line 67
    new-instance v0, Lezvcard/parameter/AddressType;

    new-array v5, v4, [Lezvcard/VCardVersion;

    aput-object v2, v5, v1

    aput-object v3, v5, v6

    const-string v7, "intl"

    invoke-direct {v0, v7, v5}, Lezvcard/parameter/AddressType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/AddressType;->INTL:Lezvcard/parameter/AddressType;

    .line 72
    new-instance v0, Lezvcard/parameter/AddressType;

    new-array v5, v4, [Lezvcard/VCardVersion;

    aput-object v2, v5, v1

    aput-object v3, v5, v6

    const-string v7, "postal"

    invoke-direct {v0, v7, v5}, Lezvcard/parameter/AddressType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/AddressType;->POSTAL:Lezvcard/parameter/AddressType;

    .line 77
    new-instance v0, Lezvcard/parameter/AddressType;

    new-array v5, v4, [Lezvcard/VCardVersion;

    aput-object v2, v5, v1

    aput-object v3, v5, v6

    const-string v7, "parcel"

    invoke-direct {v0, v7, v5}, Lezvcard/parameter/AddressType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/AddressType;->PARCEL:Lezvcard/parameter/AddressType;

    .line 82
    new-instance v0, Lezvcard/parameter/AddressType;

    new-array v4, v4, [Lezvcard/VCardVersion;

    aput-object v2, v4, v1

    aput-object v3, v4, v6

    const-string v1, "pref"

    invoke-direct {v0, v1, v4}, Lezvcard/parameter/AddressType;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    sput-object v0, Lezvcard/parameter/AddressType;->PREF:Lezvcard/parameter/AddressType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lezvcard/parameter/VersionedVCardParameter;-><init>(Ljava/lang/String;[Lezvcard/VCardVersion;)V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lezvcard/parameter/AddressType;
    .locals 1

    .line 106
    sget-object v0, Lezvcard/parameter/AddressType;->enums:Lezvcard/parameter/VCardParameterCaseClasses;

    invoke-virtual {v0, p0}, Lezvcard/util/CaseClasses;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lezvcard/parameter/AddressType;

    return-object p0
.end method
