.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarkerInfoData"
.end annotation


# instance fields
.field public final street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

.field public final visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 0

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 964
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    return-void
.end method
