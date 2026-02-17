.class public Lcom/lostpixels/fieldservice/internal/ministry/Address;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmModel;
.implements Landroid/os/Parcelable;
.implements Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/internal/ministry/Address$VisitComparator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lostpixels/fieldservice/internal/ministry/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addressType:I

.field public date:Ljava/util/Date;

.field public id:J

.field public name:Ljava/lang/String;

.field public visitsList:Lio/realm/RealmList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address$1;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address$1;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 65
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$name(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$visitsList(Lio/realm/RealmList;)V

    :cond_1
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$addressType(I)V

    .line 70
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getNextPrimaryId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$id(J)V

    .line 71
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$name(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$id(J)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$addressType(I)V

    .line 78
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readDateFromParcel(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$date(Ljava/util/Date;)V

    .line 79
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$visitsList(Lio/realm/RealmList;)V

    .line 80
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 81
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 82
    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setParentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$name(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getNextPrimaryId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$id(J)V

    .line 57
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object p1

    if-nez p1, :cond_1

    .line 58
    new-instance p1, Lio/realm/RealmList;

    invoke-direct {p1}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$visitsList(Lio/realm/RealmList;)V

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object p1

    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    invoke-virtual {p1, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$addressType(I)V

    .line 61
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method

.method private getAddressType(Ljava/lang/String;)I
    .locals 1

    .line 115
    const-string v0, "Street"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_0
    const-string v0, "Building"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 119
    :cond_1
    const-string v0, "Rural"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 121
    :cond_2
    const-string v0, "Phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 123
    :cond_3
    const-string v0, "Unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    return p1

    .line 126
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unknown state"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public addVisit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 1

    .line 227
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address$3;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address$3;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    .line 232
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 227
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public addVisits(Ljava/util/List;)V
    .locals 1

    .line 254
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address$6;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address$6;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;Ljava/util/List;)V

    .line 259
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 254
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public clearVisit()V
    .locals 2

    .line 236
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address$4;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address$4;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 241
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 236
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public cloneEmpty()Lcom/lostpixels/fieldservice/internal/ministry/Address;
    .locals 4

    .line 181
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$addressType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 182
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$name(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$addressType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$addressType(I)V

    .line 184
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$id(J)V

    .line 185
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->clear()V

    .line 186
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$date()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$date(Ljava/util/Date;)V

    :cond_0
    return-object v0
.end method

.method public delete()V
    .locals 2

    .line 287
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address$9;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address$9;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 298
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 287
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public duplicate()Lcom/lostpixels/fieldservice/internal/ministry/Address;
    .locals 4

    .line 193
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$addressType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 194
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->clear()V

    .line 195
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 196
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->duplicate()Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v2

    .line 197
    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setParent(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 198
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 171
    :cond_0
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 174
    :cond_1
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 176
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$id()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$id()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastEdited()Ljava/util/Date;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisits()Ljava/util/List;
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVisitsList()Lio/realm/RealmList;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public insertVisit(ILcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 1

    .line 245
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address$5;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;ILcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    .line 250
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 245
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public isBuilding()Z
    .locals 2

    .line 329
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$addressType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEqualID(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Z
    .locals 4

    .line 486
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$id()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$id()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPhoneNumber()Z
    .locals 2

    .line 341
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$addressType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRuralAddress()Z
    .locals 2

    .line 337
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$addressType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStreet()Z
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$addressType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadFromFileObjectStream(Lio/realm/Realm;Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V
    .locals 5

    .line 376
    :try_start_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 377
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->clear()V

    :goto_0
    if-lez v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 384
    new-instance v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 385
    invoke-virtual {v3, p1, p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->loadFromFileObjectStream(Lio/realm/Realm;Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V

    .line 386
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {p1, v3, v4}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 388
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 392
    :cond_1
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$name(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$addressType(I)V

    .line 396
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$date(Ljava/util/Date;)V

    const/16 p1, 0x18

    if-gt p3, p1, :cond_2

    .line 398
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$id(J)V

    return-void

    .line 400
    :cond_2
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$id(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 402
    :goto_2
    const-string p2, "Address.loadFromFileObjectStream 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    throw p1
.end method

.method public loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V
    .locals 3

    .line 430
    :try_start_0
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 434
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 435
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_b

    .line 436
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 438
    const-string v1, "V"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 439
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_2

    .line 440
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 441
    invoke-virtual {v0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V

    .line 442
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 445
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 447
    :cond_3
    const-string v1, "N"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 448
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$name(Ljava/lang/String;)V

    goto :goto_1

    .line 449
    :cond_4
    const-string v1, "B"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 450
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 451
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$addressType(I)V

    goto :goto_1

    .line 452
    :cond_5
    const-string v1, "ID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0x18

    if-gt p2, v0, :cond_6

    .line 454
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$id(J)V

    goto :goto_1

    .line 456
    :cond_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$id(J)V

    goto/16 :goto_1

    .line 457
    :cond_7
    const-string v1, "DT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 458
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$date(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 459
    :cond_8
    const-string v1, "AT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 460
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getAddressType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$addressType(I)V

    goto/16 :goto_1

    .line 461
    :cond_9
    const-string v1, "T"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 463
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$addressType(I)V

    goto/16 :goto_1

    .line 465
    :cond_a
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

    :cond_b
    const/4 p1, 0x7

    if-ge p2, p1, :cond_c

    .line 469
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->updateIsBuilding()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    return-void

    .line 471
    :goto_3
    const-string p2, "Address.loadFromFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    throw p1
.end method

.method public merge(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Address;)Z
    .locals 5

    .line 490
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$id()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$id()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 491
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;

    invoke-direct {v0, p0, p2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;Lcom/lostpixels/fieldservice/internal/ministry/Address;Landroid/content/Context;)V

    .line 522
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 491
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public realmGet$addressType()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;->addressType:I

    return v0
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;->date:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;->id:J

    return-wide v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$visitsList()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;->visitsList:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmSet$addressType(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;->addressType:I

    return-void
.end method

.method public realmSet$date(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;->date:Ljava/util/Date;

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;->id:J

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$visitsList(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address;->visitsList:Lio/realm/RealmList;

    return-void
.end method

.method public removeVisit(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 0

    .line 263
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->deleteItem(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    .line 264
    new-instance p1, Lcom/lostpixels/fieldservice/internal/ministry/Address$7;

    invoke-direct {p1, p0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address$7;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    .line 273
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p2

    .line 264
    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public removeVisitNoSync(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 1

    .line 277
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address$8;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address$8;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    .line 283
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 277
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3

    .line 409
    :try_start_0
    const-string v0, "A"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 410
    const-string v0, "V"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 413
    invoke-virtual {v1, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 415
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 417
    const-string v0, "N"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v0, "T"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$addressType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 419
    const-string v0, "DT"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 420
    const-string v0, "ID"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 421
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 423
    :goto_1
    const-string v0, "Address.saveToFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    throw p1
.end method

.method public setAddressType(I)V
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$addressType(I)V

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 307
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address$10;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address$10;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;Ljava/lang/String;)V

    .line 313
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 307
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisits(Ljava/util/List;)V
    .locals 1

    .line 210
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address$2;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address$2;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;Ljava/util/List;)V

    .line 223
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 210
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public sort()V
    .locals 2

    .line 477
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address$12;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address$12;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 482
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 477
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public updateIsBuilding()V
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$addressType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 318
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address$11;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address$11;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 324
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 318
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$id()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$addressType()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$date()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeDateToParcel(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 92
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
