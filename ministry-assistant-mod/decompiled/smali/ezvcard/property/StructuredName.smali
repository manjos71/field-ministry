.class public Lezvcard/property/StructuredName;
.super Lezvcard/property/VCardProperty;
.source "SourceFile"


# instance fields
.field private additional:Ljava/util/List;

.field private family:Ljava/lang/String;

.field private given:Ljava/lang/String;

.field private prefixes:Ljava/util/List;

.field private suffixes:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lezvcard/property/StructuredName;->additional:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lezvcard/property/StructuredName;->prefixes:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lezvcard/property/StructuredName;->suffixes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAdditional()Ljava/util/List;
    .locals 1

    .line 109
    iget-object v0, p0, Lezvcard/property/StructuredName;->additional:Ljava/util/List;

    return-object v0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lezvcard/property/StructuredName;->family:Ljava/lang/String;

    return-object v0
.end method

.method public getGiven()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lezvcard/property/StructuredName;->given:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixes()Ljava/util/List;
    .locals 1

    .line 125
    iget-object v0, p0, Lezvcard/property/StructuredName;->prefixes:Ljava/util/List;

    return-object v0
.end method

.method public getSuffixes()Ljava/util/List;
    .locals 1

    .line 141
    iget-object v0, p0, Lezvcard/property/StructuredName;->suffixes:Ljava/util/List;

    return-object v0
.end method

.method public setFamily(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lezvcard/property/StructuredName;->family:Ljava/lang/String;

    return-void
.end method

.method public setGiven(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lezvcard/property/StructuredName;->given:Ljava/lang/String;

    return-void
.end method
