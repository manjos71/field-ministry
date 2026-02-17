.class final Lcom/doctoror/geocoder/Address$Bounds$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doctoror/geocoder/Address$Bounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/doctoror/geocoder/Address$Bounds;
    .locals 1

    .line 1014
    new-instance v0, Lcom/doctoror/geocoder/Address$Bounds;

    invoke-direct {v0, p1}, Lcom/doctoror/geocoder/Address$Bounds;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1010
    invoke-virtual {p0, p1}, Lcom/doctoror/geocoder/Address$Bounds$1;->createFromParcel(Landroid/os/Parcel;)Lcom/doctoror/geocoder/Address$Bounds;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/doctoror/geocoder/Address$Bounds;
    .locals 0

    .line 1019
    new-array p1, p1, [Lcom/doctoror/geocoder/Address$Bounds;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1010
    invoke-virtual {p0, p1}, Lcom/doctoror/geocoder/Address$Bounds$1;->newArray(I)[Lcom/doctoror/geocoder/Address$Bounds;

    move-result-object p1

    return-object p1
.end method
