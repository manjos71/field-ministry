.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;
    .locals 1

    .line 4051
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    invoke-direct {v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 4048
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;
    .locals 0

    .line 4055
    new-array p1, p1, [Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 4048
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$1;->newArray(I)[Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    move-result-object p1

    return-object p1
.end method
