.class public Lcom/lostpixels/fieldservice/utils/map/Position;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dLat:D

.field public dLong:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/utils/map/Position;->dLat:D

    .line 5
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/utils/map/Position;->dLong:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/utils/map/Position;->dLat:D

    .line 12
    iput-wide p3, p0, Lcom/lostpixels/fieldservice/utils/map/Position;->dLong:D

    return-void
.end method
