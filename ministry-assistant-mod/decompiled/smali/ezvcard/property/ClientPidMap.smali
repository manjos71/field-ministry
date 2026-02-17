.class public Lezvcard/property/ClientPidMap;
.super Lezvcard/property/VCardProperty;
.source "SourceFile"


# instance fields
.field private pid:Ljava/lang/Integer;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 103
    iput-object p1, p0, Lezvcard/property/ClientPidMap;->pid:Ljava/lang/Integer;

    .line 104
    iput-object p2, p0, Lezvcard/property/ClientPidMap;->uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _supportedVersions()Ljava/util/Set;
    .locals 1

    .line 119
    sget-object v0, Lezvcard/VCardVersion;->V4_0:Lezvcard/VCardVersion;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPid()Ljava/lang/Integer;
    .locals 1

    .line 129
    iget-object v0, p0, Lezvcard/property/ClientPidMap;->pid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lezvcard/property/ClientPidMap;->uri:Ljava/lang/String;

    return-object v0
.end method
