.class Lcom/lostpixels/fieldservice/internal/ministry/Street$AddressComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Street;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddressComparator"
.end annotation


# instance fields
.field final collator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Street$AddressComparator;->collator:Ljava/text/Collator;

    const/4 v1, 0x1

    .line 523
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setDecomposition(I)V

    .line 524
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/internal/ministry/Address;Lcom/lostpixels/fieldservice/internal/ministry/Address;)I
    .locals 19

    move-object/from16 v0, p0

    .line 528
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v1

    .line 529
    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    .line 535
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    .line 539
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2d

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v4, v7, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 541
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v7, :cond_3

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 545
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v7, :cond_4

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    .line 547
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v7, :cond_5

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    .line 551
    :goto_3
    const-string v10, "\\d+"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 552
    invoke-virtual {v10, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 553
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_6

    .line 555
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    goto :goto_4

    :cond_6
    move-wide v15, v13

    :goto_4
    const-wide/16 v17, -0x1

    if-eqz v4, :cond_7

    mul-long v15, v15, v17

    .line 558
    :cond_7
    invoke-virtual {v10, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 559
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 561
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    :cond_8
    if-eqz v5, :cond_9

    mul-long v13, v13, v17

    .line 566
    :cond_9
    const-string v4, "[A-Za-z\u00e5\u00e4\u00f6\u00c5\u00c4\u00d6]"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 567
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 568
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 570
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_a
    move-object v5, v2

    .line 571
    :goto_5
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 572
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 574
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    :cond_b
    if-nez v12, :cond_c

    if-nez v10, :cond_c

    .line 578
    iget-object v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$AddressComparator;->collator:Ljava/text/Collator;

    invoke-virtual {v1, v5, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_c
    if-nez v12, :cond_d

    if-nez v17, :cond_d

    return v7

    :cond_d
    if-nez v12, :cond_e

    if-eqz v17, :cond_e

    if-eqz v10, :cond_e

    if-nez v9, :cond_e

    return v7

    :cond_e
    if-nez v12, :cond_f

    if-eqz v17, :cond_f

    if-eqz v10, :cond_f

    if-eqz v9, :cond_f

    .line 592
    iget-object v2, v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$AddressComparator;->collator:Ljava/text/Collator;

    invoke-virtual {v2, v1, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_f
    if-nez v11, :cond_11

    if-nez v17, :cond_11

    :cond_10
    :goto_6
    sub-long v1, v15, v13

    long-to-int v2, v1

    return v2

    :cond_11
    const/4 v4, -0x1

    if-nez v11, :cond_12

    if-nez v10, :cond_12

    return v4

    :cond_12
    if-nez v11, :cond_13

    if-eqz v17, :cond_13

    if-eqz v10, :cond_13

    if-nez v9, :cond_13

    cmp-long v1, v15, v13

    if-nez v1, :cond_10

    return v4

    :cond_13
    if-nez v11, :cond_14

    if-eqz v17, :cond_14

    if-eqz v10, :cond_14

    if-eqz v9, :cond_14

    return v4

    :cond_14
    if-eqz v11, :cond_19

    if-eqz v12, :cond_19

    if-eqz v17, :cond_19

    if-eqz v10, :cond_19

    if-eqz v8, :cond_16

    if-eqz v9, :cond_16

    .line 620
    iget-object v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$AddressComparator;->collator:Ljava/text/Collator;

    invoke-virtual {v1, v5, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_15

    goto :goto_6

    :cond_15
    return v1

    :cond_16
    if-eqz v8, :cond_17

    if-nez v9, :cond_17

    return v7

    :cond_17
    if-nez v8, :cond_18

    if-eqz v9, :cond_18

    return v4

    :cond_18
    cmp-long v1, v15, v13

    if-nez v1, :cond_10

    .line 632
    iget-object v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$AddressComparator;->collator:Ljava/text/Collator;

    invoke-virtual {v1, v5, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_19
    if-nez v8, :cond_1a

    if-eqz v11, :cond_1a

    if-eqz v12, :cond_1a

    if-nez v17, :cond_1a

    cmp-long v1, v15, v13

    if-nez v1, :cond_10

    return v7

    :cond_1a
    if-eqz v8, :cond_1b

    if-eqz v11, :cond_1b

    if-eqz v12, :cond_1b

    if-nez v17, :cond_1b

    return v7

    :cond_1b
    if-nez v8, :cond_1c

    if-eqz v11, :cond_1c

    if-eqz v12, :cond_1c

    if-nez v10, :cond_1c

    return v4

    :cond_1c
    if-eqz v8, :cond_1d

    if-eqz v11, :cond_1d

    if-eqz v12, :cond_1d

    if-nez v10, :cond_1d

    .line 659
    iget-object v2, v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$AddressComparator;->collator:Ljava/text/Collator;

    invoke-virtual {v2, v1, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_1d
    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 518
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street$AddressComparator;->compare(Lcom/lostpixels/fieldservice/internal/ministry/Address;Lcom/lostpixels/fieldservice/internal/ministry/Address;)I

    move-result p1

    return p1
.end method
