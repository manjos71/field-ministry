.class public abstract Lcom/google/android/gms/internal/measurement/zzga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzix;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zzar([BII)Lcom/google/android/gms/internal/measurement/zzga;
.end method

.method public abstract zzas([BIILcom/google/android/gms/internal/measurement/zzhf;)Lcom/google/android/gms/internal/measurement/zzga;
.end method

.method protected abstract zzat(Lcom/google/android/gms/internal/measurement/zzgb;)Lcom/google/android/gms/internal/measurement/zzga;
.end method

.method public final bridge synthetic zzau(Lcom/google/android/gms/internal/measurement/zziy;)Lcom/google/android/gms/internal/measurement/zzix;
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zziz;->zzbK()Lcom/google/android/gms/internal/measurement/zziy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzga;->zzat(Lcom/google/android/gms/internal/measurement/zzgb;)Lcom/google/android/gms/internal/measurement/zzga;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic zzav([BLcom/google/android/gms/internal/measurement/zzhf;)Lcom/google/android/gms/internal/measurement/zzix;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzga;->zzas([BIILcom/google/android/gms/internal/measurement/zzhf;)Lcom/google/android/gms/internal/measurement/zzga;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzaw([B)Lcom/google/android/gms/internal/measurement/zzix;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzga;->zzar([BII)Lcom/google/android/gms/internal/measurement/zzga;

    move-result-object p1

    return-object p1
.end method
