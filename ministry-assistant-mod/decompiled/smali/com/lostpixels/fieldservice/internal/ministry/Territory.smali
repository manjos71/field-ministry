.class public Lcom/lostpixels/fieldservice/internal/ministry/Territory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmModel;
.implements Landroid/os/Parcelable;
.implements Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxyInterface;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lostpixels/fieldservice/internal/ministry/Territory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public city:Ljava/lang/String;

.field public dateCreated:Ljava/util/Date;

.field public disableOldTerrMsg:Z

.field public id:J

.field public isHidden:Z

.field public isReturned:Z

.field public lastUpdated:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public note:Ljava/lang/String;

.field public oldTerritoryDlgDisplayed:Z

.field public region:Ljava/lang/String;

.field public shouldSort:Z

.field public streets:Lio/realm/RealmList;

.field public territoryBorder:Lio/realm/RealmList;

.field public territoryCardPath:Ljava/lang/String;

.field public urlToTerritory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$1;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$1;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 73
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$name(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$region(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$territoryCardPath(Ljava/lang/String;)V

    .line 76
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$dateCreated(Ljava/util/Date;)V

    .line 77
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$lastUpdated(Ljava/util/Date;)V

    .line 78
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 79
    new-instance v1, Lio/realm/RealmList;

    invoke-direct {v1}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$streets(Lio/realm/RealmList;)V

    :cond_1
    const/4 v1, 0x1

    .line 80
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$shouldSort(Z)V

    .line 81
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getNextPrimaryId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$id(J)V

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$disableOldTerrMsg(Z)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$oldTerritoryDlgDisplayed(Z)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$isHidden(Z)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$isReturned(Z)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$city(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 90
    :cond_0
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readDateFromParcel(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$dateCreated(Ljava/util/Date;)V

    .line 91
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readDateFromParcel(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$lastUpdated(Ljava/util/Date;)V

    .line 92
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$name(Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$region(Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$city(Ljava/lang/String;)V

    .line 95
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$territoryCardPath(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$shouldSort(Z)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$id(J)V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$disableOldTerrMsg(Z)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$oldTerritoryDlgDisplayed(Z)V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$isHidden(Z)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$isReturned(Z)V

    .line 102
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$note(Ljava/lang/String;)V

    .line 103
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$urlToTerritory(Ljava/lang/String;)V

    .line 104
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$streets(Lio/realm/RealmList;)V

    .line 105
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v0

    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 106
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$territoryBorder(Lio/realm/RealmList;)V

    .line 107
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryBorder()Lio/realm/RealmList;

    move-result-object v0

    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static calcStats(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Ljava/lang/String;
    .locals 15

    .line 161
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 163
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v4, :cond_6

    .line 164
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v4

    .line 165
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 166
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 167
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 168
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    add-int/lit8 v1, v1, 0x1

    .line 170
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v9

    const/16 v11, 0xc

    const-wide/16 v12, 0x0

    cmp-long v14, v9, v12

    if-nez v14, :cond_3

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v9

    if-ne v9, v11, :cond_4

    :cond_3
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->isInterested()Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 173
    :cond_4
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v9

    cmp-long v14, v9, v12

    if-nez v14, :cond_5

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v9

    if-eqz v9, :cond_5

    .line 174
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_5

    .line 175
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v9

    if-eq v9, v11, :cond_5

    .line 176
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v9

    if-eq v9, v6, :cond_5

    .line 177
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v9

    if-eq v9, v5, :cond_5

    .line 178
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_5

    .line 179
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v9

    const/4 v10, 0x7

    if-eq v9, v10, :cond_5

    .line 180
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v9

    const/16 v10, 0xe

    if-eq v9, v10, :cond_5

    .line 181
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v9

    const/16 v10, 0x10

    if-eq v9, v10, :cond_5

    .line 182
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v8

    const/16 v9, 0x11

    if-ne v8, v9, :cond_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    sub-int p0, v1, v2

    .line 189
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 p0, 0x1

    aput-object v2, v3, p0

    aput-object v1, v3, v5

    const-string p0, "%d/%d/%d"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static calcStatsObject(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;
    .locals 18

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    const/4 v2, 0x1

    if-nez v6, :cond_1

    .line 201
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->isRuralArea()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    .line 203
    :cond_1
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    if-nez v9, :cond_3

    .line 204
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v9, 0x1

    :cond_3
    if-nez v8, :cond_4

    .line 207
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isStreet()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v8, 0x1

    :cond_4
    if-nez v6, :cond_5

    .line 210
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isRuralAddress()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v6, 0x1

    :cond_5
    if-nez v7, :cond_6

    .line 213
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isPhoneNumber()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v7, 0x1

    .line 216
    :cond_6
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    add-int/lit8 v3, v3, 0x1

    .line 218
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v12

    const/16 v14, 0xc

    const-wide/16 v15, 0x0

    cmp-long v17, v12, v15

    if-nez v17, :cond_8

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v12

    if-ne v12, v14, :cond_9

    :cond_8
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->isInterested()Z

    move-result v12

    if-eqz v12, :cond_9

    add-int/lit8 v5, v5, 0x1

    .line 222
    :cond_9
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v12

    cmp-long v17, v12, v15

    if-nez v17, :cond_a

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v12

    if-eqz v12, :cond_a

    .line 223
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_a

    .line 224
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v12

    if-eq v12, v14, :cond_a

    .line 225
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_a

    .line 226
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_a

    .line 227
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v12

    const/16 v13, 0xa

    if-eq v12, v13, :cond_a

    .line 228
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v12

    const/4 v13, 0x7

    if-eq v12, v13, :cond_a

    .line 229
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v12

    const/16 v13, 0xe

    if-eq v12, v13, :cond_a

    .line 230
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v12

    const/16 v13, 0x10

    if-eq v12, v13, :cond_a

    .line 231
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v11

    const/16 v12, 0x11

    if-ne v11, v12, :cond_7

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 238
    :cond_b
    new-instance v2, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;

    invoke-direct/range {v2 .. v9}, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;-><init>(IIIZZZZ)V

    return-object v2
.end method

.method public static cloneTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 4

    .line 144
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-object p0

    .line 147
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p1, p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->writeToParcel(Landroid/os/Parcel;I)V

    .line 149
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 150
    sget-object v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 151
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$id()J

    move-result-wide p0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$id()J

    move-result-wide v1

    cmp-long v3, p0, v1

    if-nez v3, :cond_1

    return-object v0

    .line 153
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method


# virtual methods
.method public addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;
    .locals 7

    .line 660
    invoke-virtual {p1}, Lio/realm/Realm;->isInTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    :try_start_0
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    goto :goto_0

    :catch_0
    nop

    goto/16 :goto_7

    .line 667
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 668
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 669
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 670
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 672
    :cond_2
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 673
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->isRuralArea()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 674
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setToArea()V

    :cond_3
    const/4 v1, 0x1

    if-ne p3, v1, :cond_7

    .line 680
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 681
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 682
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 684
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object p3

    invoke-virtual {v4, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->addVisits(Ljava/util/List;)V

    .line 685
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 686
    invoke-virtual {v5, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setParent(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto :goto_2

    .line 688
    :cond_5
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->sort()V

    goto :goto_4

    .line 694
    :cond_6
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddresses(Ljava/util/List;)V

    goto :goto_4

    .line 698
    :cond_7
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 699
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 700
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v2, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 707
    :cond_8
    :goto_4
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->sort(Z)V

    goto :goto_5

    :catch_1
    nop

    move-object p2, v2

    goto :goto_7

    :cond_9
    move-object v2, p2

    const/4 v1, 0x0

    :goto_5
    if-nez v1, :cond_a

    .line 714
    invoke-virtual {p2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->sort(Z)V

    .line 715
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object p3

    invoke-virtual {p3, p2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 716
    const-class p3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1, p3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    const-string v1, "id"

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p3, v1, p2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/Street;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :cond_a
    move-object p2, v2

    .line 719
    :goto_6
    :try_start_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$shouldSort()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 720
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object p3

    new-instance v1, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumComparator;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumComparator;-><init>()V

    invoke-static {p3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_b
    if-nez v0, :cond_c

    .line 723
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_c
    return-object p2

    :goto_7
    if-nez v0, :cond_d

    .line 726
    invoke-virtual {p1}, Lio/realm/Realm;->cancelTransaction()V

    :cond_d
    return-object p2
.end method

.method public canDisplayOldTerritory()Z
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$oldTerritoryDlgDisplayed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$disableOldTerrMsg()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cloneEmpty()Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 4

    .line 423
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;-><init>()V

    .line 424
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$name(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$city()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$city(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$region()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$region(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$territoryCardPath(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$shouldSort()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$shouldSort(Z)V

    .line 429
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$lastUpdated()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$lastUpdated(Ljava/util/Date;)V

    .line 430
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$dateCreated()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$dateCreated(Ljava/util/Date;)V

    .line 431
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$id(J)V

    .line 432
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$disableOldTerrMsg()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$disableOldTerrMsg(Z)V

    .line 433
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$oldTerritoryDlgDisplayed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$oldTerritoryDlgDisplayed(Z)V

    .line 434
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$isHidden(Z)V

    .line 435
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$isReturned()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$isReturned(Z)V

    return-object v0
.end method

.method public delete()V
    .locals 2

    .line 732
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$12;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$12;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 745
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 732
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 246
    :cond_0
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 249
    :cond_1
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 251
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$id()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 849
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$city()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateCreated()Ljava/util/Date;
    .locals 1

    .line 868
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$dateCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 289
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$id()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastUpdated()Ljava/util/Date;
    .locals 1

    .line 883
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$lastUpdated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 819
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$note()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 834
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$region()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreets()Ljava/util/List;
    .locals 1

    .line 749
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getTerritoryBorder()Ljava/util/List;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryBorder()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getTerritoryCard()Ljava/lang/String;
    .locals 1

    .line 900
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryCardPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$urlToTerritory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide(Z)V
    .locals 1

    .line 365
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$6;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$6;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Z)V

    .line 371
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 365
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public importMerge(Landroid/content/Context;Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Z)Z
    .locals 0

    .line 920
    new-instance p4, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;

    invoke-direct {p4, p0, p3, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;Lio/realm/Realm;)V

    invoke-static {p4}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public isHidden()Z
    .locals 1

    .line 357
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$isHidden()Z

    move-result v0

    return v0
.end method

.method public isReturned()Z
    .locals 1

    .line 390
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$isReturned()Z

    move-result v0

    return v0
.end method

.method public loadFromFileObjectStream(Lio/realm/Realm;Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V
    .locals 5

    .line 443
    :try_start_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 445
    new-instance v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 446
    invoke-virtual {v3, p1, p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->loadFromFileObjectStream(Lio/realm/Realm;Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V

    .line 447
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {p1, v3, v4}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 448
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 451
    :cond_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    if-lez p1, :cond_2

    .line 454
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryBorder()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 455
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$territoryBorder(Lio/realm/RealmList;)V

    :cond_1
    :goto_1
    if-ge v1, p1, :cond_2

    .line 458
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryBorder()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readLatLng()Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 463
    :cond_2
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$disableOldTerrMsg(Z)V

    .line 464
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$isHidden(Z)V

    .line 465
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$isReturned(Z)V

    .line 466
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$name(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$city(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$region(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$territoryCardPath(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$dateCreated(Ljava/util/Date;)V

    .line 471
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$lastUpdated(Ljava/util/Date;)V

    .line 472
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$shouldSort(Z)V

    .line 473
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$note(Ljava/lang/String;)V

    const/16 p1, 0x18

    if-gt p3, p1, :cond_3

    .line 475
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$id(J)V

    goto :goto_2

    .line 477
    :cond_3
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$id(J)V

    :goto_2
    const/16 p1, 0x17

    if-lt p3, p1, :cond_4

    .line 480
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$urlToTerritory(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    .line 482
    :goto_3
    const-string p2, "Territory.loadFromFileObjectStream 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    throw p1
.end method

.method public loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V
    .locals 6

    .line 530
    :try_start_0
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 534
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 535
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_14

    .line 536
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 538
    const-string v1, "Streets"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 540
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 541
    invoke-virtual {v0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V

    .line 542
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 544
    :cond_2
    const-string v1, "Border"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 545
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryBorder()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_3

    .line 546
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$territoryBorder(Lio/realm/RealmList;)V

    .line 547
    :cond_3
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 548
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryBorder()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_3

    .line 550
    :cond_4
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryBorder()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 551
    :goto_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 552
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide v0

    .line 553
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 554
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide v2

    .line 555
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryBorder()Lio/realm/RealmList;

    move-result-object v4

    new-instance v5, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;-><init>(DD)V

    invoke-virtual {v4, v5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 557
    :cond_5
    const-string v1, "Name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 558
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$name(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 559
    :cond_6
    const-string v1, "Note"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 560
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$note(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 561
    :cond_7
    const-string v1, "URL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 562
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$urlToTerritory(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 563
    :cond_8
    const-string v1, "OldTerrDlg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 564
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$disableOldTerrMsg(Z)V

    goto/16 :goto_1

    .line 565
    :cond_9
    const-string v1, "Hidden"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 566
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$isHidden(Z)V

    goto/16 :goto_1

    .line 567
    :cond_a
    const-string v1, "Ret"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 568
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$isReturned(Z)V

    goto/16 :goto_1

    .line 569
    :cond_b
    const-string v1, "Suburb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 570
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$region(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 571
    :cond_c
    const-string v1, "City"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 572
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$city(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 573
    :cond_d
    const-string v1, "MapImageName"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 574
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$territoryCardPath(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 575
    :cond_e
    const-string v1, "Created"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 576
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$dateCreated(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 577
    :cond_f
    const-string v1, "Modified"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 578
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$lastUpdated(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 579
    :cond_10
    const-string v1, "ShouldSort"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 580
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$shouldSort(Z)V

    goto/16 :goto_1

    .line 581
    :cond_11
    const-string v1, "ID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v0, 0x18

    if-gt p2, v0, :cond_12

    .line 583
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$id(J)V

    goto/16 :goto_1

    .line 585
    :cond_12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$id(J)V

    goto/16 :goto_1

    .line 587
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized field \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_14
    return-void

    .line 591
    :goto_4
    const-string p2, "Territory.loadFromFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    throw p1
.end method

.method public merge(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z
    .locals 6

    .line 953
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 956
    :try_start_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$id()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 957
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;Lio/realm/Realm;)V

    invoke-static {v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    const/4 p1, 0x0

    return p1

    :goto_0
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 1006
    throw p1
.end method

.method public mergeStreets()V
    .locals 2

    .line 609
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 644
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 609
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public realmGet$city()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->city:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$dateCreated()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->dateCreated:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$disableOldTerrMsg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->disableOldTerrMsg:Z

    return v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->id:J

    return-wide v0
.end method

.method public realmGet$isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isHidden:Z

    return v0
.end method

.method public realmGet$isReturned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isReturned:Z

    return v0
.end method

.method public realmGet$lastUpdated()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->lastUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$note()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->note:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$oldTerritoryDlgDisplayed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->oldTerritoryDlgDisplayed:Z

    return v0
.end method

.method public realmGet$region()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->region:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$shouldSort()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->shouldSort:Z

    return v0
.end method

.method public realmGet$streets()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->streets:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$territoryBorder()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->territoryBorder:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$territoryCardPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->territoryCardPath:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$urlToTerritory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->urlToTerritory:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$city(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->city:Ljava/lang/String;

    return-void
.end method

.method public realmSet$dateCreated(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->dateCreated:Ljava/util/Date;

    return-void
.end method

.method public realmSet$disableOldTerrMsg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->disableOldTerrMsg:Z

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->id:J

    return-void
.end method

.method public realmSet$isHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isHidden:Z

    return-void
.end method

.method public realmSet$isReturned(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isReturned:Z

    return-void
.end method

.method public realmSet$lastUpdated(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->lastUpdated:Ljava/util/Date;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$note(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->note:Ljava/lang/String;

    return-void
.end method

.method public realmSet$oldTerritoryDlgDisplayed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->oldTerritoryDlgDisplayed:Z

    return-void
.end method

.method public realmSet$region(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->region:Ljava/lang/String;

    return-void
.end method

.method public realmSet$shouldSort(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->shouldSort:Z

    return-void
.end method

.method public realmSet$streets(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->streets:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$territoryBorder(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->territoryBorder:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$territoryCardPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->territoryCardPath:Ljava/lang/String;

    return-void
.end method

.method public realmSet$urlToTerritory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->urlToTerritory:Ljava/lang/String;

    return-void
.end method

.method public removeEmptyStreets()V
    .locals 2

    .line 904
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$22;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$22;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 916
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 904
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public removeStreet(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 0

    .line 757
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->deleteItem(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    .line 758
    new-instance p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory$13;

    invoke-direct {p1, p0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$13;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    .line 768
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p2

    .line 758
    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public removeStreetNoSync(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 1

    .line 772
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$14;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$14;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    .line 778
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 772
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public returnTerritory(Z)V
    .locals 1

    .line 398
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$8;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$8;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Z)V

    .line 404
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 398
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 4

    .line 489
    :try_start_0
    const-string v0, "Territory"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 490
    const-string v0, "Streets"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 493
    invoke-virtual {v1, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 495
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 497
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryBorder()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 498
    const-string v0, "Border"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryBorder()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    .line 500
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$latitude()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    .line 501
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$longitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    goto :goto_1

    .line 503
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 506
    :cond_2
    const-string v0, "OldTerrDlg"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$disableOldTerrMsg()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 507
    const-string v0, "Hidden"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$isHidden()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 508
    const-string v0, "Ret"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$isReturned()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 509
    const-string v0, "Name"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v0, "City"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$city()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v0, "Suburb"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$region()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v0, "MapImageName"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v0, "Created"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$dateCreated()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 514
    const-string v0, "Modified"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$lastUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 515
    const-string v0, "ShouldSort"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$shouldSort()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 516
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$note()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$note()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 517
    const-string v0, "Note"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$note()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$urlToTerritory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$urlToTerritory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 519
    const-string v0, "URL"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$urlToTerritory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_4
    const-string v0, "ID"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 521
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 523
    :goto_2
    const-string v0, "Territory.saveToFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    throw p1
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 1

    .line 853
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$19;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$19;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Ljava/lang/String;)V

    .line 859
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 853
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setDateCreated(Ljava/util/Date;)V
    .locals 1

    .line 872
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$20;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$20;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Ljava/util/Date;)V

    .line 878
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 872
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setLastUpdated()V
    .locals 2

    .line 891
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$21;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$21;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 896
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 891
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 823
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$17;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$17;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Ljava/lang/String;)V

    .line 829
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 823
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 1

    .line 348
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$5;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$5;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public setOldTerritoryDisplayed(Z)V
    .locals 1

    .line 412
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$9;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$9;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Z)V

    .line 418
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 412
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 1

    .line 838
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$18;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$18;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Ljava/lang/String;)V

    .line 844
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 838
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setShouldSort(Z)V
    .locals 1

    .line 276
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$3;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$3;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Z)V

    .line 285
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 276
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setTerritoryBorder(Ljava/util/List;)V
    .locals 1

    .line 326
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$4;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$4;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Ljava/util/List;)V

    .line 339
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 326
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setTerritoryCardPath(Ljava/lang/String;)V
    .locals 1

    .line 260
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$2;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$2;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Ljava/lang/String;)V

    .line 268
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 260
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 1

    .line 379
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$7;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$7;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Ljava/lang/String;)V

    .line 386
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 379
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setUrlToTerritory(Ljava/lang/String;)V
    .locals 0

    .line 318
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$urlToTerritory(Ljava/lang/String;)V

    return-void
.end method

.method public shouldSort()Z
    .locals 1

    .line 863
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$shouldSort()Z

    move-result v0

    return v0
.end method

.method public updateAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 1

    .line 796
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$16;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$16;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 814
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 796
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public updateStreet(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 1

    .line 782
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$15;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$15;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    .line 792
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 782
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public updateStreetName(Lio/realm/Realm;ILjava/lang/String;)V
    .locals 1

    .line 597
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$10;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory$10;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;ILjava/lang/String;Lio/realm/Realm;)V

    .line 605
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 597
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$dateCreated()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeDateToParcel(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 113
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$lastUpdated()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeDateToParcel(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 114
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$region()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$city()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryCardPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$shouldSort()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 119
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$id()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$disableOldTerrMsg()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 121
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$oldTerritoryDlgDisplayed()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 122
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$isHidden()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 123
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$isReturned()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 124
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$note()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$urlToTerritory()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 127
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryBorder()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
