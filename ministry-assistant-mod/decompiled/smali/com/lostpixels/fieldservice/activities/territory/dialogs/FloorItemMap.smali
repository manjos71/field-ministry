.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mmapFloorItems:Ljava/util/TreeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap$1;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap$1;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->mmapFloorItems:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->mmapFloorItems:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->mmapFloorItems:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public contains(I)Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->mmapFloorItems:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->mmapFloorItems:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMap()Ljava/util/Map;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->mmapFloorItems:Ljava/util/TreeMap;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->mmapFloorItems:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->mmapFloorItems:Ljava/util/TreeMap;

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 119
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->mmapFloorItems:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 106
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->mmapFloorItems:Ljava/util/TreeMap;

    invoke-virtual {p2}, Ljava/util/TreeMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->mmapFloorItems:Ljava/util/TreeMap;

    invoke-virtual {p2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
