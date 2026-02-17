.class public final Lcom/doctoror/geocoder/Address$Viewport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doctoror/geocoder/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Viewport"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/doctoror/geocoder/Address$Viewport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final northeast:Lcom/doctoror/geocoder/Address$Location;

.field public final southwest:Lcom/doctoror/geocoder/Address$Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 961
    new-instance v0, Lcom/doctoror/geocoder/Address$Viewport$1;

    invoke-direct {v0}, Lcom/doctoror/geocoder/Address$Viewport$1;-><init>()V

    sput-object v0, Lcom/doctoror/geocoder/Address$Viewport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    const-class v0, Lcom/doctoror/geocoder/Address$Location;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/doctoror/geocoder/Address$Location;

    iput-object v1, p0, Lcom/doctoror/geocoder/Address$Viewport;->southwest:Lcom/doctoror/geocoder/Address$Location;

    .line 939
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/doctoror/geocoder/Address$Location;

    iput-object p1, p0, Lcom/doctoror/geocoder/Address$Viewport;->northeast:Lcom/doctoror/geocoder/Address$Location;

    return-void
.end method

.method constructor <init>(Lcom/doctoror/geocoder/Address$Location;Lcom/doctoror/geocoder/Address$Location;)V
    .locals 0

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    iput-object p1, p0, Lcom/doctoror/geocoder/Address$Viewport;->southwest:Lcom/doctoror/geocoder/Address$Location;

    .line 934
    iput-object p2, p0, Lcom/doctoror/geocoder/Address$Viewport;->northeast:Lcom/doctoror/geocoder/Address$Location;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Viewport{southwest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/doctoror/geocoder/Address$Viewport;->southwest:Lcom/doctoror/geocoder/Address$Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", northeast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/doctoror/geocoder/Address$Viewport;->northeast:Lcom/doctoror/geocoder/Address$Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 944
    iget-object p2, p0, Lcom/doctoror/geocoder/Address$Viewport;->southwest:Lcom/doctoror/geocoder/Address$Location;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 945
    iget-object p2, p0, Lcom/doctoror/geocoder/Address$Viewport;->northeast:Lcom/doctoror/geocoder/Address$Location;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
