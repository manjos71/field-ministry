.class Lcom/lostpixels/fieldservice/internal/ministry/Street$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Street;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lostpixels/fieldservice/internal/ministry/Street;
    .locals 1

    .line 94
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/lostpixels/fieldservice/internal/ministry/Street;
    .locals 0

    .line 99
    new-array p1, p1, [Lcom/lostpixels/fieldservice/internal/ministry/Street;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street$1;->newArray(I)[Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object p1

    return-object p1
.end method
