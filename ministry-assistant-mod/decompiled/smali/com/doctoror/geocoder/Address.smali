.class public Lcom/doctoror/geocoder/Address;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doctoror/geocoder/Address$Bounds;,
        Lcom/doctoror/geocoder/Address$Viewport;,
        Lcom/doctoror/geocoder/Address$Location;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/doctoror/geocoder/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdministrativeAreaLevel1:Ljava/lang/String;

.field private mAdministrativeAreaLevel2:Ljava/lang/String;

.field private mAdministrativeAreaLevel3:Ljava/lang/String;

.field private mAdministrativeAreaLevel4:Ljava/lang/String;

.field private mAdministrativeAreaLevel5:Ljava/lang/String;

.field private mAirport:Ljava/lang/String;

.field private mBounds:Lcom/doctoror/geocoder/Address$Bounds;

.field private mBusStation:Ljava/lang/String;

.field private mColloquialArea:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mEstablishment:Ljava/lang/String;

.field private mFloor:Ljava/lang/String;

.field private mFormattedAddress:Ljava/lang/String;

.field private mIntersection:Ljava/lang/String;

.field private mLocality:Ljava/lang/String;

.field private mLocation:Lcom/doctoror/geocoder/Address$Location;

.field private mLocationType:Ljava/lang/String;

.field private mNaturalFeature:Ljava/lang/String;

.field private mNeighborhood:Ljava/lang/String;

.field private mPark:Ljava/lang/String;

.field private mParking:Ljava/lang/String;

.field private mPointOfInterest:Ljava/lang/String;

.field private mPolitical:Ljava/lang/String;

.field private mPostBox:Ljava/lang/String;

.field private mPostTown:Ljava/lang/String;

.field private mPostalCode:Ljava/lang/String;

.field private mPremise:Ljava/lang/String;

.field private mRoom:Ljava/lang/String;

.field private mRoute:Ljava/lang/String;

.field private mStreetAddress:Ljava/lang/String;

.field private mStreetNumber:Ljava/lang/String;

.field private mSubLocality:Ljava/lang/String;

.field private mSubLocalityLevel1:Ljava/lang/String;

.field private mSubLocalityLevel2:Ljava/lang/String;

.field private mSubLocalityLevel3:Ljava/lang/String;

.field private mSubLocalityLevel4:Ljava/lang/String;

.field private mSubLocalityLevel5:Ljava/lang/String;

.field private mSubPremise:Ljava/lang/String;

.field private mTrainStation:Ljava/lang/String;

.field private mTransitStation:Ljava/lang/String;

.field private mViewport:Lcom/doctoror/geocoder/Address$Viewport;

.field private mWard:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 864
    new-instance v0, Lcom/doctoror/geocoder/Address$1;

    invoke-direct {v0}, Lcom/doctoror/geocoder/Address$1;-><init>()V

    sput-object v0, Lcom/doctoror/geocoder/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mFormattedAddress:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mStreetAddress:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mRoute:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mIntersection:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mPolitical:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mCountry:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mCountryCode:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel1:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel2:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel3:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel4:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel5:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mColloquialArea:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mLocality:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mWard:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mSubLocality:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel1:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel2:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel3:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel4:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel5:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mNeighborhood:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mPremise:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mSubPremise:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mPostalCode:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mNaturalFeature:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mAirport:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mPark:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mPointOfInterest:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mFloor:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mEstablishment:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mParking:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mPostBox:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mPostTown:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mRoom:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mStreetNumber:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mBusStation:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mTrainStation:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mTransitStation:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mLocationType:Ljava/lang/String;

    .line 173
    const-class v0, Lcom/doctoror/geocoder/Address$Location;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/doctoror/geocoder/Address$Location;

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mLocation:Lcom/doctoror/geocoder/Address$Location;

    .line 174
    const-class v0, Lcom/doctoror/geocoder/Address$Viewport;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/doctoror/geocoder/Address$Viewport;

    iput-object v0, p0, Lcom/doctoror/geocoder/Address;->mViewport:Lcom/doctoror/geocoder/Address$Viewport;

    .line 175
    const-class v0, Lcom/doctoror/geocoder/Address$Bounds;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/doctoror/geocoder/Address$Bounds;

    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mBounds:Lcom/doctoror/geocoder/Address$Bounds;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/doctoror/geocoder/Address$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/doctoror/geocoder/Address;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/doctoror/geocoder/Address;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/doctoror/geocoder/Address;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/doctoror/geocoder/Address;->mLocality:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/doctoror/geocoder/Address$Location;
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/doctoror/geocoder/Address;->mLocation:Lcom/doctoror/geocoder/Address$Location;

    return-object v0
.end method

.method public getPostTown()Ljava/lang/String;
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/doctoror/geocoder/Address;->mPostTown:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/doctoror/geocoder/Address;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRoute()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/doctoror/geocoder/Address;->mRoute:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetNumber()Ljava/lang/String;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/doctoror/geocoder/Address;->mStreetNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setAdministrativeAreaLevel1(Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel1:Ljava/lang/String;

    return-void
.end method

.method public setAdministrativeAreaLevel2(Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel2:Ljava/lang/String;

    return-void
.end method

.method public setAdministrativeAreaLevel3(Ljava/lang/String;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel3:Ljava/lang/String;

    return-void
.end method

.method public setAdministrativeAreaLevel4(Ljava/lang/String;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel4:Ljava/lang/String;

    return-void
.end method

.method public setAdministrativeAreaLevel5(Ljava/lang/String;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel5:Ljava/lang/String;

    return-void
.end method

.method public setAirport(Ljava/lang/String;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mAirport:Ljava/lang/String;

    return-void
.end method

.method public setBounds(Lcom/doctoror/geocoder/Address$Bounds;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mBounds:Lcom/doctoror/geocoder/Address$Bounds;

    return-void
.end method

.method public setBusStation(Ljava/lang/String;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mBusStation:Ljava/lang/String;

    return-void
.end method

.method public setColloquialArea(Ljava/lang/String;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mColloquialArea:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mCountry:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public setEstablishment(Ljava/lang/String;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mEstablishment:Ljava/lang/String;

    return-void
.end method

.method public setFloor(Ljava/lang/String;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mFloor:Ljava/lang/String;

    return-void
.end method

.method public setFormattedAddress(Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mFormattedAddress:Ljava/lang/String;

    return-void
.end method

.method public setIntersection(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mIntersection:Ljava/lang/String;

    return-void
.end method

.method public setLocality(Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mLocality:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Lcom/doctoror/geocoder/Address$Location;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mLocation:Lcom/doctoror/geocoder/Address$Location;

    return-void
.end method

.method public setLocationType(Ljava/lang/String;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mLocationType:Ljava/lang/String;

    return-void
.end method

.method public setNaturalFeature(Ljava/lang/String;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mNaturalFeature:Ljava/lang/String;

    return-void
.end method

.method public setNeighborhood(Ljava/lang/String;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mNeighborhood:Ljava/lang/String;

    return-void
.end method

.method public setPark(Ljava/lang/String;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mPark:Ljava/lang/String;

    return-void
.end method

.method public setParking(Ljava/lang/String;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mParking:Ljava/lang/String;

    return-void
.end method

.method public setPointOfInterest(Ljava/lang/String;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mPointOfInterest:Ljava/lang/String;

    return-void
.end method

.method public setPolitical(Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mPolitical:Ljava/lang/String;

    return-void
.end method

.method public setPostBox(Ljava/lang/String;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mPostBox:Ljava/lang/String;

    return-void
.end method

.method public setPostTown(Ljava/lang/String;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mPostTown:Ljava/lang/String;

    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mPostalCode:Ljava/lang/String;

    return-void
.end method

.method public setPremise(Ljava/lang/String;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mPremise:Ljava/lang/String;

    return-void
.end method

.method public setRoom(Ljava/lang/String;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mRoom:Ljava/lang/String;

    return-void
.end method

.method public setRoute(Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mRoute:Ljava/lang/String;

    return-void
.end method

.method public setStreetAddress(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mStreetAddress:Ljava/lang/String;

    return-void
.end method

.method public setStreetNumber(Ljava/lang/String;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mStreetNumber:Ljava/lang/String;

    return-void
.end method

.method public setSubLocality(Ljava/lang/String;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mSubLocality:Ljava/lang/String;

    return-void
.end method

.method public setSubLocalityLevel1(Ljava/lang/String;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel1:Ljava/lang/String;

    return-void
.end method

.method public setSubLocalityLevel2(Ljava/lang/String;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel2:Ljava/lang/String;

    return-void
.end method

.method public setSubLocalityLevel3(Ljava/lang/String;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel3:Ljava/lang/String;

    return-void
.end method

.method public setSubLocalityLevel4(Ljava/lang/String;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel4:Ljava/lang/String;

    return-void
.end method

.method public setSubLocalityLevel5(Ljava/lang/String;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel5:Ljava/lang/String;

    return-void
.end method

.method public setSubPremise(Ljava/lang/String;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mSubPremise:Ljava/lang/String;

    return-void
.end method

.method public setTrainStation(Ljava/lang/String;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mTrainStation:Ljava/lang/String;

    return-void
.end method

.method public setTransitStation(Ljava/lang/String;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mTransitStation:Ljava/lang/String;

    return-void
.end method

.method public setViewport(Lcom/doctoror/geocoder/Address$Viewport;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mViewport:Lcom/doctoror/geocoder/Address$Viewport;

    return-void
.end method

.method public setWard(Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/doctoror/geocoder/Address;->mWard:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address{mFormattedAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/doctoror/geocoder/Address;->mFormattedAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mStreetAddress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mStreetAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mRoute=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mRoute:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mIntersection=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mIntersection:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPolitical=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mPolitical:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCountry=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCountryCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAdministrativeAreaLevel1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAdministrativeAreaLevel2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAdministrativeAreaLevel3=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAdministrativeAreaLevel4=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel4:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAdministrativeAreaLevel5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mColloquialArea=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mColloquialArea:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mLocality=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mLocality:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mWard=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mWard:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSubLocality=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mSubLocality:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSubLocalityLevel1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSubLocalityLevel2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSubLocalityLevel3=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSubLocalityLevel4=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel4:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSubLocalityLevel5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mNeighborhood=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mNeighborhood:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPremise=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mPremise:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSubPremise=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mSubPremise:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPostalCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mPostalCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mNaturalFeature=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mNaturalFeature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAirport=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mAirport:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPark=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mPark:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPointOfInterest=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mPointOfInterest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mFloor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mFloor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mEstablishment=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mEstablishment:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mParking=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mParking:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPostBox=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mPostBox:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPostTown=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mPostTown:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mRoom=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mRoom:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mStreetNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mStreetNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mBusStation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mBusStation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTrainStation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mTrainStation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTransitStation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mTransitStation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mLocation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mLocation:Lcom/doctoror/geocoder/Address$Location;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mLocationType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/doctoror/geocoder/Address;->mLocationType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mViewport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/doctoror/geocoder/Address;->mViewport:Lcom/doctoror/geocoder/Address$Viewport;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/doctoror/geocoder/Address;->mBounds:Lcom/doctoror/geocoder/Address$Bounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 180
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mFormattedAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mStreetAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mRoute:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mIntersection:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mPolitical:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel3:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel4:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mAdministrativeAreaLevel5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mColloquialArea:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mLocality:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mWard:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mSubLocality:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel3:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel4:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mSubLocalityLevel5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mNeighborhood:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mPremise:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mSubPremise:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mPostalCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mNaturalFeature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mAirport:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mPark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mPointOfInterest:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mFloor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mEstablishment:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mParking:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mPostBox:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mPostTown:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mRoom:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mStreetNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mBusStation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mTrainStation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mTransitStation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mLocationType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mLocation:Lcom/doctoror/geocoder/Address$Location;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 223
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mViewport:Lcom/doctoror/geocoder/Address$Viewport;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 224
    iget-object p2, p0, Lcom/doctoror/geocoder/Address;->mBounds:Lcom/doctoror/geocoder/Address$Bounds;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
