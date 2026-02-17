.class public final Lcom/google/android/gms/internal/measurement/zzlj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzfo;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzlj;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlj;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzlj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlj;->zza:Lcom/google/android/gms/internal/measurement/zzlj;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzll;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzll;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zza(Lcom/google/android/gms/internal/measurement/zzfo;)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zzb:Lcom/google/android/gms/internal/measurement/zzfo;

    return-void
.end method

.method public static zzb()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlj;->zza:Lcom/google/android/gms/internal/measurement/zzlj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlj;->zze()Lcom/google/android/gms/internal/measurement/zzlk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static zzc()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlj;->zza:Lcom/google/android/gms/internal/measurement/zzlj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlj;->zze()Lcom/google/android/gms/internal/measurement/zzlk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zzd()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlj;->zza:Lcom/google/android/gms/internal/measurement/zzlj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlj;->zze()Lcom/google/android/gms/internal/measurement/zzlk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlj;->zze()Lcom/google/android/gms/internal/measurement/zzlk;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzlk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zzb:Lcom/google/android/gms/internal/measurement/zzfo;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzfo;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlk;

    return-object v0
.end method
