.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarkerInfo"
.end annotation


# instance fields
.field public final street:J

.field public final visit:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 953
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;->street:J

    .line 954
    iput-wide p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;->visit:J

    return-void
.end method
