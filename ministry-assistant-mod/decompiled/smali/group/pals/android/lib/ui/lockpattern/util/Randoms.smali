.class public abstract Lgroup/pals/android/lib/ui/lockpattern/util/Randoms;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/util/Randoms;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public static randInt()I
    .locals 5

    .line 40
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/util/Randoms;->RANDOM:Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    rem-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static randInt(I)I
    .locals 1

    if-lez p0, :cond_0

    .line 51
    invoke-static {}, Lgroup/pals/android/lib/ui/lockpattern/util/Randoms;->randInt()I

    move-result v0

    rem-int/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static randIntArray(I)[I
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-static {v0, p0}, Lgroup/pals/android/lib/ui/lockpattern/util/Randoms;->randIntArray(II)[I

    move-result-object p0

    return-object p0
.end method

.method public static randIntArray(II)[I
    .locals 4

    const/4 v0, 0x0

    if-gt p1, p0, :cond_0

    .line 68
    new-array p0, v0, [I

    return-object p0

    .line 70
    :cond_0
    invoke-static {}, Lgroup/pals/android/lib/ui/lockpattern/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    if-ge p0, p1, :cond_1

    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [I

    :goto_1
    if-ge v0, p0, :cond_2

    .line 76
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lgroup/pals/android/lib/ui/lockpattern/util/Randoms;->randInt(I)I

    move-result v2

    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, p1, v0

    .line 78
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method
