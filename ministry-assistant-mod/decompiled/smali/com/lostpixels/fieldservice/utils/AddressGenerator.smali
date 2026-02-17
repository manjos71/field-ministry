.class public abstract Lcom/lostpixels/fieldservice/utils/AddressGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static generateStreet(ILjava/lang/String;CCZ)Lcom/lostpixels/fieldservice/internal/ministry/Street;
    .locals 1

    .line 224
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 225
    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 226
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    .line 227
    invoke-static {p3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    .line 229
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-char p3, p3

    .line 230
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-char p1, p1

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    .line 235
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 236
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    return-object v0

    :cond_0
    const/4 p4, 0x3

    if-eq p0, p4, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-gt p3, p1, :cond_2

    .line 241
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    add-int/lit8 p3, p3, 0x1

    int-to-char p3, p3

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static generateStreet(ILjava/lang/String;IICCIZZ)Lcom/lostpixels/fieldservice/internal/ministry/Street;
    .locals 4

    .line 66
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 67
    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 68
    invoke-static {p4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    .line 69
    invoke-static {p5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p4

    .line 70
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 71
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 74
    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-char p3, p3

    .line 75
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-char p1, p1

    const/4 p4, 0x0

    if-eqz p0, :cond_11

    const/4 v1, 0x1

    if-eq p0, v1, :cond_a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_5

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto/16 :goto_10

    :cond_0
    :goto_0
    if-gt p5, p2, :cond_18

    if-eqz p8, :cond_2

    if-eqz p7, :cond_1

    .line 136
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 137
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto/16 :goto_3

    .line 139
    :cond_1
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 140
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto :goto_3

    :cond_2
    move p0, p3

    :goto_1
    if-gt p0, p1, :cond_4

    if-eqz p7, :cond_3

    .line 145
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto :goto_2

    .line 147
    :cond_3
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    :goto_2
    add-int/lit8 p0, p0, 0x1

    int-to-char p0, p0

    goto :goto_1

    :cond_4
    :goto_3
    add-int/2addr p5, p6

    goto/16 :goto_0

    :cond_5
    :goto_4
    if-gt p5, p2, :cond_18

    if-eqz p8, :cond_7

    if-eqz p7, :cond_6

    .line 157
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 158
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto/16 :goto_7

    .line 160
    :cond_6
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 161
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto :goto_7

    :cond_7
    move p0, p3

    :goto_5
    if-gt p0, p1, :cond_9

    if-eqz p7, :cond_8

    .line 166
    new-instance p6, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p6, v1, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto :goto_6

    .line 168
    :cond_8
    new-instance p6, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p6, v1, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    :goto_6
    add-int/lit8 p0, p0, 0x1

    int-to-char p0, p0

    goto :goto_5

    :cond_9
    :goto_7
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_4

    .line 107
    :cond_a
    rem-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_b

    add-int/lit8 p5, p5, 0x1

    .line 110
    :cond_b
    rem-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_c

    add-int/lit8 p2, p2, -0x1

    :cond_c
    :goto_8
    if-gt p5, p2, :cond_18

    if-eqz p8, :cond_e

    if-eqz p7, :cond_d

    .line 116
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 117
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto/16 :goto_b

    .line 119
    :cond_d
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 120
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto :goto_b

    :cond_e
    move p0, p3

    :goto_9
    if-gt p0, p1, :cond_10

    if-eqz p7, :cond_f

    .line 125
    new-instance p6, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p6, v1, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto :goto_a

    .line 127
    :cond_f
    new-instance p6, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p6, v1, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    :goto_a
    add-int/lit8 p0, p0, 0x1

    int-to-char p0, p0

    goto :goto_9

    :cond_10
    :goto_b
    add-int/lit8 p5, p5, 0x2

    goto/16 :goto_8

    .line 81
    :cond_11
    rem-int/lit8 p0, p5, 0x2

    if-nez p0, :cond_12

    add-int/lit8 p5, p5, 0x1

    .line 84
    :cond_12
    rem-int/lit8 p0, p2, 0x2

    if-nez p0, :cond_13

    add-int/lit8 p2, p2, -0x1

    :cond_13
    :goto_c
    if-gt p5, p2, :cond_18

    if-eqz p8, :cond_15

    if-eqz p7, :cond_14

    .line 90
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 91
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto/16 :goto_f

    .line 93
    :cond_14
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 94
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto :goto_f

    :cond_15
    move p0, p3

    :goto_d
    if-gt p0, p1, :cond_17

    if-eqz p7, :cond_16

    .line 99
    new-instance p6, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p6, v1, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto :goto_e

    .line 101
    :cond_16
    new-instance p6, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p6, v1, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    :goto_e
    add-int/lit8 p0, p0, 0x1

    int-to-char p0, p0

    goto :goto_d

    :cond_17
    :goto_f
    add-int/lit8 p5, p5, 0x2

    goto/16 :goto_c

    :cond_18
    :goto_10
    return-object v0
.end method

.method public static generateStreet(ILjava/lang/String;III)Lcom/lostpixels/fieldservice/internal/ministry/Street;
    .locals 2

    .line 18
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 19
    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 20
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 21
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 p3, 0x0

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_4

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_8

    .line 50
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    add-int/2addr p1, p4

    goto :goto_0

    :cond_1
    :goto_1
    if-gt p1, p2, :cond_8

    .line 56
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 38
    :cond_2
    rem-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 41
    :cond_3
    rem-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_4

    add-int/lit8 p2, p2, -0x1

    :cond_4
    :goto_2
    if-gt p1, p2, :cond_8

    .line 45
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    .line 27
    :cond_5
    rem-int/lit8 p0, p1, 0x2

    if-nez p0, :cond_6

    add-int/lit8 p1, p1, 0x1

    .line 30
    :cond_6
    rem-int/lit8 p0, p2, 0x2

    if-nez p0, :cond_7

    add-int/lit8 p2, p2, -0x1

    :cond_7
    :goto_3
    if-gt p1, p2, :cond_8

    .line 34
    new-instance p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_3

    :cond_8
    :goto_4
    return-object v0
.end method

.method public static generateStreetGerman(ILjava/lang/String;IIIII)Lcom/lostpixels/fieldservice/internal/ministry/Street;
    .locals 3

    .line 180
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 181
    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 182
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 183
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 186
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 187
    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    const/4 p5, 0x2

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, p5, :cond_0

    goto :goto_1

    :cond_0
    const/4 p6, 0x1

    goto :goto_1

    .line 200
    :cond_1
    rem-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 202
    :cond_2
    rem-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_3

    :goto_0
    add-int/lit8 p2, p2, -0x1

    :cond_3
    const/4 p6, 0x2

    goto :goto_1

    .line 193
    :cond_4
    rem-int/lit8 p0, p1, 0x2

    if-nez p0, :cond_5

    add-int/lit8 p1, p1, 0x1

    .line 195
    :cond_5
    rem-int/lit8 p0, p2, 0x2

    if-nez p0, :cond_3

    goto :goto_0

    :goto_1
    if-gt p1, p2, :cond_7

    move p0, p3

    :goto_2
    if-gt p0, p4, :cond_6

    .line 215
    new-instance p5, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p5, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p5}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_6
    add-int/2addr p1, p6

    goto :goto_1

    :cond_7
    return-object v0
.end method
