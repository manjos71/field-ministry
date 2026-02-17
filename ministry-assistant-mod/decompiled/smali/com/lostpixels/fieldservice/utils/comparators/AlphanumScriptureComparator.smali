.class public Lcom/lostpixels/fieldservice/utils/comparators/AlphanumScriptureComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getChunk(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    .line 23
    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumScriptureComparator;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    if-ge p3, p2, :cond_3

    .line 25
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 26
    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumScriptureComparator;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 28
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge p3, p2, :cond_3

    .line 33
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 34
    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumScriptureComparator;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 36
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 40
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/internal/report/Scripture;Lcom/lostpixels/fieldservice/internal/report/Scripture;)I
    .locals 11

    .line 46
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$verse()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 47
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$verse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    if-ge v3, v0, :cond_4

    if-ge v4, v1, :cond_4

    .line 50
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$verse()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v0, v3}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumScriptureComparator;->getChunk(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    .line 53
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$verse()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1, v4}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumScriptureComparator;->getChunk(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 54
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    .line 58
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v7}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumScriptureComparator;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v7}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumScriptureComparator;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 60
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 61
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, v7, v8

    if-nez v8, :cond_3

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_3

    .line 65
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sub-int/2addr v8, v10

    if-eqz v8, :cond_1

    return v8

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    :cond_3
    if-eqz v8, :cond_0

    return v8

    :cond_4
    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    check-cast p2, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumScriptureComparator;->compare(Lcom/lostpixels/fieldservice/internal/report/Scripture;Lcom/lostpixels/fieldservice/internal/report/Scripture;)I

    move-result p1

    return p1
.end method
