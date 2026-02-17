.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->getStreetList(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

.field final synthetic val$coll:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;Ljava/text/Collator;)V
    .locals 0

    .line 4145
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$2;->val$coll:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getChunk(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .line 4153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4154
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    .line 4157
    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$2;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    if-ge p3, p2, :cond_3

    .line 4159
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4160
    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$2;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 4162
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge p3, p2, :cond_3

    .line 4167
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4168
    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$2;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 4170
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 4174
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
.method public compare(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 11

    .line 4180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4183
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4184
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v3, " "

    if-eqz v2, :cond_0

    .line 4185
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4186
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4189
    :cond_0
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4190
    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 4191
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4192
    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4195
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 4200
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_2
    if-ge v3, v0, :cond_6

    if-ge v4, v1, :cond_6

    .line 4203
    invoke-direct {p0, p1, v0, v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$2;->getChunk(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 4204
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    .line 4206
    invoke-direct {p0, p2, v1, v4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$2;->getChunk(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 4207
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    .line 4211
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v7}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$2;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v7}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$2;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4213
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 4214
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, v7, v8

    if-nez v8, :cond_5

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_5

    .line 4218
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sub-int/2addr v8, v10

    if-eqz v8, :cond_3

    return v8

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 4225
    :cond_4
    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$2;->val$coll:Ljava/text/Collator;

    invoke-virtual {v7, v5, v6}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    :cond_5
    if-eqz v8, :cond_2

    return v8

    :cond_6
    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 4145
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$2;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p1

    return p1
.end method
