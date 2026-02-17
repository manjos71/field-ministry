.class public Lezvcard/Ezvcard$ParserChainTextReader;
.super Lezvcard/Ezvcard$ParserChainText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezvcard/Ezvcard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParserChainTextReader"
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private final reader:Ljava/io/Reader;


# direct methods
.method private constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 726
    invoke-direct {p0, v0, v1}, Lezvcard/Ezvcard$ParserChainText;-><init>(ZLezvcard/Ezvcard$1;)V

    .line 727
    iput-object p1, p0, Lezvcard/Ezvcard$ParserChainTextReader;->reader:Ljava/io/Reader;

    .line 728
    iput-object v1, p0, Lezvcard/Ezvcard$ParserChainTextReader;->file:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/Reader;Lezvcard/Ezvcard$1;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lezvcard/Ezvcard$ParserChainTextReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method _constructReader()Lezvcard/io/text/VCardReader;
    .locals 2

    .line 755
    iget-object v0, p0, Lezvcard/Ezvcard$ParserChainTextReader;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    new-instance v1, Lezvcard/io/text/VCardReader;

    invoke-direct {v1, v0}, Lezvcard/io/text/VCardReader;-><init>(Ljava/io/Reader;)V

    return-object v1

    :cond_0
    new-instance v0, Lezvcard/io/text/VCardReader;

    iget-object v1, p0, Lezvcard/Ezvcard$ParserChainTextReader;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Lezvcard/io/text/VCardReader;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic first()Lezvcard/VCard;
    .locals 1

    .line 721
    invoke-super {p0}, Lezvcard/Ezvcard$ParserChainText;->first()Lezvcard/VCard;

    move-result-object v0

    return-object v0
.end method
