.class public Lezvcard/io/scribe/DeathdateScribe;
.super Lezvcard/io/scribe/DateOrTimePropertyScribe;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    const-class v0, Lezvcard/property/Deathdate;

    const-string v1, "DEATHDATE"

    invoke-direct {p0, v0, v1}, Lezvcard/io/scribe/DateOrTimePropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newInstance(Lezvcard/util/PartialDate;)Lezvcard/property/DateOrTimeProperty;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lezvcard/io/scribe/DeathdateScribe;->newInstance(Lezvcard/util/PartialDate;)Lezvcard/property/Deathdate;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic newInstance(Ljava/lang/String;)Lezvcard/property/DateOrTimeProperty;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lezvcard/io/scribe/DeathdateScribe;->newInstance(Ljava/lang/String;)Lezvcard/property/Deathdate;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic newInstance(Ljava/util/Date;Z)Lezvcard/property/DateOrTimeProperty;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lezvcard/io/scribe/DeathdateScribe;->newInstance(Ljava/util/Date;Z)Lezvcard/property/Deathdate;

    move-result-object p1

    return-object p1
.end method

.method protected newInstance(Lezvcard/util/PartialDate;)Lezvcard/property/Deathdate;
    .locals 1

    .line 54
    new-instance v0, Lezvcard/property/Deathdate;

    invoke-direct {v0, p1}, Lezvcard/property/Deathdate;-><init>(Lezvcard/util/PartialDate;)V

    return-object v0
.end method

.method protected newInstance(Ljava/lang/String;)Lezvcard/property/Deathdate;
    .locals 1

    .line 44
    new-instance v0, Lezvcard/property/Deathdate;

    invoke-direct {v0, p1}, Lezvcard/property/Deathdate;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected newInstance(Ljava/util/Date;Z)Lezvcard/property/Deathdate;
    .locals 1

    .line 49
    new-instance v0, Lezvcard/property/Deathdate;

    invoke-direct {v0, p1, p2}, Lezvcard/property/Deathdate;-><init>(Ljava/util/Date;Z)V

    return-object v0
.end method
