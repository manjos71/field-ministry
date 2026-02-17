.class public abstract Lezvcard/io/scribe/StringPropertyScribe;
.super Lezvcard/io/scribe/SimplePropertyScribe;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    .line 38
    sget-object v0, Lezvcard/VCardDataType;->TEXT:Lezvcard/VCardDataType;

    invoke-direct {p0, p1, p2, v0}, Lezvcard/io/scribe/StringPropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;Lezvcard/VCardDataType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lezvcard/VCardDataType;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lezvcard/io/scribe/SimplePropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;Lezvcard/VCardDataType;)V

    return-void
.end method


# virtual methods
.method protected _writeValue(Lezvcard/property/TextProperty;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-virtual {p1}, Lezvcard/property/SimpleProperty;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected bridge synthetic _writeValue(Lezvcard/property/VCardProperty;)Ljava/lang/String;
    .locals 0

    .line 36
    check-cast p1, Lezvcard/property/TextProperty;

    invoke-virtual {p0, p1}, Lezvcard/io/scribe/StringPropertyScribe;->_writeValue(Lezvcard/property/TextProperty;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
