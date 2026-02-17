.class public Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmModel;
.implements Landroid/os/Parcelable;
.implements Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitTypeItemRealmProxyInterface;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public date:Ljava/util/Date;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem$1;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem$1;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmSet$type(I)V

    .line 49
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readDateFromParcel(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmSet$date(Ljava/util/Date;)V

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmSet$date(Ljava/util/Date;)V

    .line 40
    :goto_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmGet$type()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmSet$type(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;I)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmSet$date(Ljava/util/Date;)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmSet$type(I)V

    .line 31
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmGet$date()Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_1

    .line 32
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmSet$date(Ljava/util/Date;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmGet$type()I

    move-result v0

    return v0
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->date:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$type()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->type:I

    return v0
.end method

.method public realmSet$date(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->date:Ljava/util/Date;

    return-void
.end method

.method public realmSet$type(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmGet$type()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmGet$date()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeDateToParcel(Landroid/os/Parcel;Ljava/util/Date;)V

    return-void
.end method
