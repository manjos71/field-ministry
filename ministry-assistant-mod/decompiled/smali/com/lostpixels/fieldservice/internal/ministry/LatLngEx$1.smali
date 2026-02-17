.class Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;
    .locals 1

    .line 45
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-direct {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;
    .locals 0

    .line 50
    new-array p1, p1, [Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx$1;->newArray(I)[Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    move-result-object p1

    return-object p1
.end method
