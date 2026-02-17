.class public Lezvcard/io/scribe/UidScribe;
.super Lezvcard/io/scribe/UriPropertyScribe;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    const-class v0, Lezvcard/property/Uid;

    const-string v1, "UID"

    invoke-direct {p0, v0, v1}, Lezvcard/io/scribe/UriPropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected _parseValue(Ljava/lang/String;)Lezvcard/property/Uid;
    .locals 1

    .line 41
    new-instance v0, Lezvcard/property/Uid;

    invoke-direct {v0, p1}, Lezvcard/property/Uid;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic _parseValue(Ljava/lang/String;)Lezvcard/property/VCardProperty;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lezvcard/io/scribe/UidScribe;->_parseValue(Ljava/lang/String;)Lezvcard/property/Uid;

    move-result-object p1

    return-object p1
.end method
