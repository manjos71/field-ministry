.class public abstract Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static genCaptchaPattern(I)Ljava/util/ArrayList;
    .locals 18

    move/from16 v0, p0

    if-lez v0, :cond_d

    const/16 v1, 0x9

    if-gt v0, v1, :cond_d

    .line 153
    invoke-static {}, Lgroup/pals/android/lib/ui/lockpattern/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 154
    invoke-static {v1}, Lgroup/pals/android/lib/ui/lockpattern/util/Randoms;->randInt(I)I

    move-result v1

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v0, :cond_b

    .line 166
    div-int/lit8 v3, v1, 0x3

    const/4 v5, 0x3

    .line 167
    rem-int/2addr v1, v5

    rsub-int/lit8 v6, v3, 0x3

    .line 174
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    rsub-int/lit8 v7, v1, 0x3

    .line 175
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 173
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, -0x1

    :goto_1
    if-gt v9, v6, :cond_9

    sub-int v11, v3, v9

    sub-int v12, v1, v9

    add-int v13, v3, v9

    add-int v14, v1, v9

    const/4 v15, 0x4

    .line 200
    invoke-static {v15}, Lgroup/pals/android/lib/ui/lockpattern/util/Randoms;->randIntArray(I)[I

    move-result-object v15

    .line 201
    array-length v7, v15

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_8

    aget v5, v15, v4

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_2

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1

    const/4 v8, 0x3

    if-eq v5, v8, :cond_0

    goto/16 :goto_7

    :cond_0
    if-ltz v12, :cond_6

    add-int/lit8 v5, v11, 0x1

    const/4 v0, 0x0

    .line 253
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 254
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 253
    invoke-static {v5, v0}, Lgroup/pals/android/lib/ui/lockpattern/util/Randoms;->randIntArray(II)[I

    move-result-object v0

    .line 256
    array-length v5, v0

    const/4 v8, 0x0

    const/16 v16, 0x3

    :goto_3
    if-ge v8, v5, :cond_6

    aget v10, v0, v8

    mul-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v12

    move-object/from16 v17, v0

    .line 259
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v17

    const/4 v10, -0x1

    goto :goto_3

    :cond_1
    const/4 v8, 0x3

    if-ge v13, v8, :cond_6

    const/4 v0, 0x0

    .line 237
    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 238
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 237
    invoke-static {v5, v0}, Lgroup/pals/android/lib/ui/lockpattern/util/Randoms;->randIntArray(II)[I

    move-result-object v0

    .line 240
    array-length v5, v0

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v5, :cond_6

    aget v10, v0, v8

    mul-int/lit8 v17, v13, 0x3

    add-int v10, v17, v10

    move-object/from16 v17, v0

    .line 243
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v17

    const/4 v10, -0x1

    goto :goto_4

    :cond_2
    const/4 v8, 0x3

    if-ge v14, v8, :cond_6

    add-int/lit8 v0, v11, 0x1

    const/4 v5, 0x0

    .line 221
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v5, v13, 0x1

    .line 222
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 221
    invoke-static {v0, v5}, Lgroup/pals/android/lib/ui/lockpattern/util/Randoms;->randIntArray(II)[I

    move-result-object v0

    .line 224
    array-length v5, v0

    move/from16 v17, v10

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v5, :cond_3

    aget v16, v0, v10

    mul-int/lit8 v17, v16, 0x3

    add-int v17, v17, v14

    .line 227
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x3

    const/16 v17, -0x1

    goto :goto_5

    :cond_3
    move/from16 v10, v17

    goto :goto_7

    :cond_4
    if-ltz v11, :cond_6

    const/4 v0, 0x0

    .line 205
    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v8, v14, 0x1

    const/4 v0, 0x3

    .line 206
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 205
    invoke-static {v5, v8}, Lgroup/pals/android/lib/ui/lockpattern/util/Randoms;->randIntArray(II)[I

    move-result-object v5

    .line 208
    array-length v8, v5

    move/from16 v16, v10

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v8, :cond_5

    aget v16, v5, v10

    mul-int/lit8 v17, v11, 0x3

    add-int v16, v17, v16

    .line 211
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v10, v10, 0x1

    const/4 v0, 0x3

    const/16 v16, -0x1

    goto :goto_6

    :cond_5
    move/from16 v10, v16

    :cond_6
    :goto_7
    if-ltz v10, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p0

    const/4 v5, 0x3

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_8
    :goto_8
    if-ltz v10, :cond_a

    :cond_9
    move v1, v10

    goto :goto_9

    :cond_a
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x3

    const/4 v8, 0x1

    move/from16 v0, p0

    goto/16 :goto_1

    .line 277
    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, p0

    goto/16 :goto_0

    .line 280
    :cond_b
    invoke-static {}, Lgroup/pals/android/lib/ui/lockpattern/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 281
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v1, :cond_c

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 282
    invoke-static {v3}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->of(I)Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_c
    return-object v0

    .line 150
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "`size` must be in range [1, `LockPatternView.MATRIX_SIZE`]"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static patternToSha1(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    .line 112
    const-string v0, ""

    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 113
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 115
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 116
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x0

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6

    .line 84
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 87
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 89
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 91
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    .line 92
    invoke-virtual {v4}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getRow()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    invoke-virtual {v4}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    add-int/2addr v5, v4

    int-to-byte v4, v5

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 61
    invoke-static {}, Lgroup/pals/android/lib/ui/lockpattern/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 64
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 65
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 66
    aget-byte v2, p0, v1

    .line 67
    div-int/lit8 v3, v2, 0x3

    rem-int/lit8 v2, v2, 0x3

    invoke-static {v3, v2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->of(II)Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-object v0
.end method
