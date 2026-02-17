.class Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;
    .locals 6

    .line 22
    new-instance v0, Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 25
    new-array v2, v1, [I

    .line 26
    new-array v3, v1, [Z

    .line 28
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 29
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_0

    .line 32
    aget v4, v2, p1

    aget-boolean v5, v3, p1

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;
    .locals 0

    .line 40
    new-array p1, p1, [Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable$1;->newArray(I)[Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    move-result-object p1

    return-object p1
.end method
