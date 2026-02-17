.class public Lcom/lostpixels/fieldservice/internal/ministry/Visit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmModel;
.implements Landroid/os/Parcelable;
.implements Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxyInterface;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lostpixels/fieldservice/internal/ministry/Visit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cellNumber:Ljava/lang/String;

.field public comment:Ljava/lang/String;

.field public date:Ljava/util/Date;

.field public floorNumber:I

.field public houseHolder:J

.field public id:J

.field public interested:Z

.field public latitude:D

.field public locationIdFromTerritoryHelper:J

.field public locationIdHash:J

.field public longitude:D

.field public name:Ljava/lang/String;

.field public numVisits:I

.field public parentRef:Lcom/lostpixels/fieldservice/internal/ministry/Address;

.field public phoneNumber:Ljava/lang/String;

.field public previousComment:Ljava/lang/String;

.field public previousDate:Ljava/util/Date;

.field public previousInterested:Z

.field public previousVisitType:I

.field public syncDate:Ljava/util/Date;

.field public visitType:I

.field public visitTypeList:Lio/realm/RealmList;


# direct methods
.method static bridge synthetic -$$Nest$maddVisitTypeToList(Lcom/lostpixels/fieldservice/internal/ministry/Visit;ILjava/util/Date;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->addVisitTypeToList(ILjava/util/Date;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateLocationIdHash(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)J
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->createLocationIdHash(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 171
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$1;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$1;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x5

    .line 59
    iput v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousVisitType:I

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousDate:Ljava/util/Date;

    .line 67
    iput-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousComment:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 70
    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$houseHolder(J)V

    const/4 v4, 0x1

    .line 72
    invoke-virtual {p0, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$interested(Z)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitType(I)V

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$floorNumber(I)V

    .line 82
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$parentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 88
    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$locationIdFromTerritoryHelper(J)V

    .line 89
    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$locationIdHash(J)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$comment(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$phoneNumber(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$cellNumber(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$parentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 113
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$name(Ljava/lang/String;)V

    .line 114
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$date(Ljava/util/Date;)V

    .line 115
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$syncDate(Ljava/util/Date;)V

    .line 116
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getNextPrimaryId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$id(J)V

    const-wide/16 v1, 0x0

    .line 117
    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$longitude(D)V

    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$latitude(D)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$numVisits(I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x5

    .line 59
    iput v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousVisitType:I

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousDate:Ljava/util/Date;

    .line 67
    iput-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousComment:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 70
    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$houseHolder(J)V

    const/4 v4, 0x1

    .line 72
    invoke-virtual {p0, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$interested(Z)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitType(I)V

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$floorNumber(I)V

    .line 82
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$parentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 88
    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$locationIdFromTerritoryHelper(J)V

    .line 89
    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$locationIdHash(J)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$comment(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$phoneNumber(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$cellNumber(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousVisitType:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousInterested:Z

    .line 124
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readDateFromParcel(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousDate:Ljava/util/Date;

    .line 125
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readDateFromParcel(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$date(Ljava/util/Date;)V

    .line 126
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readDateFromParcel(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$syncDate(Ljava/util/Date;)V

    .line 127
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousComment:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$houseHolder(J)V

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$interested(Z)V

    .line 130
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$name(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitType(I)V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$floorNumber(I)V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$id(J)V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$locationIdFromTerritoryHelper(J)V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$locationIdHash(J)V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$latitude(D)V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$longitude(D)V

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$numVisits(I)V

    .line 139
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$comment(Ljava/lang/String;)V

    .line 140
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$phoneNumber(Ljava/lang/String;)V

    .line 141
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$cellNumber(Ljava/lang/String;)V

    .line 142
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitTypeList(Lio/realm/RealmList;)V

    .line 143
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x5

    .line 59
    iput v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousVisitType:I

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousDate:Ljava/util/Date;

    .line 67
    iput-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousComment:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 70
    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$houseHolder(J)V

    const/4 v4, 0x1

    .line 72
    invoke-virtual {p0, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$interested(Z)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitType(I)V

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$floorNumber(I)V

    .line 82
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$parentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 88
    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$locationIdFromTerritoryHelper(J)V

    .line 89
    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$locationIdHash(J)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$comment(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$phoneNumber(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$cellNumber(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$parentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 103
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$name(Ljava/lang/String;)V

    .line 104
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$date(Ljava/util/Date;)V

    .line 105
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$syncDate(Ljava/util/Date;)V

    .line 106
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getNextPrimaryId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$id(J)V

    const-wide/16 v1, 0x0

    .line 107
    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$longitude(D)V

    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$latitude(D)V

    .line 108
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$numVisits(I)V

    return-void
.end method

.method private addVisitTypeToList(ILjava/util/Date;)V
    .locals 2

    .line 727
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 728
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitTypeList(Lio/realm/RealmList;)V

    .line 730
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 731
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 732
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->deleteFromRealm(I)V

    goto :goto_0

    .line 734
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 736
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-direct {v1, p2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;-><init>(Ljava/util/Date;I)V

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createLocationIdHash(Ljava/lang/String;)J
    .locals 3

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$parentRef()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$parentRef()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->convertStatusId(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$latitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$longitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public static getVisit(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Visit;
    .locals 1

    .line 228
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p0

    const-string v0, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    return-object p0
.end method

.method public static getVisitType(Ljava/lang/String;)I
    .locals 1

    .line 186
    const-string v0, "eLetter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 188
    :cond_0
    const-string v0, "eEye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 190
    :cond_1
    const-string v0, "eBusy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 192
    :cond_2
    const-string v0, "eNotInterested"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    .line 194
    :cond_3
    const-string v0, "eInterested"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    .line 196
    :cond_4
    const-string v0, "eUnknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x5

    return p0

    .line 198
    :cond_5
    const-string v0, "eReturnVisit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x6

    return p0

    .line 200
    :cond_6
    const-string v0, "eEmptyHouse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x7

    return p0

    .line 202
    :cond_7
    const-string v0, "eOtherLanguage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p0, 0x8

    return p0

    .line 204
    :cond_8
    const-string v0, "eNotAtHome"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0x9

    return p0

    .line 206
    :cond_9
    const-string v0, "eDoNotCall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p0, 0xa

    return p0

    .line 208
    :cond_a
    const-string v0, "eTrespassing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0xb

    return p0

    .line 210
    :cond_b
    const-string v0, "eReferred"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p0, 0xc

    return p0

    .line 212
    :cond_c
    const-string v0, "eLocked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p0, 0xd

    return p0

    .line 214
    :cond_d
    const-string v0, "eTract"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p0, 0xe

    return p0

    .line 216
    :cond_e
    const-string v0, "eNoAds"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p0, 0xf

    return p0

    .line 218
    :cond_f
    const-string v0, "eIsJW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, 0x10

    return p0

    .line 220
    :cond_10
    const-string v0, "ePerPhone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/16 p0, 0x11

    return p0

    .line 223
    :cond_11
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unknown state"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public delete()V
    .locals 2

    .line 1010
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$22;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$22;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    .line 1020
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 1010
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public duplicate()Lcom/lostpixels/fieldservice/internal/ministry/Visit;
    .locals 3

    .line 843
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 844
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$name(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$floorNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$floorNumber(I)V

    .line 846
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$latitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$latitude(D)V

    .line 847
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$longitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$longitude(D)V

    .line 848
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$phoneNumber(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$cellNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$cellNumber(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 236
    :cond_0
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 239
    :cond_1
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 241
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$id()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public getCallHistory()Ljava/util/List;
    .locals 1

    .line 668
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getCellNumber()Ljava/lang/String;
    .locals 1

    .line 922
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$cellNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 804
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 937
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFloor()I
    .locals 1

    .line 751
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$floorNumber()I

    move-result v0

    return v0
.end method

.method public getHouseHolder()J
    .locals 2

    .line 955
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$houseHolder()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 363
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$id()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 892
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfVisits()I
    .locals 1

    .line 672
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$numVisits()I

    move-result v0

    return v0
.end method

.method public getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$parentRef()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$parentRef()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    return-object v0

    .line 870
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 907
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 5

    .line 766
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$latitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$longitude()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 767
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$latitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$longitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealLocationIdFromTerritoryHelper()J
    .locals 4

    .line 317
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$locationIdFromTerritoryHelper()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getVisitType()I
    .locals 1

    .line 660
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitType()I

    move-result v0

    return v0
.end method

.method public hasLocationHashChanged(Ljava/lang/String;)Z
    .locals 4

    .line 359
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->createLocationIdHash(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$locationIdHash()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasLocationId()Z
    .locals 5

    .line 300
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$locationIdFromTerritoryHelper()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInterested()Z
    .locals 1

    .line 979
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$interested()Z

    move-result v0

    return v0
.end method

.method public isTHLocationUnit()Z
    .locals 5

    .line 245
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$locationIdFromTerritoryHelper()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadFromFileObjectStream(Lio/realm/Realm;Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V
    .locals 6

    const/16 v0, 0x18

    if-gt p3, v0, :cond_1

    .line 445
    :try_start_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$houseHolder(J)V

    .line 447
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$houseHolder()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    const-wide/16 v1, -0x1

    .line 448
    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$houseHolder(J)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_5

    .line 450
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$houseHolder(J)V

    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$houseHolder(J)V

    .line 455
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$interested(Z)V

    .line 456
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$name(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$date(Ljava/util/Date;)V

    if-lt p3, v0, :cond_3

    .line 459
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$syncDate(Ljava/util/Date;)V

    goto :goto_1

    .line 461
    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$syncDate(Ljava/util/Date;)V

    .line 464
    :goto_1
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitType(I)V

    .line 465
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$floorNumber(I)V

    if-gt p3, v0, :cond_4

    .line 467
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$id(J)V

    goto :goto_2

    .line 469
    :cond_4
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$id(J)V

    :goto_2
    const/16 v1, 0x1a

    if-lt p3, v1, :cond_5

    .line 472
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$locationIdFromTerritoryHelper(J)V

    :cond_5
    const/16 v1, 0x1b

    if-lt p3, v1, :cond_6

    .line 474
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$locationIdHash(J)V

    :cond_6
    if-gt p3, v0, :cond_8

    .line 477
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readLatLng()Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 479
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$latitude()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$latitude(D)V

    .line 480
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$longitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$longitude(D)V

    goto :goto_3

    :cond_7
    const-wide/16 v0, 0x0

    .line 482
    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$longitude(D)V

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$latitude(D)V

    goto :goto_3

    .line 486
    :cond_8
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$latitude(D)V

    .line 487
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$longitude(D)V

    .line 489
    :goto_3
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$numVisits(I)V

    .line 490
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$comment(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$phoneNumber(Ljava/lang/String;)V

    const/16 v0, 0x19

    if-lt p3, v0, :cond_9

    .line 493
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$cellNumber(Ljava/lang/String;)V

    .line 495
    :cond_9
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p3

    .line 496
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_a

    .line 497
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitTypeList(Lio/realm/RealmList;)V

    :cond_a
    if-lez p3, :cond_b

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p3, :cond_b

    .line 501
    new-instance v2, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;-><init>(Ljava/util/Date;I)V

    .line 502
    new-array v3, v0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, v2, v3}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    .line 503
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    return-void

    .line 508
    :goto_5
    const-string p2, "Visit.loadFromFileObjectStream 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    throw p1
.end method

.method public loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 566
    const-string v2, "T"

    const-string v3, "D"

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    .line 568
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v10

    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v10, v11, :cond_1a

    .line 569
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v10

    .line 570
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 571
    const-string v11, "H"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/16 v12, 0x18

    const-wide/16 v13, -0x1

    if-eqz v11, :cond_2

    if-gt v0, v12, :cond_1

    .line 573
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$houseHolder(J)V

    .line 574
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$houseHolder()J

    move-result-wide v10

    const-wide/16 v15, 0x0

    cmp-long v12, v10, v15

    if-nez v12, :cond_0

    .line 575
    invoke-virtual {v1, v13, v14}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$houseHolder(J)V

    :cond_0
    :goto_1
    const-wide/16 v19, 0x0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 577
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$houseHolder(J)V

    goto :goto_1

    .line 578
    :cond_2
    const-string v11, "I"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 579
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v10

    invoke-virtual {v1, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$interested(Z)V

    goto :goto_1

    .line 580
    :cond_3
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 581
    new-instance v10, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$date(Ljava/util/Date;)V

    goto :goto_1

    .line 582
    :cond_4
    const-string v11, "SD"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 583
    new-instance v10, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$syncDate(Ljava/util/Date;)V

    goto :goto_1

    .line 584
    :cond_5
    const-string v11, "V"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 585
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitType(I)V

    goto :goto_1

    .line 586
    :cond_6
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 588
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitType(I)V

    goto :goto_1

    .line 589
    :cond_7
    const-string v11, "N"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 590
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$name(Ljava/lang/String;)V

    goto :goto_1

    .line 591
    :cond_8
    const-string v11, "F"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 592
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$floorNumber(I)V

    goto/16 :goto_1

    .line 593
    :cond_9
    const-string v11, "ID"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    if-gt v0, v12, :cond_a

    .line 595
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$id(J)V

    goto/16 :goto_1

    .line 597
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$id(J)V

    goto/16 :goto_1

    .line 598
    :cond_b
    const-string v11, "THID"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 599
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$locationIdFromTerritoryHelper(J)V

    goto/16 :goto_1

    .line 600
    :cond_c
    const-string v11, "HASH"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 601
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$locationIdHash(J)V

    goto/16 :goto_1

    .line 602
    :cond_d
    const-string v11, "NV"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 603
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$numVisits(I)V

    goto/16 :goto_1

    .line 604
    :cond_e
    const-string v11, "CM"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 605
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$comment(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 606
    :cond_f
    const-string v11, "PN"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 607
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$phoneNumber(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 608
    :cond_10
    const-string v11, "CN"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 609
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$cellNumber(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 610
    :cond_11
    const-string v11, "LV"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "\'!"

    const-string v15, "Unrecognized field \'"

    if-eqz v11, :cond_16

    .line 613
    :try_start_1
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v11

    if-nez v11, :cond_12

    .line 614
    new-instance v11, Lio/realm/RealmList;

    invoke-direct {v11}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v1, v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitTypeList(Lio/realm/RealmList;)V

    :cond_12
    const/4 v11, -0x1

    move-wide/from16 v16, v13

    const/16 v18, -0x1

    const-wide/16 v19, 0x0

    .line 615
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v5, :cond_18

    .line 616
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 617
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 618
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 619
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v16

    :goto_3
    move-wide/from16 v4, v16

    move-wide/from16 v16, v13

    move/from16 v13, v18

    goto :goto_4

    .line 620
    :cond_13
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 621
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v18

    goto :goto_3

    :goto_4
    cmp-long v14, v4, v16

    if-eqz v14, :cond_14

    if-eq v13, v11, :cond_14

    .line 628
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v14

    new-instance v11, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v11, v0, v13}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;-><init>(Ljava/util/Date;I)V

    invoke-virtual {v14, v11}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v16

    const/4 v13, -0x1

    :cond_14
    move/from16 v0, p2

    move/from16 v18, v13

    move-wide/from16 v13, v16

    const/4 v11, -0x1

    move-wide/from16 v16, v4

    goto :goto_2

    .line 623
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    const-wide/16 v19, 0x0

    .line 633
    const-string v0, "Lat"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    if-eqz v0, :cond_17

    .line 634
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v6, v4

    goto :goto_5

    .line 635
    :cond_17
    const-string v0, "Lon"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 636
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v8, v4

    :cond_18
    :goto_5
    move/from16 v0, p2

    goto/16 :goto_0

    .line 638
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const-wide/16 v19, 0x0

    .line 642
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 643
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$date(Ljava/util/Date;)V

    .line 645
    :cond_1b
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$syncDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 646
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$syncDate(Ljava/util/Date;)V

    :cond_1c
    cmpl-double v0, v6, v19

    if-eqz v0, :cond_1d

    cmpl-double v0, v8, v19

    if-eqz v0, :cond_1d

    .line 649
    invoke-virtual {v1, v6, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$latitude(D)V

    .line 650
    invoke-virtual {v1, v8, v9}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$longitude(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1d
    return-void

    .line 653
    :goto_6
    const-string v2, "Visit.loadFromFileRaw 1"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    throw v0
.end method

.method public merge(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)Z
    .locals 5

    .line 1024
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$id()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$id()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1025
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public realmGet$cellNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->cellNumber:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$comment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->date:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$floorNumber()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->floorNumber:I

    return v0
.end method

.method public realmGet$houseHolder()J
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->houseHolder:J

    return-wide v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->id:J

    return-wide v0
.end method

.method public realmGet$interested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->interested:Z

    return v0
.end method

.method public realmGet$latitude()D
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->latitude:D

    return-wide v0
.end method

.method public realmGet$locationIdFromTerritoryHelper()J
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->locationIdFromTerritoryHelper:J

    return-wide v0
.end method

.method public realmGet$locationIdHash()J
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->locationIdHash:J

    return-wide v0
.end method

.method public realmGet$longitude()D
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->longitude:D

    return-wide v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$numVisits()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->numVisits:I

    return v0
.end method

.method public realmGet$parentRef()Lcom/lostpixels/fieldservice/internal/ministry/Address;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->parentRef:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    return-object v0
.end method

.method public realmGet$phoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$syncDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->syncDate:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$visitType()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->visitType:I

    return v0
.end method

.method public realmGet$visitTypeList()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->visitTypeList:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmSet$cellNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->cellNumber:Ljava/lang/String;

    return-void
.end method

.method public realmSet$comment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->comment:Ljava/lang/String;

    return-void
.end method

.method public realmSet$date(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->date:Ljava/util/Date;

    return-void
.end method

.method public realmSet$floorNumber(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->floorNumber:I

    return-void
.end method

.method public realmSet$houseHolder(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->houseHolder:J

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->id:J

    return-void
.end method

.method public realmSet$interested(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->interested:Z

    return-void
.end method

.method public realmSet$latitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->latitude:D

    return-void
.end method

.method public realmSet$locationIdFromTerritoryHelper(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->locationIdFromTerritoryHelper:J

    return-void
.end method

.method public realmSet$locationIdHash(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->locationIdHash:J

    return-void
.end method

.method public realmSet$longitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->longitude:D

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$numVisits(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->numVisits:I

    return-void
.end method

.method public realmSet$parentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->parentRef:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    return-void
.end method

.method public realmSet$phoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public realmSet$syncDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->syncDate:Ljava/util/Date;

    return-void
.end method

.method public realmSet$visitType(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->visitType:I

    return-void
.end method

.method public realmSet$visitTypeList(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->visitTypeList:Lio/realm/RealmList;

    return-void
.end method

.method public reset()V
    .locals 2

    .line 812
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$12;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$12;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    .line 822
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 812
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public reset(ZZ)V
    .locals 1

    .line 826
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$13;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;ZZ)V

    .line 838
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 826
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 6

    .line 515
    const-string v0, "T"

    :try_start_0
    const-string v1, "Vs"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 517
    const-string v1, "H"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$houseHolder()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 518
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$interested()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 519
    const-string v1, "I"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$interested()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 520
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 521
    const-string v1, "N"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$date()Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "D"

    if-eqz v1, :cond_2

    .line 523
    :try_start_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 524
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$syncDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 525
    const-string v1, "SD"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$syncDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 527
    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 529
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 530
    const-string v1, "LV"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    .line 532
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmGet$date()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 533
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmGet$date()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 534
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmGet$type()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    goto :goto_1

    .line 537
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 540
    :cond_6
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$floorNumber()I

    move-result v0

    if-eqz v0, :cond_7

    .line 541
    const-string v0, "F"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$floorNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 542
    :cond_7
    const-string v0, "ID"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 543
    const-string v0, "THID"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$locationIdFromTerritoryHelper()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 544
    const-string v0, "HASH"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$locationIdHash()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 545
    const-string v0, "NV"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$numVisits()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 547
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 548
    const-string v0, "CM"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$comment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_8
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 550
    const-string v0, "PN"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_9
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$cellNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$cellNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 552
    const-string v0, "CN"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$cellNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_a
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$latitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$longitude()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_b

    .line 554
    const-string v0, "Lat"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$latitude()D

    move-result-wide v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 555
    const-string v0, "Lon"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$longitude()D

    move-result-wide v1

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 557
    :cond_b
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 559
    :goto_2
    const-string v0, "Visit.saveToFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    throw p1
.end method

.method public setCellNumber(Ljava/lang/String;)V
    .locals 1

    .line 926
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$17;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$17;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V

    .line 932
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 926
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1

    .line 941
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$18;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$18;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/util/Date;)V

    .line 947
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 941
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setFloor(I)V
    .locals 1

    .line 755
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$9;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$9;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;I)V

    .line 761
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 755
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setHouseHolder(J)V
    .locals 1

    .line 959
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$19;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;J)V

    .line 966
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 959
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setLocationIdFromTerritoryHelper(J)V
    .locals 1

    .line 308
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$2;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;J)V

    .line 313
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 308
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 896
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$15;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$15;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V

    .line 902
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 896
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setParent(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 1

    .line 876
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$14;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$14;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 884
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 877
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void

    .line 886
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$parentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    return-void
.end method

.method public setParentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 863
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$parentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    return-void

    .line 862
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 1

    .line 911
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$16;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$16;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V

    .line 917
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 911
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .line 772
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$10;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$10;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 785
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 773
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 685
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;I)V

    .line 707
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 685
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setTypeNoHistory(I)V
    .locals 1

    .line 676
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$5;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$5;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;I)V

    .line 681
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 676
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisitComment(Ljava/lang/String;)V
    .locals 1

    .line 790
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$11;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$11;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V

    .line 799
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 790
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisitInterested(Z)V
    .locals 1

    .line 987
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Z)V

    .line 1006
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 987
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public undoSetType(ZIZLjava/lang/String;Ljava/util/Date;)V
    .locals 7

    .line 711
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;

    move-object v1, p0

    move v5, p1

    move v2, p2

    move v4, p3

    move-object v6, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;ILjava/util/Date;ZZLjava/lang/String;)V

    .line 723
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 711
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public updateLocationIdHash(Ljava/lang/String;)V
    .locals 1

    .line 338
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$4;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$4;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V

    .line 343
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 338
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public updateVisitHistory(Ljava/util/Date;)V
    .locals 1

    .line 740
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$8;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit$8;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/util/Date;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 148
    iget p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousVisitType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousInterested:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 150
    iget-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousDate:Ljava/util/Date;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeDateToParcel(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 151
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$date()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeDateToParcel(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 152
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$syncDate()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeDateToParcel(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 153
    iget-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousComment:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$houseHolder()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 155
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$interested()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 156
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitType()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$floorNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$id()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$locationIdFromTerritoryHelper()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 161
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$locationIdHash()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$latitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 163
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$longitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 164
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$numVisits()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$comment()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$cellNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
