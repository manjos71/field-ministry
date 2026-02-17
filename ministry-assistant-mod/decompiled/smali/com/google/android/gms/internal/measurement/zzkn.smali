.class final Lcom/google/android/gms/internal/measurement/zzkn;
.super Lcom/google/android/gms/internal/measurement/zzkk;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkk;-><init>()V

    return-void
.end method

.method private static zze([BIJI)I
    .locals 2

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 1
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result p0

    .line 2
    invoke-static {p1, p4, p0}, Lcom/google/android/gms/internal/measurement/zzko;->zzg(III)I

    move-result p0

    return p0

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 5
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzko;->zzf(II)I

    move-result p0

    return p0

    .line 4
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzko;->zzi(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method final zzb(I[BII)I
    .locals 17

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    .line 1
    array-length v3, v0

    or-int v4, v1, v2

    sub-int v5, v3, v2

    or-int/2addr v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ltz v4, :cond_14

    int-to-long v3, v1

    int-to-long v1, v2

    sub-long/2addr v1, v3

    long-to-int v2, v1

    const/16 v1, 0x10

    const-wide/16 v8, 0x1

    if-ge v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    move-wide v10, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    add-long v12, v10, v8

    .line 3
    invoke-static {v0, v10, v11}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result v10

    if-ltz v10, :cond_2

    add-int/lit8 v1, v1, 0x1

    move-wide v10, v12

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    sub-int/2addr v2, v1

    int-to-long v10, v1

    add-long/2addr v3, v10

    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-lez v2, :cond_4

    add-long v10, v3, v8

    .line 4
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result v1

    if-ltz v1, :cond_3

    add-int/lit8 v2, v2, -0x1

    move-wide v3, v10

    goto :goto_3

    :cond_3
    move-wide v3, v10

    :cond_4
    if-nez v2, :cond_5

    return v7

    :cond_5
    add-int/lit8 v10, v2, -0x1

    const/16 v11, -0x20

    const/16 v12, -0x41

    const/4 v13, -0x1

    if-ge v1, v11, :cond_9

    if-eqz v10, :cond_8

    add-int/lit8 v2, v2, -0x2

    const/16 v10, -0x3e

    if-lt v1, v10, :cond_7

    add-long v10, v3, v8

    .line 5
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result v1

    if-le v1, v12, :cond_6

    return v13

    :cond_6
    move-wide/from16 p3, v8

    move-wide v3, v10

    const/16 p1, 0x2

    const/4 v14, 0x0

    goto :goto_6

    :cond_7
    return v13

    :cond_8
    return v1

    :cond_9
    const/16 v14, -0x10

    const-wide/16 v15, 0x2

    if-ge v1, v14, :cond_10

    if-ge v10, v6, :cond_a

    .line 11
    invoke-static {v0, v1, v3, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkn;->zze([BIJI)I

    move-result v0

    return v0

    :cond_a
    add-int/lit8 v2, v2, -0x3

    const/16 p1, 0x2

    const/4 v14, 0x0

    add-long v6, v3, v8

    .line 6
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result v10

    if-gt v10, v12, :cond_f

    move-wide/from16 p3, v8

    const/16 v8, -0x60

    if-ne v1, v11, :cond_c

    if-lt v10, v8, :cond_b

    goto :goto_4

    :cond_b
    return v13

    :cond_c
    :goto_4
    const/16 v9, -0x13

    if-ne v1, v9, :cond_e

    if-ge v10, v8, :cond_d

    goto :goto_5

    :cond_d
    return v13

    :cond_e
    :goto_5
    add-long/2addr v3, v15

    .line 7
    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result v1

    if-le v1, v12, :cond_12

    :cond_f
    return v13

    :cond_10
    move-wide/from16 p3, v8

    const/16 p1, 0x2

    const/4 v14, 0x0

    if-ge v10, v5, :cond_11

    .line 12
    invoke-static {v0, v1, v3, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkn;->zze([BIJI)I

    move-result v0

    return v0

    :cond_11
    add-int/lit8 v2, v2, -0x4

    add-long v8, v3, p3

    .line 8
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result v6

    if-gt v6, v12, :cond_13

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v6, v6, 0x70

    add-int/2addr v1, v6

    shr-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_13

    add-long v6, v3, v15

    .line 9
    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result v1

    if-gt v1, v12, :cond_13

    const-wide/16 v8, 0x3

    add-long/2addr v3, v8

    .line 10
    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result v1

    if-le v1, v12, :cond_12

    return v13

    :cond_12
    :goto_6
    move-wide/from16 v8, p3

    const/4 v6, 0x2

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_13
    return v13

    :cond_14
    const/16 p1, 0x2

    const/4 v14, 0x0

    .line 1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v14

    const/4 v3, 0x1

    aput-object v1, v4, v3

    aput-object v2, v4, p1

    const-string v1, "Array length=%d, index=%d, limit=%d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzc([BII)Ljava/lang/String;
    .locals 11

    .line 1
    array-length v0, p1

    or-int v1, p2, p3

    sub-int v2, v0, p2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    const/4 v2, 0x0

    if-ltz v1, :cond_b

    add-int v0, p2, p3

    .line 2
    new-array v7, p3, [C

    const/4 p3, 0x0

    :goto_0
    if-ge p2, v0, :cond_1

    int-to-long v3, p2

    .line 3
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzkj;->zza(B)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    int-to-char v1, v1

    .line 4
    aput-char v1, v7, p3

    move p3, v3

    goto :goto_0

    :cond_1
    :goto_1
    move v8, p3

    :cond_2
    :goto_2
    if-ge p2, v0, :cond_a

    add-int/lit8 p3, p2, 0x1

    int-to-long v3, p2

    .line 5
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzkj;->zza(B)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 p2, v8, 0x1

    int-to-char v1, v3

    .line 6
    aput-char v1, v7, v8

    move v8, p2

    move p2, p3

    :goto_3
    if-ge p2, v0, :cond_2

    int-to-long v3, p2

    .line 7
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result p3

    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/zzkj;->zza(B)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v8, 0x1

    int-to-char p3, p3

    .line 8
    aput-char p3, v7, v8

    move v8, v1

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzkj;->zzb(B)Z

    move-result v1

    if-eqz v1, :cond_6

    if-ge p3, v0, :cond_5

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 v1, v8, 0x1

    int-to-long v4, p3

    .line 9
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result p3

    .line 10
    invoke-static {v3, p3, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkj;->zzc(BB[CI)V

    move v8, v1

    goto :goto_2

    .line 18
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzid;->zzf()Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object p1

    throw p1

    .line 10
    :cond_6
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzkj;->zzd(B)Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v1, v0, -0x1

    if-ge p3, v1, :cond_7

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v4, v8, 0x1

    int-to-long v5, p3

    .line 11
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result p3

    int-to-long v5, v1

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result v1

    .line 13
    invoke-static {v3, p3, v1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkj;->zze(BBB[CI)V

    move v8, v4

    goto :goto_2

    .line 19
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzid;->zzf()Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object p1

    throw p1

    :cond_8
    add-int/lit8 v1, v0, -0x2

    if-ge p3, v1, :cond_9

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 v4, p2, 0x3

    add-int/lit8 p2, p2, 0x4

    int-to-long v5, p3

    .line 14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result p3

    int-to-long v5, v1

    .line 15
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result v5

    int-to-long v9, v4

    .line 16
    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/measurement/zzki;->zzp([BJ)B

    move-result v6

    move v4, p3

    .line 17
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/zzkj;->zzf(BBBB[CI)V

    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_2

    .line 20
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzid;->zzf()Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object p1

    throw p1

    .line 17
    :cond_a
    new-instance p1, Ljava/lang/String;

    .line 21
    invoke-direct {p1, v7, v2, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 1
    :cond_b
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const/4 p2, 0x2

    aput-object p3, v1, p2

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzd(Ljava/lang/CharSequence;[BII)I
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v11, 0x1

    const/16 v3, 0x80

    if-ge v2, v8, :cond_0

    .line 3
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    add-long/2addr v11, v4

    int-to-byte v3, v13

    .line 4
    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzki;->zzq([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-eq v2, v8, :cond_b

    :goto_1
    if-ge v2, v8, :cond_a

    .line 5
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_1

    cmp-long v14, v4, v6

    if-gez v14, :cond_1

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 17
    invoke-static {v1, v4, v5, v13}, Lcom/google/android/gms/internal/measurement/zzki;->zzq([BJB)V

    move-wide/from16 v19, v6

    move-wide/from16 p3, v11

    move-wide v4, v14

    goto/16 :goto_4

    :cond_1
    const/16 v14, 0x800

    const-wide/16 v15, 0x2

    if-ge v13, v14, :cond_2

    const-wide/16 v17, -0x2

    add-long v17, v6, v17

    cmp-long v14, v4, v17

    if-gtz v14, :cond_2

    move-wide/from16 p3, v11

    add-long v11, v4, p3

    ushr-int/lit8 v14, v13, 0x6

    or-int/lit16 v14, v14, 0x3c0

    int-to-byte v14, v14

    .line 15
    invoke-static {v1, v4, v5, v14}, Lcom/google/android/gms/internal/measurement/zzki;->zzq([BJB)V

    add-long/2addr v4, v15

    and-int/lit8 v13, v13, 0x3f

    or-int/2addr v13, v3

    int-to-byte v13, v13

    .line 16
    invoke-static {v1, v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzki;->zzq([BJB)V

    move-wide/from16 v19, v6

    goto/16 :goto_4

    :cond_2
    move-wide/from16 p3, v11

    const v14, 0xdfff

    const-wide/16 v17, 0x3

    const v11, 0xd800

    if-lt v13, v11, :cond_4

    if-le v13, v14, :cond_3

    goto :goto_2

    :cond_3
    move-wide/from16 v19, v6

    goto :goto_3

    :cond_4
    :goto_2
    const-wide/16 v19, -0x3

    add-long v19, v6, v19

    cmp-long v12, v4, v19

    if-gtz v12, :cond_3

    add-long v11, v4, p3

    ushr-int/lit8 v14, v13, 0xc

    or-int/lit16 v14, v14, 0x1e0

    int-to-byte v14, v14

    .line 12
    invoke-static {v1, v4, v5, v14}, Lcom/google/android/gms/internal/measurement/zzki;->zzq([BJB)V

    move-wide/from16 v19, v6

    add-long v6, v4, v15

    ushr-int/lit8 v14, v13, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v3

    int-to-byte v14, v14

    .line 13
    invoke-static {v1, v11, v12, v14}, Lcom/google/android/gms/internal/measurement/zzki;->zzq([BJB)V

    add-long v4, v4, v17

    and-int/lit8 v11, v13, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    .line 14
    invoke-static {v1, v6, v7, v11}, Lcom/google/android/gms/internal/measurement/zzki;->zzq([BJB)V

    goto :goto_4

    :goto_3
    const-wide/16 v6, -0x4

    add-long v6, v19, v6

    cmp-long v12, v4, v6

    if-gtz v12, :cond_7

    add-int/lit8 v6, v2, 0x1

    if-eq v6, v8, :cond_6

    .line 6
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    add-long v11, v4, p3

    ushr-int/lit8 v7, v2, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    .line 8
    invoke-static {v1, v4, v5, v7}, Lcom/google/android/gms/internal/measurement/zzki;->zzq([BJB)V

    add-long v13, v4, v15

    ushr-int/lit8 v7, v2, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v3

    int-to-byte v7, v7

    .line 9
    invoke-static {v1, v11, v12, v7}, Lcom/google/android/gms/internal/measurement/zzki;->zzq([BJB)V

    add-long v11, v4, v17

    ushr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v3

    int-to-byte v7, v7

    .line 10
    invoke-static {v1, v13, v14, v7}, Lcom/google/android/gms/internal/measurement/zzki;->zzq([BJB)V

    const-wide/16 v13, 0x4

    add-long/2addr v4, v13

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 11
    invoke-static {v1, v11, v12, v2}, Lcom/google/android/gms/internal/measurement/zzki;->zzq([BJB)V

    move v2, v6

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v11, p3

    move-wide/from16 v6, v19

    goto/16 :goto_1

    :cond_5
    move v2, v6

    .line 6
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkm;

    add-int/lit8 v2, v2, -0x1

    .line 18
    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzkm;-><init>(II)V

    throw v0

    :cond_7
    if-lt v13, v11, :cond_9

    if-gt v13, v14, :cond_9

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_8

    .line 19
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkm;

    .line 21
    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzkm;-><init>(II)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    long-to-int v0, v4

    return v0

    :cond_b
    long-to-int v0, v4

    return v0

    .line 11
    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    .line 2
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x25

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
