.class public Lezvcard/io/scribe/DeathplaceScribe;
.super Lezvcard/io/scribe/PlacePropertyScribe;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    const-class v0, Lezvcard/property/Deathplace;

    const-string v1, "DEATHPLACE"

    invoke-direct {p0, v0, v1}, Lezvcard/io/scribe/PlacePropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected newInstance()Lezvcard/property/Deathplace;
    .locals 1

    .line 41
    new-instance v0, Lezvcard/property/Deathplace;

    invoke-direct {v0}, Lezvcard/property/Deathplace;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newInstance()Lezvcard/property/PlaceProperty;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lezvcard/io/scribe/DeathplaceScribe;->newInstance()Lezvcard/property/Deathplace;

    move-result-object v0

    return-object v0
.end method
