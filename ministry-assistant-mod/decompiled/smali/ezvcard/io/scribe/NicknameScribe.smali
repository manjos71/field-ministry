.class public Lezvcard/io/scribe/NicknameScribe;
.super Lezvcard/io/scribe/ListPropertyScribe;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    const-class v0, Lezvcard/property/Nickname;

    const-string v1, "NICKNAME"

    invoke-direct {p0, v0, v1}, Lezvcard/io/scribe/ListPropertyScribe;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected _newInstance()Lezvcard/property/Nickname;
    .locals 1

    .line 51
    new-instance v0, Lezvcard/property/Nickname;

    invoke-direct {v0}, Lezvcard/property/Nickname;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic _newInstance()Lezvcard/property/TextListProperty;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lezvcard/io/scribe/NicknameScribe;->_newInstance()Lezvcard/property/Nickname;

    move-result-object v0

    return-object v0
.end method
