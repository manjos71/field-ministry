.class public Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterStreet"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private address:Ljava/lang/String;

.field private street:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4048
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$1;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$1;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 4063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4064
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4071
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->street:Ljava/lang/String;

    .line 4072
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->address:Ljava/lang/String;

    return-void
.end method

.method public static isBuildingAddress(Landroid/util/Pair;)Z
    .locals 0

    .line 4083
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static toString(Landroid/util/Pair;)Ljava/lang/String;
    .locals 2

    .line 4076
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 4077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4079
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .line 4114
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetList(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Ljava/util/List;
    .locals 6

    .line 4127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4129
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 4132
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4135
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 4136
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_1

    .line 4137
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4141
    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    const/4 v1, 0x1

    .line 4142
    invoke-virtual {p1, v1}, Ljava/text/Collator;->setDecomposition(I)V

    .line 4143
    invoke-virtual {p1, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 4145
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$2;

    invoke-direct {v1, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;Ljava/text/Collator;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 4099
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->street:Ljava/lang/String;

    .line 4100
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->address:Ljava/lang/String;

    return-void
.end method

.method public shouldDisplayAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Z
    .locals 1

    .line 4122
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->address:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public shouldDisplayStreet(Lcom/lostpixels/fieldservice/internal/ministry/Street;)Z
    .locals 1

    .line 4118
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->street:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 4106
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->street:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4109
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->street:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 4093
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->street:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 4094
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->address:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    return-void
.end method
