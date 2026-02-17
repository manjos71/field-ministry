.class public Lezvcard/property/Sound;
.super Lezvcard/property/BinaryProperty;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lezvcard/parameter/SoundType;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lezvcard/property/BinaryProperty;-><init>(Ljava/lang/String;Lezvcard/parameter/MediaTypeParameter;)V

    return-void
.end method

.method public constructor <init>([BLezvcard/parameter/SoundType;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lezvcard/property/BinaryProperty;-><init>([BLezvcard/parameter/MediaTypeParameter;)V

    return-void
.end method
