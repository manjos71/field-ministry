.class abstract Lezvcard/Ezvcard$ParserChain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezvcard/Ezvcard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ParserChain"
.end annotation


# instance fields
.field final index:Lezvcard/io/scribe/ScribeIndex;

.field final this_:Ljava/lang/Object;

.field warnings:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    new-instance v0, Lezvcard/io/scribe/ScribeIndex;

    invoke-direct {v0}, Lezvcard/io/scribe/ScribeIndex;-><init>()V

    iput-object v0, p0, Lezvcard/Ezvcard$ParserChain;->index:Lezvcard/io/scribe/ScribeIndex;

    .line 600
    iput-object p0, p0, Lezvcard/Ezvcard$ParserChain;->this_:Ljava/lang/Object;

    return-void
.end method
