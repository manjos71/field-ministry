.class public Lezvcard/io/scribe/CalendarUriScribe;
.super Lezvcard/io/scribe/UriPropertyScribe;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    const-class v0, Lezvcard/property/CalendarUri;

    const-string v1, "CALURI"

    invoke-direct {p0, v0, v1}, Lezvcard/io/scribe/UriPropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected _parseValue(Ljava/lang/String;)Lezvcard/property/CalendarUri;
    .locals 1

    .line 41
    new-instance v0, Lezvcard/property/CalendarUri;

    invoke-direct {v0, p1}, Lezvcard/property/CalendarUri;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic _parseValue(Ljava/lang/String;)Lezvcard/property/VCardProperty;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lezvcard/io/scribe/CalendarUriScribe;->_parseValue(Ljava/lang/String;)Lezvcard/property/CalendarUri;

    move-result-object p1

    return-object p1
.end method
