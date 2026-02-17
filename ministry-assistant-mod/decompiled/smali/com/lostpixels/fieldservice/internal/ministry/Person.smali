.class public Lcom/lostpixels/fieldservice/internal/ministry/Person;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmModel;
.implements Landroid/os/Parcelable;
.implements Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxyInterface;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lostpixels/fieldservice/internal/ministry/Person;",
            ">;"
        }
    .end annotation
.end field

.field private static items:[Ljava/lang/String;

.field private static mOneWeekAgo:Ljava/util/Date;


# instance fields
.field public address:Ljava/lang/String;

.field public age:I

.field public apartment:Ljava/lang/String;

.field public bestVisitTime:I

.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public customTags:Lio/realm/RealmList;

.field public date:Ljava/util/Date;

.field public email:Ljava/lang/String;

.field public generalInfo:Ljava/lang/String;

.field public homePhone:Ljava/lang/String;

.field public id:J

.field public isHidden:Z

.field public isInterested:Z

.field public isPinnedToFront:Z

.field public languages:Ljava/lang/String;

.field public lastTriedTime:Ljava/util/Date;

.field public latitude:D

.field public longitude:D

.field public magazineList:Lio/realm/RealmList;

.field public motherTongue:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public personType:I

.field public phone:Ljava/lang/String;

.field public postalCode:Ljava/lang/String;

.field public priority:I

.field public studyPublication:Ljava/lang/String;

.field public suburb:Ljava/lang/String;

.field public timeForRV:Ljava/util/Date;

.field public type:I

.field public videoPhone:Ljava/lang/String;

.field public visitInfoList:Lio/realm/RealmList;

.field public whereToContinue:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mremoveOldMagazines(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->removeOldMagazines()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 244
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$1;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person$1;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 134
    :cond_0
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$visitInfoList(Lio/realm/RealmList;)V

    .line 135
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$name(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$suburb(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$address(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$email(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$phone(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$homePhone(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$videoPhone(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$generalInfo(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$city(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 144
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$type(I)V

    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$age(I)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$motherTongue(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$languages(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$country(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getNextPrimaryId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$id(J)V

    .line 150
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$date(Ljava/util/Date;)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$personType(I)V

    .line 152
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$magazineList(Lio/realm/RealmList;)V

    .line 153
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$priority(I)V

    .line 154
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$bestVisitTime(I)V

    const-wide/16 v2, 0x0

    .line 155
    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$longitude(D)V

    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$latitude(D)V

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isInterested(Z)V

    .line 158
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isHidden(Z)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isPinnedToFront(Z)V

    .line 160
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$lastTriedTime(Ljava/util/Date;)V

    .line 162
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$customTags(Lio/realm/RealmList;)V

    :cond_1
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$type(I)V

    .line 168
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$address(Ljava/lang/String;)V

    .line 169
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$suburb(Ljava/lang/String;)V

    .line 170
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$name(Ljava/lang/String;)V

    .line 171
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$email(Ljava/lang/String;)V

    .line 172
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$phone(Ljava/lang/String;)V

    .line 173
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$homePhone(Ljava/lang/String;)V

    .line 174
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$videoPhone(Ljava/lang/String;)V

    .line 175
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$generalInfo(Ljava/lang/String;)V

    .line 176
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$city(Ljava/lang/String;)V

    .line 177
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$studyPublication(Ljava/lang/String;)V

    .line 178
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$whereToContinue(Ljava/lang/String;)V

    .line 179
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$postalCode(Ljava/lang/String;)V

    .line 180
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$apartment(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$age(I)V

    .line 182
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$motherTongue(Ljava/lang/String;)V

    .line 183
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$languages(Ljava/lang/String;)V

    .line 184
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$country(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$id(J)V

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$latitude(D)V

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$longitude(D)V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$personType(I)V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$priority(I)V

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$bestVisitTime(I)V

    .line 191
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
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isInterested(Z)V

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isHidden(Z)V

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isPinnedToFront(Z)V

    .line 195
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readDateFromParcel(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$date(Ljava/util/Date;)V

    .line 196
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readDateFromParcel(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$timeForRV(Ljava/util/Date;)V

    .line 197
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readDateFromParcel(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$lastTriedTime(Ljava/util/Date;)V

    .line 199
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$visitInfoList(Lio/realm/RealmList;)V

    .line 200
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v0

    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 201
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$customTags(Lio/realm/RealmList;)V

    .line 202
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 203
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$magazineList(Lio/realm/RealmList;)V

    .line 204
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static clonePerson(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)Lcom/lostpixels/fieldservice/internal/ministry/Person;
    .locals 4

    .line 258
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0, p1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    return-object p0

    .line 262
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p1, p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->writeToParcel(Landroid/os/Parcel;I)V

    .line 264
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 265
    sget-object v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 266
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$id()J

    move-result-wide p0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$id()J

    move-result-wide v1

    cmp-long v3, p0, v1

    if-nez v3, :cond_1

    return-object v0

    .line 268
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static combineVisitDays(ZZZZZZZ)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 p0, p0, 0x20

    :cond_1
    if-eqz p2, :cond_2

    or-int/lit8 p0, p0, 0x40

    :cond_2
    if-eqz p3, :cond_3

    or-int/lit16 p0, p0, 0x80

    :cond_3
    if-eqz p4, :cond_4

    or-int/lit16 p0, p0, 0x100

    :cond_4
    if-eqz p5, :cond_5

    or-int/lit16 p0, p0, 0x200

    :cond_5
    if-eqz p6, :cond_6

    or-int/lit16 p0, p0, 0x400

    :cond_6
    return p0
.end method

.method public static combineVisitTime(ZZZZ)I
    .locals 0

    if-eqz p1, :cond_0

    or-int/lit8 p0, p0, 0x2

    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 p0, p0, 0x4

    :cond_1
    if-eqz p3, :cond_2

    or-int/lit8 p0, p0, 0x8

    :cond_2
    return p0
.end method

.method public static getPersonType(Ljava/lang/String;)I
    .locals 1

    .line 275
    const-string v0, "eLady"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 277
    :cond_0
    const-string v0, "eGentleman"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 279
    :cond_1
    const-string v0, "eChild"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 281
    :cond_2
    const-string v0, "eCouple"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    .line 283
    :cond_3
    const-string v0, "eUnknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    return p0

    .line 286
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unknown state"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static isVisitDay(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVisitEvening(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVisitFriday(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVisitMonday(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVisitMorning(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVisitSaturday(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVisitSunday(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVisitThursday(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVisitTuesday(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVisitWednesday(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVisitWeekend(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private removeOldMagazines()V
    .locals 2

    .line 1266
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$31;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person$31;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 1297
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 1266
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method


# virtual methods
.method public addCustomTag(Ljava/lang/String;)V
    .locals 1

    .line 742
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$18;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$18;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 757
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 742
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public addMagazine(Ljava/util/Date;)V
    .locals 1

    .line 1238
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$29;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$29;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/util/Date;)V

    .line 1250
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1238
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public clearCustomTag()V
    .locals 1

    .line 735
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    return-void

    .line 738
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    return-void
.end method

.method public clearVisitInfoList()V
    .locals 1

    .line 376
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    return-void

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    return-void
.end method

.method delete()V
    .locals 2

    .line 1534
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$43;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person$43;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 1539
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 1534
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

    .line 1525
    :cond_0
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1528
    :cond_1
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1530
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$id()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1438
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .line 1452
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$age()I

    move-result v0

    return v0
.end method

.method public getApartment()Ljava/lang/String;
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$apartment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBestVisitTime()I
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v0

    return v0
.end method

.method public getCellPhone()Ljava/lang/String;
    .locals 1

    .line 1333
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$phone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 858
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$city()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContinueStudy()Ljava/lang/String;
    .locals 1

    .line 828
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$whereToContinue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 873
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$country()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTagsSet()Ljava/util/Set;
    .locals 3

    .line 762
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 763
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 765
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1220
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$email()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeneralInfo()Ljava/lang/String;
    .locals 1

    .line 1386
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$generalInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomePhone()Ljava/lang/String;
    .locals 1

    .line 1352
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$homePhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 410
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$id()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInfo()Ljava/util/List;
    .locals 1

    .line 1466
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getLanguages()Ljava/lang/String;
    .locals 1

    .line 799
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$languages()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdate()Ljava/util/Date;
    .locals 1

    .line 1234
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMagazineRouteMap()[Z
    .locals 11

    const/4 v0, 0x6

    .line 1301
    new-array v1, v0, [Z

    .line 1302
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    .line 1303
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1304
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v5, 0x2

    const/16 v6, 0x7e2

    if-lt v3, v6, :cond_0

    .line 1305
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    rem-int/2addr v7, v5

    sub-int/2addr v3, v7

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    :cond_0
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x4

    if-ge v7, v8, :cond_3

    .line 1309
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-gt v8, v6, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v8, v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-lt v8, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, -0x1

    .line 1312
    invoke-virtual {v2, v5, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, -0x2

    .line 1310
    invoke-virtual {v2, v5, v8}, Ljava/util/Calendar;->add(II)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v0, :cond_7

    .line 1317
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v8, v9

    .line 1319
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1320
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v8, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    .line 1325
    :goto_4
    aput-boolean v8, v1, v7

    .line 1326
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-lt v8, v6, :cond_6

    const/4 v8, 0x2

    goto :goto_5

    :cond_6
    const/4 v8, 0x1

    :goto_5
    invoke-virtual {v2, v5, v8}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    return-object v1
.end method

.method public getMotherTounge()Ljava/lang/String;
    .locals 1

    .line 771
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$motherTongue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1507
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 5

    .line 1401
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$latitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$longitude()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1403
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$latitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$longitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .line 708
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$postalCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 785
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$priority()I

    move-result v0

    return v0
.end method

.method public getStudyPublication()Ljava/lang/String;
    .locals 1

    .line 814
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$studyPublication()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuburb()Ljava/lang/String;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$suburb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeForRV()Ljava/util/Date;
    .locals 1

    .line 843
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$timeForRV()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1492
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$type()I

    move-result v0

    return v0
.end method

.method public getVideoPhone()Ljava/lang/String;
    .locals 1

    .line 1371
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$videoPhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisitInfoList()Lio/realm/RealmList;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public hasVisitTimeSet()Z
    .locals 1

    .line 519
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBibleStudy()Z
    .locals 1

    .line 1576
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$personType()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .line 1544
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$personType()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 491
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$isHidden()Z

    move-result v0

    return v0
.end method

.method public isInterested()Z
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$isInterested()Z

    move-result v0

    return v0
.end method

.method public isMagazineRoute()Z
    .locals 1

    .line 1592
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$personType()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPinnedToFront()Z
    .locals 1

    .line 505
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$isPinnedToFront()Z

    move-result v0

    return v0
.end method

.method public isReturnVisit()Z
    .locals 2

    .line 1560
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$personType()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSameID(J)Z
    .locals 3

    .line 1887
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$id()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public loadFromFileObjectStream(Lio/realm/Realm;Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V
    .locals 7

    .line 898
    const-string v0, ""

    const-string v1, "[^\\s\\w.)(\\/!?\\?]"

    :try_start_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 899
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 900
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_7

    .line 902
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->clear()V

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    .line 904
    new-instance v5, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-direct {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;-><init>()V

    .line 905
    invoke-virtual {v5, p2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->loadFromFileObjectStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :try_start_1
    new-array v6, v3, [Lio/realm/ImportFlag;

    invoke-virtual {p1, v5, v6}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 909
    :catch_1
    :try_start_2
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getInfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setInfo(Ljava/lang/String;)V

    .line 910
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getMovies()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setMovies(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getNextTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setNextTime(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getPublications()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setPublications(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getScriptures()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setScriptures(Ljava/lang/String;)V

    .line 915
    new-array v6, v3, [Lio/realm/ImportFlag;

    invoke-virtual {p1, v5, v6}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 917
    :goto_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 921
    :cond_1
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$type(I)V

    .line 922
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$address(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$suburb(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$name(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$age(I)V

    .line 926
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isHidden(Z)V

    .line 927
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isPinnedToFront(Z)V

    .line 928
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isInterested(Z)V

    .line 929
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$lastTriedTime(Ljava/util/Date;)V

    .line 930
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$priority(I)V

    .line 931
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$bestVisitTime(I)V

    .line 932
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$email(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$postalCode(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$apartment(Ljava/lang/String;)V

    .line 935
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$phone(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$homePhone(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$videoPhone(Ljava/lang/String;)V

    .line 938
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$country(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$languages(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$motherTongue(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$generalInfo(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$studyPublication(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$whereToContinue(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$timeForRV(Ljava/util/Date;)V

    .line 946
    sget-object p1, Lcom/lostpixels/fieldservice/internal/ministry/Person;->mOneWeekAgo:Ljava/util/Date;

    if-nez p1, :cond_2

    .line 947
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, -0x1

    .line 948
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 949
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    sput-object p1, Lcom/lostpixels/fieldservice/internal/ministry/Person;->mOneWeekAgo:Ljava/util/Date;

    .line 951
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$timeForRV()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$timeForRV()Ljava/util/Date;

    move-result-object p1

    sget-object v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->mOneWeekAgo:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 952
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$timeForRV(Ljava/util/Date;)V

    .line 954
    :cond_3
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$city(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$date(Ljava/util/Date;)V

    const/16 p1, 0x18

    if-gt p3, p1, :cond_4

    .line 957
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$id(J)V

    goto :goto_3

    .line 959
    :cond_4
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$id(J)V

    .line 960
    :goto_3
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$personType(I)V

    if-gt p3, p1, :cond_6

    .line 962
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readLatLng()Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 964
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$latitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$latitude(D)V

    .line 965
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$longitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$longitude(D)V

    goto :goto_4

    :cond_5
    const-wide/16 v0, 0x0

    .line 967
    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$longitude(D)V

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$latitude(D)V

    goto :goto_4

    .line 970
    :cond_6
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$latitude(D)V

    .line 971
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$longitude(D)V

    .line 974
    :goto_4
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 975
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object p3

    if-nez p3, :cond_7

    .line 976
    new-instance p3, Lio/realm/RealmList;

    invoke-direct {p3}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$magazineList(Lio/realm/RealmList;)V

    :cond_7
    const/4 p3, 0x0

    :goto_5
    if-ge p3, p1, :cond_8

    .line 978
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 980
    :cond_8
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 981
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object p1

    const-string p3, "value"

    invoke-virtual {p1, p3}, Lio/realm/RealmList;->sort(Ljava/lang/String;)Lio/realm/RealmResults;

    .line 983
    :cond_9
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 984
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object p3

    if-nez p3, :cond_a

    .line 985
    new-instance p3, Lio/realm/RealmList;

    invoke-direct {p3}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$customTags(Lio/realm/RealmList;)V

    :cond_a
    :goto_6
    if-ge v3, p1, :cond_b

    .line 987
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object p3

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    return-void

    .line 990
    :goto_7
    const-string p2, "Person.loadFromFileObjectStream 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    throw p1
.end method

.method public loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V
    .locals 10

    const/4 v0, 0x0

    .line 1093
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$personType(I)V

    .line 1094
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_6

    .line 1097
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 1100
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-wide/16 v0, 0x0

    move-wide v2, v0

    move-wide v4, v2

    .line 1102
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v6, v7, :cond_27

    .line 1103
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 1104
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 1106
    const-string v7, "Inf"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1107
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v6, v7, :cond_1

    .line 1109
    new-instance v6, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-direct {v6}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;-><init>()V

    .line 1110
    invoke-virtual {v6, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    :try_start_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v7, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1114
    :catch_1
    :try_start_2
    const-string v6, "dummy"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1118
    :cond_2
    const-string v7, "Tp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1119
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPersonType(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$type(I)V

    goto :goto_1

    .line 1120
    :cond_3
    const-string v7, "TpI"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1122
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$type(I)V

    goto :goto_1

    .line 1123
    :cond_4
    const-string v7, "Add"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1124
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$address(Ljava/lang/String;)V

    goto :goto_1

    .line 1125
    :cond_5
    const-string v7, "Hidden"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1126
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isHidden(Z)V

    goto :goto_1

    .line 1127
    :cond_6
    const-string v7, "Pinned"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1128
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isPinnedToFront(Z)V

    goto/16 :goto_1

    .line 1129
    :cond_7
    const-string v7, "Intd"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1130
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isInterested(Z)V

    goto/16 :goto_1

    .line 1131
    :cond_8
    const-string v7, "LstTry"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1132
    new-instance v6, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$lastTriedTime(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 1133
    :cond_9
    const-string v7, "Sub"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1134
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$suburb(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1135
    :cond_a
    const-string v7, "N"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1136
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$name(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1137
    :cond_b
    const-string v7, "Age"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1138
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$age(I)V

    goto/16 :goto_1

    .line 1139
    :cond_c
    const-string v7, "Prio"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1140
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$priority(I)V

    goto/16 :goto_1

    .line 1141
    :cond_d
    const-string v7, "Fav"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1142
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1143
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$personType()I

    move-result v6

    or-int/lit8 v6, v6, 0x8

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$personType(I)V

    goto/16 :goto_1

    .line 1144
    :cond_e
    const-string v7, "Eml"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1145
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$email(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1146
    :cond_f
    const-string v7, "Zip"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1147
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$postalCode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1148
    :cond_10
    const-string v7, "Apt"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1149
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$apartment(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1150
    :cond_11
    const-string v7, "Ph"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1151
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$phone(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1152
    :cond_12
    const-string v7, "Phh"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1153
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$homePhone(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1154
    :cond_13
    const-string v7, "VP"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1155
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$videoPhone(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1156
    :cond_14
    const-string v7, "C"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1157
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$country(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1158
    :cond_15
    const-string v7, "Lan"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1159
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$languages(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1160
    :cond_16
    const-string v7, "Ton"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1161
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$motherTongue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1162
    :cond_17
    const-string v7, "Gen"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1163
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$generalInfo(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1164
    :cond_18
    const-string v7, "SPub"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1165
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$studyPublication(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1166
    :cond_19
    const-string v7, "SCnt"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1167
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$whereToContinue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1168
    :cond_1a
    const-string v7, "TRV"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1169
    new-instance v6, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$timeForRV(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 1170
    :cond_1b
    const-string v7, "City"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1171
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$city(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1172
    :cond_1c
    const-string v7, "Date"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1173
    new-instance v6, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$date(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 1174
    :cond_1d
    const-string v7, "ID"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/16 v6, 0x18

    if-gt p2, v6, :cond_1e

    .line 1176
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v6, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$id(J)V

    goto/16 :goto_1

    .line 1178
    :cond_1e
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$id(J)V

    goto/16 :goto_1

    .line 1179
    :cond_1f
    const-string v7, "Lat"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-wide v8, 0x412e848000000000L    # 1000000.0

    if-eqz v7, :cond_20

    .line 1180
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v8

    goto/16 :goto_1

    .line 1181
    :cond_20
    const-string v7, "Lon"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1182
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v8

    goto/16 :goto_1

    .line 1183
    :cond_21
    const-string v7, "Type"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 1184
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$personType(I)V

    goto/16 :goto_1

    .line 1185
    :cond_22
    const-string v7, "Mags"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 1186
    :goto_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v6, v7, :cond_1

    .line 1187
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1189
    :cond_23
    const-string v7, "Tags"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 1190
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v6

    if-eqz v6, :cond_24

    .line 1191
    new-instance v6, Lio/realm/RealmList;

    invoke-direct {v6}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$customTags(Lio/realm/RealmList;)V

    .line 1192
    :cond_24
    :goto_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v6, v7, :cond_1

    .line 1193
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1195
    :cond_25
    const-string v7, "VTm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 1196
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$bestVisitTime(I)V

    goto/16 :goto_1

    .line 1198
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized field \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    cmpl-double p1, v2, v0

    if-eqz p1, :cond_28

    cmpl-double p1, v4, v0

    if-eqz p1, :cond_28

    .line 1203
    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$latitude(D)V

    .line 1204
    invoke-virtual {p0, v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$longitude(D)V

    :cond_28
    const/16 p1, 0xf

    if-ge p2, p1, :cond_29

    .line 1207
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1208
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    const/4 v0, 0x1

    .line 1209
    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setCountStudy(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :cond_29
    return-void

    .line 1212
    :goto_6
    const-string p2, "Person.loadFromFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    throw p1
.end method

.method public matchQuery(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1891
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$isHidden()Z

    move-result p2

    if-eqz p2, :cond_0

    return v0

    .line 1896
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x6

    if-lt p2, v1, :cond_1

    .line 1897
    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 1899
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1900
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 1901
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/lostpixels/fieldservice/utils/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_3
    return v0

    .line 1907
    :cond_4
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 1908
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$address()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$address()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_5

    return v1

    .line 1910
    :cond_5
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$suburb()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$suburb()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_6

    return v1

    .line 1912
    :cond_6
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$name()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_7

    return v1

    .line 1914
    :cond_7
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$email()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$email()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_8

    return v1

    .line 1916
    :cond_8
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$postalCode()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$postalCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_9

    return v1

    .line 1918
    :cond_9
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$phone()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$phone()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_a

    return v1

    .line 1920
    :cond_a
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$homePhone()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$homePhone()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_b

    return v1

    .line 1922
    :cond_b
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$videoPhone()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$videoPhone()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_c

    return v1

    .line 1924
    :cond_c
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$generalInfo()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$generalInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_d

    return v1

    .line 1926
    :cond_d
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$city()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$city()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_e

    return v1

    .line 1928
    :cond_e
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$motherTongue()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$motherTongue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_f

    return v1

    .line 1930
    :cond_f
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$languages()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$languages()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_10

    return v1

    .line 1932
    :cond_10
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$country()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$country()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_11

    return v1

    :cond_11
    return v0
.end method

.method public merge(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)Z
    .locals 5

    .line 1799
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$id()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$id()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 1801
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1802
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 1874
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1802
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public realmGet$address()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->address:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$age()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->age:I

    return v0
.end method

.method public realmGet$apartment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->apartment:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$bestVisitTime()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->bestVisitTime:I

    return v0
.end method

.method public realmGet$city()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->city:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$country()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->country:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$customTags()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->customTags:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->date:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$email()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->email:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$generalInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->generalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$homePhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->homePhone:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->id:J

    return-wide v0
.end method

.method public realmGet$isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isHidden:Z

    return v0
.end method

.method public realmGet$isInterested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isInterested:Z

    return v0
.end method

.method public realmGet$isPinnedToFront()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isPinnedToFront:Z

    return v0
.end method

.method public realmGet$languages()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->languages:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$lastTriedTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->lastTriedTime:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$latitude()D
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->latitude:D

    return-wide v0
.end method

.method public realmGet$longitude()D
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->longitude:D

    return-wide v0
.end method

.method public realmGet$magazineList()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->magazineList:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$motherTongue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->motherTongue:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$personType()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->personType:I

    return v0
.end method

.method public realmGet$phone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$postalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$priority()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->priority:I

    return v0
.end method

.method public realmGet$studyPublication()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->studyPublication:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$suburb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->suburb:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$timeForRV()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->timeForRV:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$type()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->type:I

    return v0
.end method

.method public realmGet$videoPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->videoPhone:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$visitInfoList()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitInfoList:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$whereToContinue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->whereToContinue:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$address(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->address:Ljava/lang/String;

    return-void
.end method

.method public realmSet$age(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->age:I

    return-void
.end method

.method public realmSet$apartment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->apartment:Ljava/lang/String;

    return-void
.end method

.method public realmSet$bestVisitTime(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->bestVisitTime:I

    return-void
.end method

.method public realmSet$city(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->city:Ljava/lang/String;

    return-void
.end method

.method public realmSet$country(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->country:Ljava/lang/String;

    return-void
.end method

.method public realmSet$customTags(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->customTags:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$date(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->date:Ljava/util/Date;

    return-void
.end method

.method public realmSet$email(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->email:Ljava/lang/String;

    return-void
.end method

.method public realmSet$generalInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->generalInfo:Ljava/lang/String;

    return-void
.end method

.method public realmSet$homePhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->homePhone:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->id:J

    return-void
.end method

.method public realmSet$isHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isHidden:Z

    return-void
.end method

.method public realmSet$isInterested(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isInterested:Z

    return-void
.end method

.method public realmSet$isPinnedToFront(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isPinnedToFront:Z

    return-void
.end method

.method public realmSet$languages(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->languages:Ljava/lang/String;

    return-void
.end method

.method public realmSet$lastTriedTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->lastTriedTime:Ljava/util/Date;

    return-void
.end method

.method public realmSet$latitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->latitude:D

    return-void
.end method

.method public realmSet$longitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->longitude:D

    return-void
.end method

.method public realmSet$magazineList(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->magazineList:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$motherTongue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->motherTongue:Ljava/lang/String;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$personType(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->personType:I

    return-void
.end method

.method public realmSet$phone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->phone:Ljava/lang/String;

    return-void
.end method

.method public realmSet$postalCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->postalCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$priority(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->priority:I

    return-void
.end method

.method public realmSet$studyPublication(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->studyPublication:Ljava/lang/String;

    return-void
.end method

.method public realmSet$suburb(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->suburb:Ljava/lang/String;

    return-void
.end method

.method public realmSet$timeForRV(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->timeForRV:Ljava/util/Date;

    return-void
.end method

.method public realmSet$type(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->type:I

    return-void
.end method

.method public realmSet$videoPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->videoPhone:Ljava/lang/String;

    return-void
.end method

.method public realmSet$visitInfoList(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitInfoList:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$whereToContinue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->whereToContinue:Ljava/lang/String;

    return-void
.end method

.method public resetMagazineList()V
    .locals 2

    .line 1254
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$30;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person$30;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 1262
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 1254
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 5

    .line 999
    :try_start_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->removeOldMagazines()V

    .line 1003
    const-string v0, "P"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 1004
    const-string v0, "Inf"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 1007
    invoke-virtual {v1, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 1009
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 1011
    const-string v0, "TpI"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$type()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 1012
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$address()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$address()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1013
    const-string v0, "Add"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$suburb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$suburb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1015
    const-string v0, "Sub"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$suburb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 1017
    const-string v0, "N"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_4
    const-string v0, "Age"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$age()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 1019
    const-string v0, "Hidden"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$isHidden()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 1020
    const-string v0, "Pinned"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$isPinnedToFront()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 1021
    const-string v0, "Intd"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$isInterested()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 1022
    const-string v0, "LstTry"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$lastTriedTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 1023
    const-string v0, "Prio"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$priority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 1024
    const-string v0, "VTm"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 1025
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$email()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$email()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1026
    const-string v0, "Eml"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$email()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :cond_5
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$postalCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$postalCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1028
    const-string v0, "Zip"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$postalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_6
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$apartment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$apartment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1030
    const-string v0, "Apt"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$apartment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_7
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$phone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$phone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1032
    const-string v0, "Ph"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$phone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :cond_8
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$homePhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$homePhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1034
    const-string v0, "Phh"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$homePhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :cond_9
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$videoPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$videoPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1036
    const-string v0, "VP"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$videoPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    :cond_a
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$country()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$country()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1038
    const-string v0, "C"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$country()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :cond_b
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$languages()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$languages()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1040
    const-string v0, "Lan"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$languages()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    :cond_c
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$motherTongue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$motherTongue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1042
    const-string v0, "Ton"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$motherTongue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_d
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$generalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$generalInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1044
    const-string v0, "Gen"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$generalInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    :cond_e
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$studyPublication()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$studyPublication()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1046
    const-string v0, "SPub"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$studyPublication()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :cond_f
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$whereToContinue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$whereToContinue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1048
    const-string v0, "SCnt"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$whereToContinue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :cond_10
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$timeForRV()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1050
    sget-object v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->mOneWeekAgo:Ljava/util/Date;

    if-nez v0, :cond_11

    .line 1051
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    .line 1052
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1053
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->mOneWeekAgo:Ljava/util/Date;

    .line 1055
    :cond_11
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$timeForRV()Ljava/util/Date;

    move-result-object v0

    sget-object v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;->mOneWeekAgo:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1056
    const-string v0, "TRV"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$timeForRV()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 1058
    :cond_12
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$city()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$city()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1059
    const-string v0, "City"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$city()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :cond_13
    const-string v0, "Date"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 1061
    const-string v0, "ID"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 1062
    const-string v0, "Type"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$personType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 1064
    const-string v0, "Lat"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$latitude()D

    move-result-wide v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 1065
    const-string v0, "Lon"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$longitude()D

    move-result-wide v1

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 1068
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1069
    const-string v0, "Mags"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1071
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    goto :goto_2

    .line 1072
    :cond_14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 1076
    :cond_15
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1077
    const-string v0, "Tags"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 1080
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 1082
    :cond_17
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 1084
    :cond_18
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1086
    :goto_4
    const-string v0, "Person.saveToFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    throw p1
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1

    .line 1442
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$38;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$38;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 1448
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1442
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setAge(I)V
    .locals 1

    .line 1456
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$39;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$39;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;I)V

    .line 1462
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1456
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setApartment(Ljava/lang/String;)V
    .locals 1

    .line 726
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$17;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$17;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 731
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 726
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setBibleStudy(Z)V
    .locals 1

    .line 1580
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$46;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$46;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 1588
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1580
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setCellPhone(Ljava/lang/String;)V
    .locals 1

    .line 1337
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$32;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$32;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 1347
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1337
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 1

    .line 862
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$25;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$25;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 868
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 862
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setContinueStudy(Ljava/lang/String;)V
    .locals 1

    .line 832
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$23;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$23;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 838
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 832
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 1

    .line 877
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$26;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$26;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 883
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 877
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setCustomTags(Lio/realm/RealmList;)V
    .locals 0

    .line 464
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$customTags(Lio/realm/RealmList;)V

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1

    .line 1224
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$28;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$28;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 1230
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1224
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setFavorite(Z)V
    .locals 1

    .line 1548
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$44;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$44;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 1556
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1548
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setGeneralInfo(Ljava/lang/String;)V
    .locals 1

    .line 1390
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$35;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$35;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 1396
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1390
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setHidden(Z)V
    .locals 1

    .line 495
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$3;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$3;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 501
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 495
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setHomePhone(Ljava/lang/String;)V
    .locals 1

    .line 1356
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$33;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$33;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 1366
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1356
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setInfo(Ljava/util/List;)V
    .locals 1

    .line 1470
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$40;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$40;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/util/List;)V

    .line 1487
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1470
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setInterested(Z)V
    .locals 1

    .line 481
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$2;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$2;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 487
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 481
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setLanguages(Ljava/lang/String;)V
    .locals 1

    .line 803
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$21;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$21;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 809
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 803
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setMagazineRoute(Z)V
    .locals 1

    .line 1596
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$47;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$47;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 1604
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1596
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setMotherTounge(Ljava/lang/String;)V
    .locals 1

    .line 775
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$19;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$19;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 781
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 775
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 1511
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$42;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$42;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 1517
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1511
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setPinnedToFront(Z)V
    .locals 1

    .line 509
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$4;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$4;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 515
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 509
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .line 1407
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$36;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$36;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1418
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1407
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 1

    .line 712
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$16;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$16;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 717
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 712
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setPriority(I)V
    .locals 1

    .line 789
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$20;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$20;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;I)V

    .line 794
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 789
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setReturnVisit(Z)V
    .locals 1

    .line 1564
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$45;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$45;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 1572
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1564
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setStudyPublication(Ljava/lang/String;)V
    .locals 1

    .line 818
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$22;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$22;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 824
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 818
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setSuburb(Ljava/lang/String;)V
    .locals 1

    .line 1427
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$37;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$37;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 1433
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1427
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setTimeForRV(Ljava/util/Date;)V
    .locals 1

    .line 847
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$24;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$24;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/util/Date;)V

    .line 853
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 847
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 1496
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$41;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$41;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;I)V

    .line 1502
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1496
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setUpdated()V
    .locals 2

    .line 887
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$27;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person$27;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 892
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 887
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVideoPhone(Ljava/lang/String;)V
    .locals 1

    .line 1375
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$34;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$34;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V

    .line 1381
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 1375
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisitDay(Z)V
    .locals 1

    .line 551
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$6;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$6;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 559
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 551
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisitEvening(Z)V
    .locals 1

    .line 567
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$7;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$7;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 575
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 567
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisitFriday(Z)V
    .locals 1

    .line 663
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$13;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$13;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 671
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 663
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisitMonday(Z)V
    .locals 1

    .line 599
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$9;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$9;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 607
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 599
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisitMorning(Z)V
    .locals 1

    .line 535
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$5;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$5;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 543
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 535
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisitSaturday(Z)V
    .locals 1

    .line 679
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$14;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$14;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 687
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 679
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisitSunday(Z)V
    .locals 1

    .line 695
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$15;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$15;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 703
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 695
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisitThursday(Z)V
    .locals 1

    .line 647
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$12;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$12;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 655
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 647
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisitTuesday(Z)V
    .locals 1

    .line 615
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$10;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$10;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 623
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 615
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisitWednesday(Z)V
    .locals 1

    .line 631
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$11;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$11;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 639
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 631
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisitWeekend(Z)V
    .locals 1

    .line 583
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Person$8;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person$8;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    .line 591
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 583
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 13

    .line 1610
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1611
    const-string v1, "checkGpsAsMinutes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1612
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1613
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-nez p2, :cond_0

    .line 1616
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$address()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$address()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1617
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$address()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 1620
    :goto_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$apartment()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, "\n"

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$apartment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v5, :cond_1

    .line 1622
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1623
    :cond_1
    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1624
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$apartment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1625
    const-string v5, ")\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 1627
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 1629
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$suburb()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$suburb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1630
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$suburb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1631
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-nez p2, :cond_5

    .line 1634
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$postalCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$postalCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1635
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$postalCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-nez p2, :cond_7

    .line 1639
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$city()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$city()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    if-nez v5, :cond_6

    .line 1641
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1643
    :cond_6
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1644
    :goto_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$city()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1645
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1648
    :cond_7
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$latitude()D

    move-result-wide v5

    const-wide/16 v9, 0x0

    const/4 p2, 0x2

    cmpl-double v11, v5, v9

    if-eqz v11, :cond_9

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$longitude()D

    move-result-wide v5

    cmpl-double v11, v5, v9

    if-eqz v11, :cond_9

    if-eqz v0, :cond_8

    .line 1650
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$latitude()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$longitude()D

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Lcom/lostpixels/fieldservice/utils/map/PositionUtils;->getGPSCoordinatesAsDegrees(DD)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1652
    :cond_8
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$latitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$longitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v6, p2, [Ljava/lang/Object;

    aput-object v0, v6, v2

    aput-object v5, v6, v4

    const-string v0, "(%.4f,%.4f)"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1653
    :goto_4
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1656
    :cond_9
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1657
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1658
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1661
    :cond_a
    sget-object v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->items:[Ljava/lang/String;

    if-nez v0, :cond_b

    .line 1662
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f030014

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;->items:[Ljava/lang/String;

    .line 1664
    :cond_b
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$type()I

    move-result v0

    const/4 v5, 0x3

    if-eqz v0, :cond_f

    if-eq v0, v4, :cond_e

    if-eq v0, p2, :cond_d

    if-eq v0, v5, :cond_c

    goto :goto_5

    :cond_c
    const v0, 0x7f1203b2

    .line 1672
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 1666
    :cond_d
    aget-object v0, v3, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 1669
    :cond_e
    aget-object v0, v3, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 1675
    :cond_f
    aget-object v0, v3, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1680
    :goto_5
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$age()I

    move-result v0

    if-lez v0, :cond_10

    .line 1681
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$age()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1682
    :cond_10
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1684
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$phone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$phone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1685
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$phone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1686
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1688
    :cond_11
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$homePhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$homePhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1689
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$homePhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1690
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1692
    :cond_12
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$videoPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$videoPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1693
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$videoPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1694
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1696
    :cond_13
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$email()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$email()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1697
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$email()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1698
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1700
    :cond_14
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$motherTongue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$motherTongue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1701
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$motherTongue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1702
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1704
    :cond_15
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$languages()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$languages()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1705
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$languages()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1706
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1709
    :cond_16
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$country()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$country()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1710
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$country()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1711
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1714
    :cond_17
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$generalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$generalInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1715
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$generalInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1716
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1719
    :cond_18
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$studyPublication()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$studyPublication()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1720
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$studyPublication()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1721
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1724
    :cond_19
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$whereToContinue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$whereToContinue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1725
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$whereToContinue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1726
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1729
    :cond_1a
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$priority()I

    move-result v0

    if-lez v0, :cond_1b

    const v0, 0x7f120497

    .line 1730
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1731
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1732
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$priority()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1733
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1736
    :cond_1b
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$timeForRV()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$timeForRV()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v0, v9, v11

    if-lez v0, :cond_1c

    const v0, 0x7f1201c9

    .line 1737
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1738
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1739
    invoke-static {v5, v5}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$timeForRV()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1740
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1742
    :cond_1c
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 1744
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1745
    :cond_1d
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1746
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1747
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 1748
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 1749
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1750
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1752
    :cond_1e
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->hasVisitType()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1753
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v3

    if-eqz v3, :cond_22

    const/16 v6, 0x9

    if-eq v3, v6, :cond_21

    if-eq v3, p2, :cond_20

    if-eq v3, v5, :cond_1f

    goto :goto_7

    .line 1763
    :cond_1f
    sget-object v3, Lcom/lostpixels/fieldservice/internal/ministry/Person;->items:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1764
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 1767
    :cond_20
    sget-object v3, Lcom/lostpixels/fieldservice/internal/ministry/Person;->items:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1768
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 1759
    :cond_21
    sget-object v3, Lcom/lostpixels/fieldservice/internal/ministry/Person;->items:[Ljava/lang/String;

    const/16 v6, 0x11

    aget-object v3, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1760
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 1755
    :cond_22
    sget-object v3, Lcom/lostpixels/fieldservice/internal/ministry/Person;->items:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v3, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1756
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1772
    :cond_23
    :goto_7
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24

    .line 1773
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1774
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1777
    :cond_24
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getScriptures()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getScriptures()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1778
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getScriptures()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1779
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1782
    :cond_25
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getPublications()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getPublications()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    .line 1783
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getPublications()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1784
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1787
    :cond_26
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getNextTime()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getNextTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1788
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getNextTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1789
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 1794
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitDay()Z
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public visitEvening()Z
    .locals 1

    .line 563
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public visitFriday()Z
    .locals 1

    .line 659
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public visitMonday()Z
    .locals 1

    .line 595
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public visitMorning()Z
    .locals 2

    .line 531
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public visitSaturday()Z
    .locals 1

    .line 675
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public visitSunday()Z
    .locals 1

    .line 691
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public visitThursday()Z
    .locals 1

    .line 643
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public visitTuesday()Z
    .locals 1

    .line 611
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public visitWednesday()Z
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public visitWeekend()Z
    .locals 1

    .line 579
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$type()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$address()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$suburb()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$email()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$phone()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$homePhone()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$videoPhone()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$generalInfo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$city()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$studyPublication()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$whereToContinue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$postalCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$apartment()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$age()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$motherTongue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$languages()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$country()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$id()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$latitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 229
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$longitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 230
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$personType()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$priority()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$isInterested()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 234
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$isHidden()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 235
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$isPinnedToFront()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 236
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$date()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeDateToParcel(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 237
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$timeForRV()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeDateToParcel(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 238
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$lastTriedTime()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeDateToParcel(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 239
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 240
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 241
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
