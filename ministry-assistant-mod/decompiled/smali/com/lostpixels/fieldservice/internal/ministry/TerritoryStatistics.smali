.class public Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bIsBuilding:Z

.field public bIsPhone:Z

.field public bIsRural:Z

.field public bIsStreet:Z

.field public final numAddresses:I

.field public final numAddressesLeft:I

.field public final numInterested:I

.field public final percentDone:I


# direct methods
.method constructor <init>(IIIZZZZ)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->numAddresses:I

    sub-int v0, p1, p2

    .line 16
    iput v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->numAddressesLeft:I

    .line 17
    iput p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->numInterested:I

    if-lez p1, :cond_0

    mul-int/lit8 p2, p2, 0x64

    .line 18
    div-int/2addr p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->percentDone:I

    .line 19
    iput-boolean p4, p0, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsRural:Z

    .line 20
    iput-boolean p5, p0, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsPhone:Z

    .line 21
    iput-boolean p6, p0, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsStreet:Z

    .line 22
    iput-boolean p7, p0, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsBuilding:Z

    return-void
.end method
