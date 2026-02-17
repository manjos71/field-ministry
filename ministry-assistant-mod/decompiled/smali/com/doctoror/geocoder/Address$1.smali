.class final Lcom/doctoror/geocoder/Address$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doctoror/geocoder/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/doctoror/geocoder/Address;
    .locals 2

    .line 868
    new-instance v0, Lcom/doctoror/geocoder/Address;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/doctoror/geocoder/Address;-><init>(Landroid/os/Parcel;Lcom/doctoror/geocoder/Address$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 864
    invoke-virtual {p0, p1}, Lcom/doctoror/geocoder/Address$1;->createFromParcel(Landroid/os/Parcel;)Lcom/doctoror/geocoder/Address;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/doctoror/geocoder/Address;
    .locals 0

    .line 873
    new-array p1, p1, [Lcom/doctoror/geocoder/Address;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 864
    invoke-virtual {p0, p1}, Lcom/doctoror/geocoder/Address$1;->newArray(I)[Lcom/doctoror/geocoder/Address;

    move-result-object p1

    return-object p1
.end method
