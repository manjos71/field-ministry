.class final Lcom/doctoror/geocoder/Address$Viewport$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doctoror/geocoder/Address$Viewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/doctoror/geocoder/Address$Viewport;
    .locals 1

    .line 965
    new-instance v0, Lcom/doctoror/geocoder/Address$Viewport;

    invoke-direct {v0, p1}, Lcom/doctoror/geocoder/Address$Viewport;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 961
    invoke-virtual {p0, p1}, Lcom/doctoror/geocoder/Address$Viewport$1;->createFromParcel(Landroid/os/Parcel;)Lcom/doctoror/geocoder/Address$Viewport;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/doctoror/geocoder/Address$Viewport;
    .locals 0

    .line 970
    new-array p1, p1, [Lcom/doctoror/geocoder/Address$Viewport;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 961
    invoke-virtual {p0, p1}, Lcom/doctoror/geocoder/Address$Viewport$1;->newArray(I)[Lcom/doctoror/geocoder/Address$Viewport;

    move-result-object p1

    return-object p1
.end method
