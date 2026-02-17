.class public Lezvcard/io/scribe/VCardPropertyScribe$Splitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezvcard/io/scribe/VCardPropertyScribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Splitter"
.end annotation


# instance fields
.field private delimiter:C

.field private limit:I

.field private nullEmpties:Z

.field private unescape:Z


# direct methods
.method public constructor <init>(C)V
    .locals 1

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 684
    iput-boolean v0, p0, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->unescape:Z

    .line 685
    iput-boolean v0, p0, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->nullEmpties:Z

    const/4 v0, -0x1

    .line 686
    iput v0, p0, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->limit:I

    .line 693
    iput-char p1, p0, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->delimiter:C

    return-void
.end method

.method private add(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 768
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 770
    iget-boolean v0, p0, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->nullEmpties:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 772
    :cond_0
    iget-boolean v0, p0, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->unescape:Z

    if-eqz v0, :cond_1

    .line 773
    invoke-static {p1}, Lezvcard/io/scribe/VCardPropertyScribe;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 776
    :cond_1
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public limit(I)Lezvcard/io/scribe/VCardPropertyScribe$Splitter;
    .locals 0

    .line 723
    iput p1, p0, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->limit:I

    return-object p0
.end method

.method public split(Ljava/lang/String;)Ljava/util/List;
    .locals 8

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 738
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 739
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 746
    :cond_0
    iget-char v6, p0, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->delimiter:C

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    .line 747
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->add(Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v4, v2, 0x1

    .line 749
    iget v5, p0, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->limit:I

    if-lez v5, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->limit:I

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_1
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 762
    :cond_3
    :goto_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->add(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public unescape(Z)Lezvcard/io/scribe/VCardPropertyScribe$Splitter;
    .locals 0

    .line 702
    iput-boolean p1, p0, Lezvcard/io/scribe/VCardPropertyScribe$Splitter;->unescape:Z

    return-object p0
.end method
