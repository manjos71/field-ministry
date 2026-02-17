.class abstract Lcom/google/android/gms/internal/measurement/zzki;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:J

.field static final zzb:Z

.field private static final zzc:Lsun/misc/Unsafe;

.field private static final zzd:Ljava/lang/Class;

.field private static final zze:Z

.field private static final zzf:Z

.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzkh;

.field private static final zzh:Z

.field private static final zzi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzki;->zzr()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzc:Lsun/misc/Unsafe;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zzb()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzki;->zzd:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzE(Ljava/lang/Class;)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzki;->zze:Z

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzki;->zzE(Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lcom/google/android/gms/internal/measurement/zzki;->zzf:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zza()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzkf;

    .line 5
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzkf;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzke;

    .line 6
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzke;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzkg;

    .line 7
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzkg;-><init>(Lsun/misc/Unsafe;)V

    .line 4
    :cond_3
    :goto_0
    sput-object v3, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    const/4 v0, 0x0

    if-nez v3, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzj()Z

    move-result v1

    .line 4
    :goto_1
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzki;->zzh:Z

    if-nez v3, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    .line 9
    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzi()Z

    move-result v1

    .line 4
    :goto_2
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzki;->zzi:Z

    const-class v1, [B

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzC(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/google/android/gms/internal/measurement/zzki;->zza:J

    .line 11
    const-class v1, [Z

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzC(Ljava/lang/Class;)I

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzD(Ljava/lang/Class;)I

    .line 13
    const-class v1, [I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzC(Ljava/lang/Class;)I

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzD(Ljava/lang/Class;)I

    .line 15
    const-class v1, [J

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzC(Ljava/lang/Class;)I

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzD(Ljava/lang/Class;)I

    .line 17
    const-class v1, [F

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzC(Ljava/lang/Class;)I

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzD(Ljava/lang/Class;)I

    .line 19
    const-class v1, [D

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzC(Ljava/lang/Class;)I

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzD(Ljava/lang/Class;)I

    .line 21
    const-class v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzC(Ljava/lang/Class;)I

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzD(Ljava/lang/Class;)I

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzki;->zzF()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    .line 24
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzk(Ljava/lang/reflect/Field;)J

    .line 25
    :cond_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_7

    const/4 v0, 0x1

    :cond_7
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzki;->zzb:Z

    return-void
.end method

.method static synthetic zzA(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzki;->zzJ(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic zzB(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzki;->zzK(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static zzC(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzki;->zzi:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    .line 1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzkh;->zzl(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static zzD(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzki;->zzi:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    .line 1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzkh;->zzm(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static zzE(Ljava/lang/Class;)Z
    .locals 10

    .line 1
    const-class v0, [B

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zza()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzki;->zzd:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v7, "peekLong"

    .line 2
    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v3, v7, v4

    const-string v8, "pokeLong"

    .line 3
    invoke-virtual {v1, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v7, v8, v6

    aput-object v3, v8, v4

    const-string v9, "pokeInt"

    .line 4
    invoke-virtual {v1, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v8, v4, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v3, v8, v6

    const-string v3, "peekInt"

    .line 5
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Class;

    aput-object p0, v3, v2

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v3, v6

    const-string v8, "pokeByte"

    .line 6
    invoke-virtual {v1, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v3, v6, [Ljava/lang/Class;

    aput-object p0, v3, v2

    const-string v8, "peekByte"

    .line 7
    invoke-virtual {v1, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v3, 0x4

    new-array v8, v3, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v6

    aput-object v7, v8, v4

    aput-object v7, v8, v5

    const-string v9, "pokeByteArray"

    .line 8
    invoke-virtual {v1, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Class;

    aput-object p0, v3, v2

    aput-object v0, v3, v6

    aput-object v7, v3, v4

    aput-object v7, v3, v5

    const-string p0, "peekByteArray"

    .line 9
    invoke-virtual {v1, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    return v2
.end method

.method private static zzF()Ljava/lang/reflect/Field;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zza()Z

    move-result v0

    const-class v1, Ljava/nio/Buffer;

    if-eqz v0, :cond_1

    const-string v0, "effectiveDirectAddress"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzG(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, "address"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzG(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzG(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzH(Ljava/lang/Object;J)B
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    .line 1
    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static zzI(Ljava/lang/Object;J)B
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    .line 1
    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static zzJ(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    .line 1
    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p2, p1

    not-int p1, p2

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    .line 2
    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzo(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static zzK(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    .line 1
    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    .line 2
    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzo(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zza()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzki;->zzi:Z

    return v0
.end method

.method static zzb()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzki;->zzh:Z

    return v0
.end method

.method static zzc(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzc:Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static zzd(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    .line 1
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static zze(Ljava/lang/Object;JI)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    .line 1
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzo(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zzf(Ljava/lang/Object;J)J
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    .line 1
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzp(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static zzg(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzkh;->zzq(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static zzh(Ljava/lang/Object;J)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    .line 1
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzc(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static zzi(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    .line 1
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static zzj(Ljava/lang/Object;J)F
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    .line 1
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zze(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static zzk(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    .line 1
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;JF)V

    return-void
.end method

.method static zzl(Ljava/lang/Object;J)D
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    .line 1
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzg(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static zzm(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzkh;->zzh(Ljava/lang/Object;JD)V

    return-void
.end method

.method static zzn(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    .line 1
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzr(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static zzo(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    .line 1
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static zzp([BJ)B
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    sget-wide v1, Lcom/google/android/gms/internal/measurement/zzki;->zza:J

    add-long/2addr v1, p1

    .line 1
    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkh;->zza(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static zzq([BJB)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Lcom/google/android/gms/internal/measurement/zzkh;

    sget-wide v1, Lcom/google/android/gms/internal/measurement/zzki;->zza:J

    add-long/2addr v1, p1

    .line 1
    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzb(Ljava/lang/Object;JB)V

    return-void
.end method

.method static zzr()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzkd;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zzs(Ljava/lang/Throwable;)V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x47

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "logMissingMethod"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.protobuf.UnsafeUtil"

    invoke-virtual {v0, v1, v3, p0, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzt()Ljava/lang/reflect/Field;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzki;->zzF()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzu(Ljava/lang/Object;J)B
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzki;->zzH(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic zzv(Ljava/lang/Object;J)B
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzki;->zzI(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic zzw(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzki;->zzJ(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic zzx(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzki;->zzK(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic zzy(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzki;->zzH(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzz(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzki;->zzI(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
