.class public Lezvcard/io/scribe/SortStringScribe;
.super Lezvcard/io/scribe/StringPropertyScribe;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    const-class v0, Lezvcard/property/SortString;

    const-string v1, "SORT-STRING"

    invoke-direct {p0, v0, v1}, Lezvcard/io/scribe/StringPropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected _parseValue(Ljava/lang/String;)Lezvcard/property/SortString;
    .locals 1

    .line 41
    new-instance v0, Lezvcard/property/SortString;

    invoke-direct {v0, p1}, Lezvcard/property/SortString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic _parseValue(Ljava/lang/String;)Lezvcard/property/VCardProperty;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lezvcard/io/scribe/SortStringScribe;->_parseValue(Ljava/lang/String;)Lezvcard/property/SortString;

    move-result-object p1

    return-object p1
.end method
