.class public abstract Lcom/lostpixels/fieldservice/helpfunctions/UIHelpers;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Person;)I
    .locals 5

    .line 51
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAge()I

    move-result v0

    const/16 v1, 0x3c

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result p0

    const v1, 0x7f0800aa

    const v4, 0x7f0800a9

    if-eqz p0, :cond_a

    if-eq p0, v2, :cond_7

    if-eq p0, v3, :cond_6

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    return v4

    :cond_2
    const p0, 0x7f0800ae

    return p0

    :cond_3
    if-ne v0, v3, :cond_4

    const p0, 0x7f0800a7

    return p0

    :cond_4
    if-ne v0, v2, :cond_5

    const p0, 0x7f0800a6

    return p0

    :cond_5
    const p0, 0x7f0800a8

    return p0

    :cond_6
    return v1

    :cond_7
    if-ne v0, v3, :cond_8

    const p0, 0x7f0800ad

    return p0

    :cond_8
    if-ne v0, v2, :cond_9

    const p0, 0x7f0800ab

    return p0

    :cond_9
    const p0, 0x7f0800a5

    return p0

    :cond_a
    if-ne v0, v3, :cond_b

    const p0, 0x7f0800ac

    return p0

    :cond_b
    if-ne v0, v2, :cond_c

    return v4

    :cond_c
    return v1
.end method
