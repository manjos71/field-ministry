.class public Lezvcard/property/Timezone;
.super Lezvcard/property/VCardProperty;
.source "SourceFile"


# instance fields
.field private offset:Lezvcard/util/UtcOffset;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lezvcard/util/UtcOffset;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lezvcard/property/Timezone;-><init>(Lezvcard/util/UtcOffset;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lezvcard/util/UtcOffset;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 104
    invoke-virtual {p0, p1}, Lezvcard/property/Timezone;->setOffset(Lezvcard/util/UtcOffset;)V

    .line 105
    invoke-virtual {p0, p2}, Lezvcard/property/Timezone;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0, p1}, Lezvcard/property/Timezone;-><init>(Lezvcard/util/UtcOffset;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getOffset()Lezvcard/util/UtcOffset;
    .locals 1

    .line 121
    iget-object v0, p0, Lezvcard/property/Timezone;->offset:Lezvcard/util/UtcOffset;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lezvcard/property/Timezone;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setOffset(Lezvcard/util/UtcOffset;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lezvcard/property/Timezone;->offset:Lezvcard/util/UtcOffset;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lezvcard/property/Timezone;->text:Ljava/lang/String;

    return-void
.end method
