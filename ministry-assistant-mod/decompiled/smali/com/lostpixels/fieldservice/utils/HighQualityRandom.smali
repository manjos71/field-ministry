.class public Lcom/lostpixels/fieldservice/utils/HighQualityRandom;
.super Ljava/util/Random;
.source "SourceFile"


# instance fields
.field private final l:Ljava/util/concurrent/locks/Lock;

.field private u:J

.field private v:J

.field private w:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->l:Ljava/util/concurrent/locks/Lock;

    const-wide v1, 0x38ecac5fb3251641L    # 1.725713593379175E-34

    .line 17
    iput-wide v1, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->v:J

    const-wide/16 v1, 0x1

    .line 18
    iput-wide v1, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->w:J

    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 26
    iget-wide v1, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->v:J

    xor-long/2addr p1, v1

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->u:J

    .line 27
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->nextLong()J

    .line 28
    iget-wide p1, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->u:J

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->v:J

    .line 29
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->nextLong()J

    .line 30
    iget-wide p1, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->v:J

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->w:J

    .line 31
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->nextLong()J

    .line 32
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->nextLong()J

    move-result-wide v0

    rsub-int/lit8 p1, p1, 0x40

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public nextLong()J
    .locals 9

    .line 36
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 38
    :try_start_0
    iget-wide v0, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->u:J

    const-wide v2, 0x27bb2ee687b0b0fdL    # 2.694898184339827E-117

    mul-long v0, v0, v2

    const-wide v2, 0x61c8864680b583bfL    # 1.1033367113085216E163

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->u:J

    .line 39
    iget-wide v2, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->v:J

    const/16 v4, 0x11

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x1f

    shl-long v4, v2, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x8

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    .line 41
    iput-wide v2, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->v:J

    .line 42
    iget-wide v4, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->w:J

    const-wide v6, 0xffffda61L

    mul-long v6, v6, v4

    const/16 v8, 0x20

    ushr-long/2addr v4, v8

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->w:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x15

    shl-long v4, v0, v4

    xor-long/2addr v0, v4

    const/16 v4, 0x23

    ushr-long v4, v0, v4

    xor-long/2addr v0, v4

    const/4 v4, 0x4

    shl-long v4, v0, v4

    xor-long/2addr v0, v4

    add-long/2addr v0, v2

    xor-long/2addr v0, v6

    .line 49
    iget-object v2, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50
    throw v0
.end method
