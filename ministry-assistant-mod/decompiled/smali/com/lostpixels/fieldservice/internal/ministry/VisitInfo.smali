.class public Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmModel;
.implements Landroid/os/Parcelable;
.implements Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxyInterface;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public age:I

.field public countStudy:Z

.field public info:Ljava/lang/String;

.field public movies:Ljava/lang/String;

.field public nextTime:Ljava/lang/String;

.field public publications:Ljava/lang/String;

.field public scriptures:Ljava/lang/String;

.field public type:I

.field public visitDate:Ljava/util/Date;

.field public visitType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$1;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$1;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$info(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$visitDate(Ljava/util/Date;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$scriptures(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$publications(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$movies(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$nextTime(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 45
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$type(I)V

    const/4 v0, 0x5

    .line 47
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$visitType(I)V

    const/16 v0, 0x28

    .line 49
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$age(I)V

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$countStudy(Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$info(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$visitDate(Ljava/util/Date;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$scriptures(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$publications(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$movies(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$nextTime(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 45
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$type(I)V

    const/4 v0, 0x5

    .line 47
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$visitType(I)V

    const/16 v0, 0x28

    .line 49
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$age(I)V

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$countStudy(Z)V

    .line 56
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$info(Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readDateFromParcel(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$visitDate(Ljava/util/Date;)V

    .line 58
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$scriptures(Ljava/lang/String;)V

    .line 59
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$publications(Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$movies(Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$nextTime(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$type(I)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$visitType(I)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$age(I)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$countStudy(Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAge()I
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$age()I

    move-result v0

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$info()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMovies()Ljava/lang/String;
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$movies()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextTime()Ljava/lang/String;
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$nextTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublications()Ljava/lang/String;
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$publications()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScriptures()Ljava/lang/String;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$scriptures()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$type()I

    move-result v0

    return v0
.end method

.method public getVisitDate()Ljava/util/Date;
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$visitDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$7;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$7;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;)V

    .line 180
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    .line 175
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$visitDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getVisitType()I
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$visitType()I

    move-result v0

    return v0
.end method

.method public hasVisitType()Z
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$visitType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCountStudy()Z
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$countStudy()Z

    move-result v0

    return v0
.end method

.method public loadFromFileObjectStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;)V
    .locals 2

    .line 272
    :try_start_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$info(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$visitDate(Ljava/util/Date;)V

    .line 274
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$scriptures(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$publications(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$movies(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$nextTime(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$type(I)V

    .line 281
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$visitType(I)V

    .line 282
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$age(I)V

    .line 283
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$countStudy(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 285
    const-string v0, "VisitInfo.loadFromFileObjectStream 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    throw p1
.end method

.method public loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3

    .line 322
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 323
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_c

    .line 324
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 326
    const-string v1, "I"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$info(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_0
    const-string v1, "Sc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$scriptures(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_1
    const-string v1, "Pub"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$publications(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_2
    const-string v1, "Mov"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 333
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$movies(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_3
    const-string v1, "Nx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 335
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$nextTime(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_4
    const-string v1, "Ag"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 337
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$age(I)V

    goto :goto_0

    .line 338
    :cond_5
    const-string v1, "Pt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 339
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPersonType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$type(I)V

    goto/16 :goto_0

    .line 340
    :cond_6
    const-string v1, "Vt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 341
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$visitType(I)V

    goto/16 :goto_0

    .line 342
    :cond_7
    const-string v1, "PtI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 344
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$type(I)V

    goto/16 :goto_0

    .line 345
    :cond_8
    const-string v1, "VtI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 347
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$visitType(I)V

    goto/16 :goto_0

    .line 348
    :cond_9
    const-string v1, "D"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 349
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$visitDate(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 350
    :cond_a
    const-string v1, "St"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 351
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$countStudy(Z)V

    goto/16 :goto_0

    .line 353
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    return-void
.end method

.method public realmGet$age()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->age:I

    return v0
.end method

.method public realmGet$countStudy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->countStudy:Z

    return v0
.end method

.method public realmGet$info()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$movies()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->movies:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$nextTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->nextTime:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$publications()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->publications:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$scriptures()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->scriptures:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->type:I

    return v0
.end method

.method public realmGet$visitDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->visitDate:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$visitType()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->visitType:I

    return v0
.end method

.method public realmSet$age(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->age:I

    return-void
.end method

.method public realmSet$countStudy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->countStudy:Z

    return-void
.end method

.method public realmSet$info(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->info:Ljava/lang/String;

    return-void
.end method

.method public realmSet$movies(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->movies:Ljava/lang/String;

    return-void
.end method

.method public realmSet$nextTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->nextTime:Ljava/lang/String;

    return-void
.end method

.method public realmSet$publications(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->publications:Ljava/lang/String;

    return-void
.end method

.method public realmSet$scriptures(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->scriptures:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->type:I

    return-void
.end method

.method public realmSet$visitDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->visitDate:Ljava/util/Date;

    return-void
.end method

.method public realmSet$visitType(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->visitType:I

    return-void
.end method

.method public saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3

    .line 293
    const-string v0, "PI"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$info()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    const-string v0, "I"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$scriptures()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$scriptures()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    const-string v0, "Sc"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$scriptures()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$publications()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$publications()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 299
    const-string v0, "Pub"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$publications()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$movies()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$movies()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 301
    const-string v0, "Mov"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$movies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$nextTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$nextTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 303
    const-string v0, "Nx"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$nextTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_4
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$type()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    .line 305
    const-string v0, "PtI"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$type()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 306
    :cond_5
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$visitType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    .line 307
    const-string v0, "VtI"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$visitType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 308
    :cond_6
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$visitDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 309
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$visitDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-string v2, "D"

    invoke-virtual {p1, v2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 310
    :cond_7
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$age()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_8

    .line 311
    const-string v0, "Ag"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$age()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 312
    :cond_8
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$countStudy()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 313
    const-string v0, "St"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$countStudy()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 314
    :cond_9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method public setAge(I)V
    .locals 1

    .line 151
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$5;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$5;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;I)V

    .line 156
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 151
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setCountStudy(Z)V
    .locals 1

    .line 105
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$2;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$2;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;Z)V

    .line 110
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 105
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 1

    .line 138
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$4;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$4;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;Ljava/lang/String;)V

    .line 143
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 138
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setMovies(Ljava/lang/String;)V
    .locals 1

    .line 228
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$11;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$11;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;Ljava/lang/String;)V

    .line 233
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 228
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setNextTime(Ljava/lang/String;)V
    .locals 1

    .line 242
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$12;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$12;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;Ljava/lang/String;)V

    .line 247
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 242
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setPublications(Ljava/lang/String;)V
    .locals 1

    .line 214
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$10;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$10;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;Ljava/lang/String;)V

    .line 219
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 214
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setScriptures(Ljava/lang/String;)V
    .locals 1

    .line 200
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$9;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$9;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;Ljava/lang/String;)V

    .line 205
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 200
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 165
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$6;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$6;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;I)V

    .line 170
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 165
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisitDate(Ljava/util/Date;)V
    .locals 1

    .line 186
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$8;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$8;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;Ljava/util/Date;)V

    .line 191
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 186
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setVisitType(I)V
    .locals 1

    .line 119
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$3;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$3;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;I)V

    .line 124
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p1

    .line 119
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getScriptures()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getScriptures()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getScriptures()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getPublications()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getPublications()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getPublications()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_4
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getNextTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getNextTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 382
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_5
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getNextTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$info()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$visitDate()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeDateToParcel(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 72
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$scriptures()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$publications()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$movies()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$nextTime()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$type()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$visitType()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$age()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmGet$countStudy()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
