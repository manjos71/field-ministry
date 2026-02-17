.class public final Lcom/google/android/gms/internal/measurement/zzbv;
.super Lcom/google/android/gms/internal/measurement/zzhp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zziz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzbs;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw;->zzo()Lcom/google/android/gms/internal/measurement/zzbw;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhp;-><init>(Lcom/google/android/gms/internal/measurement/zzht;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbv;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbw;->zzp(Lcom/google/android/gms/internal/measurement/zzbw;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw;->zze()I

    move-result v0

    return v0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/measurement/zzby;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbw;->zzf(I)Lcom/google/android/gms/internal/measurement/zzby;

    move-result-object p1

    return-object p1
.end method

.method public final zze(ILcom/google/android/gms/internal/measurement/zzby;)Lcom/google/android/gms/internal/measurement/zzbv;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzq(Lcom/google/android/gms/internal/measurement/zzbw;ILcom/google/android/gms/internal/measurement/zzby;)V

    return-object p0
.end method
