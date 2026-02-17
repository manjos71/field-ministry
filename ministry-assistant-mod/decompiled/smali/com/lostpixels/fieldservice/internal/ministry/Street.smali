.class public Lcom/lostpixels/fieldservice/internal/ministry/Street;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmModel;
.implements Landroid/os/Parcelable;
.implements Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/internal/ministry/Street$AddressComparator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lostpixels/fieldservice/internal/ministry/Street;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addresses:Lio/realm/RealmList;

.field public date:Ljava/util/Date;

.field public eShowAddress:I

.field public id:J

.field public isArea:Z

.field public name:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$7BXYt4CHSpuw1ScYAuS4ms20200(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 2

    .line 399
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->delete()V

    .line 402
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->deleteFromRealm(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$9mpXvInlgkWWNkD4b2-9o0nB_Og(Lcom/lostpixels/fieldservice/internal/ministry/Street;Ljava/util/List;)V
    .locals 0

    .line 394
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object p0

    .line 394
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$NqUphqgJl2BIPJ7mGJFp_mfMMb8(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 2

    .line 410
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 411
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->delete()V

    goto :goto_0

    .line 413
    :cond_0
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    return-void

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmList;->clear()V

    return-void
.end method

.method public static synthetic $r8$lambda$P5EDXvxqvla7bSeomt3E1DPxR00(Lcom/lostpixels/fieldservice/internal/ministry/Street;ILcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 0

    .line 458
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object p0

    .line 458
    invoke-virtual {p0, p1, p2}, Lio/realm/RealmList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WePtRrEKgcaxS6MVdydXMXA7GPw(Lcom/lostpixels/fieldservice/internal/ministry/Street;I)V
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$eShowAddress(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$X1ZKSbEruSpwmtyK8IVrnWX2BZQ(Lcom/lostpixels/fieldservice/internal/ministry/Street;Ljava/lang/String;)V
    .locals 0

    .line 366
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$name(Ljava/lang/String;)V

    .line 367
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XmQSyTMcQjzD3N7yH-VHCv3C2e4(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 1

    .line 478
    const-string v0, ""

    .line 478
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$name(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZNxSA-XndfIgn3bCJE5Xr5BptKE(Lcom/lostpixels/fieldservice/internal/ministry/Street;ILcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 1

    if-ltz p1, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/realm/RealmList;->add(ILjava/lang/Object;)V

    return-void

    .line 389
    :cond_0
    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bXY5aqC1uWOFsH-qiJbHZZJJ3ng(Lcom/lostpixels/fieldservice/internal/ministry/Street;Z)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    :try_start_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$isArea()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 469
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object p0

    new-instance p1, Lcom/lostpixels/fieldservice/internal/ministry/Street$AddressComparator;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street$AddressComparator;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 471
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fwznqzNmlRmLtIxFHuzW8KnBe5k(Lcom/lostpixels/fieldservice/internal/ministry/Street;Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->delete()V

    .line 442
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/realm/RealmList;->remove(Ljava/lang/Object;)Z

    .line 443
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 444
    invoke-static {p1}, Lio/realm/RealmObject;->deleteFromRealm(Lio/realm/RealmModel;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$odxxlkK_mB3BgeVibsKhwXXQRCI(Lcom/lostpixels/fieldservice/internal/ministry/Street;Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 0

    .line 381
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object p0

    .line 381
    invoke-virtual {p0, p1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$sCzcf7FQH96Cl0zsHln1Ilv5oPo(Lcom/lostpixels/fieldservice/internal/ministry/Street;Lcom/lostpixels/fieldservice/internal/ministry/Address;Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 1

    .line 430
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    .line 430
    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/realm/RealmList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$yRe938rl7nI5puAB70ezV7byg0o(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 1

    const/4 v0, 0x1

    .line 352
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$isArea(Z)V

    .line 353
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zjD3tTVPV-04x1HpFb7mFhhddNQ(Lcom/lostpixels/fieldservice/internal/ministry/Street;Lcom/lostpixels/fieldservice/internal/ministry/Street;Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 485
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 486
    invoke-virtual {v5, p2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->merge(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Address;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 494
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(ILcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 495
    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    :cond_2
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->sort(Z)V

    .line 501
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$date()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 502
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$name(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$isArea()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$isArea(Z)V

    .line 504
    new-instance p2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$date()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$date(Ljava/util/Date;)V

    :cond_3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$1;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street$1;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$eShowAddress(I)V

    .line 58
    new-instance v1, Lio/realm/RealmList;

    invoke-direct {v1}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$addresses(Lio/realm/RealmList;)V

    .line 59
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$name(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$isArea(Z)V

    .line 61
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getNextPrimaryId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$id(J)V

    .line 62
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$eShowAddress(I)V

    .line 66
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$name(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$isArea(Z)V

    .line 68
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readDateFromParcel(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$date(Ljava/util/Date;)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$id(J)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$eShowAddress(I)V

    .line 71
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$addresses(Lio/realm/RealmList;)V

    .line 72
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static getStreet(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Street;
    .locals 1

    .line 105
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p0

    const-string v0, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    return-object p0
.end method


# virtual methods
.method public addAddress(ILcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 1

    .line 385
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda13;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;ILcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 390
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 385
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 1

    .line 381
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda3;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public addAddresses(Ljava/util/List;)V
    .locals 1

    .line 394
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda2;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;Ljava/util/List;)V

    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public cloneEmpty()Lcom/lostpixels/fieldservice/internal/ministry/Street;
    .locals 4

    .line 227
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 228
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$name(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$isArea()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$isArea(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$id(J)V

    .line 231
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_0

    .line 232
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$date(Ljava/util/Date;)V

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 234
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$date()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$date(Ljava/util/Date;)V

    :cond_1
    return-object v0
.end method

.method public delete()V
    .locals 2

    .line 409
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda12;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    .line 417
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 409
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

    .line 217
    :cond_0
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 220
    :cond_1
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 222
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$id()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public getAddresses()Ljava/util/List;
    .locals 1

    .line 421
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$id()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastEdited()Ljava/util/Date;
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 373
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowAddress()I
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$eShowAddress()I

    move-result v0

    return v0
.end method

.method public insertAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;I)V
    .locals 1

    .line 458
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda7;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;ILcom/lostpixels/fieldservice/internal/ministry/Address;)V

    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public isRuralArea()Z
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$isArea()Z

    move-result v0

    return v0
.end method

.method public loadFromFileObjectStream(Lio/realm/Realm;Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V
    .locals 6

    .line 262
    :try_start_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 266
    new-instance v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    const-string v4, ""

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 267
    invoke-virtual {v3, p1, p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->loadFromFileObjectStream(Lio/realm/Realm;Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V

    .line 268
    new-array v4, v1, [Lio/realm/ImportFlag;

    invoke-virtual {p1, v3, v4}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 269
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisitsList()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 270
    invoke-virtual {v5, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setParent(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$name(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$isArea(Z)V

    .line 278
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$date(Ljava/util/Date;)V

    const/16 p1, 0x18

    if-gt p3, p1, :cond_2

    .line 280
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$id(J)V

    return-void

    .line 282
    :cond_2
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$id(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 284
    :goto_2
    const-string p2, "Street.loadFromFileObjectStream 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    throw p1
.end method

.method public loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V
    .locals 3

    .line 313
    :try_start_0
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 317
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 318
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_8

    .line 319
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 321
    const-string v1, "Addresses"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 323
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 324
    invoke-virtual {v0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V

    .line 325
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 327
    :cond_2
    const-string v1, "Name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$name(Ljava/lang/String;)V

    goto :goto_1

    .line 329
    :cond_3
    const-string v1, "IsArea"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 330
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$isArea(Z)V

    goto :goto_1

    .line 331
    :cond_4
    const-string v1, "ID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x18

    if-gt p2, v0, :cond_5

    .line 333
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$id(J)V

    goto :goto_1

    .line 335
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$id(J)V

    goto :goto_1

    .line 336
    :cond_6
    const-string v1, "DT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 337
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmSet$date(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 339
    :cond_7
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

    :cond_8
    return-void

    .line 343
    :goto_3
    const-string p2, "Street.loadFromFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    throw p1
.end method

.method public merge(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Street;)Z
    .locals 5

    .line 477
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda8;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$id()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$id()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 481
    :cond_2
    :goto_0
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda9;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;Lcom/lostpixels/fieldservice/internal/ministry/Street;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public realmGet$addresses()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addresses:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Street;->date:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$eShowAddress()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Street;->eShowAddress:I

    return v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Street;->id:J

    return-wide v0
.end method

.method public realmGet$isArea()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Street;->isArea:Z

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Street;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$addresses(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addresses:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$date(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Street;->date:Ljava/util/Date;

    return-void
.end method

.method public realmSet$eShowAddress(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Street;->eShowAddress:I

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Street;->id:J

    return-void
.end method

.method public realmSet$isArea(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Street;->isArea:Z

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Street;->name:Ljava/lang/String;

    return-void
.end method

.method public removeAddress(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 0

    .line 438
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->deleteItem(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 439
    new-instance p1, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda6;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 445
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p2

    .line 439
    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public removeAddressNoDelete(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 1

    .line 449
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->delete()V

    .line 450
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAddressShallow(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 1

    .line 454
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeEmptyAddresses()V
    .locals 2

    .line 398
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda11;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    .line 405
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 398
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3

    .line 291
    :try_start_0
    const-string v0, "Street"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 292
    const-string v0, "Addresses"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 295
    invoke-virtual {v1, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 299
    const-string v0, "Name"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "IsArea"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$isArea()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 301
    const-string v0, "ID"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$id()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 303
    const-string v0, "DT"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 304
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 306
    :goto_1
    const-string v0, "Street.saveToFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    throw p1
.end method

.method public setShowAddress(I)V
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$eShowAddress()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 208
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda10;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;I)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    :cond_0
    return-void
.end method

.method public setStreetName(Ljava/lang/String;)V
    .locals 1

    .line 365
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda5;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;Ljava/lang/String;)V

    .line 368
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 365
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setToArea()V
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$isArea()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda0;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    .line 355
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 350
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    :cond_0
    return-void
.end method

.method public sort(Z)V
    .locals 1

    .line 466
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda1;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;Z)V

    .line 473
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 466
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public updateAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 1

    .line 429
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street$$ExternalSyntheticLambda4;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;Lcom/lostpixels/fieldservice/internal/ministry/Address;Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 434
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 429
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$isArea()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$date()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeDateToParcel(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 80
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$id()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$eShowAddress()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->realmGet$addresses()Lio/realm/RealmList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
