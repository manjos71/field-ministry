.class public Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmModel;
.implements Landroid/os/Parcelable;
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxyInterface;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lostpixels/fieldservice/internal/report/ServiceSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public booklets:I

.field public books:I

.field public comment:Ljava/lang/String;

.field public custom1:I

.field public custom2:I

.field public custom3:I

.field public date:Ljava/util/Date;

.field public doneMinistry:Z

.field public dvds:I

.field public magazines:I

.field public mileageKilometers:F

.field public minutes:I

.field public rbcMinutes:I

.field public retVisits:I

.field public studies:I

.field public studyPersons:I

.field public tracts:I

.field public videoShowings:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession$1;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession$1;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->clear()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$minutes(I)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$rbcMinutes(I)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$magazines(I)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$booklets(I)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$books(I)V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$tracts(I)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$mileageKilometers(F)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$retVisits(I)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studies(I)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studyPersons(I)V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$dvds(I)V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$videoShowings(I)V

    .line 93
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readDateFromParcel(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$date(Ljava/util/Date;)V

    .line 94
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$comment(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom1(I)V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom2(I)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom3(I)V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$doneMinistry(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$booklets()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$booklets(I)V

    .line 60
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$books()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$books(I)V

    .line 61
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$tracts()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$tracts(I)V

    .line 62
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$retVisits()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$retVisits(I)V

    .line 63
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$minutes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$minutes(I)V

    .line 64
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$magazines()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$magazines(I)V

    .line 65
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studies()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studies(I)V

    .line 66
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$rbcMinutes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$rbcMinutes(I)V

    .line 67
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studyPersons()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studyPersons(I)V

    .line 68
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$date(Ljava/util/Date;)V

    .line 69
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$comment(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$dvds()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$dvds(I)V

    .line 71
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$videoShowings()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$videoShowings(I)V

    .line 72
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$mileageKilometers(F)V

    .line 73
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom1(I)V

    .line 74
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom2(I)V

    .line 75
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom3(I)V

    .line 76
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$doneMinistry()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$doneMinistry(Z)V

    return-void
.end method

.method public static getReport(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZZZZZZZZZZZZZZ)Ljava/lang/String;
    .locals 19

    .line 159
    const-string v16, ", "

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v17, p14

    move/from16 v15, p15

    move/from16 v18, p16

    invoke-static/range {v1 .. v18}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getReportInternal(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZZZZZZZZZZZZLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getReportInternal(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZZZZZZZZZZZZLjava/lang/String;ZZ)Ljava/lang/String;
    .locals 14

    move-object/from16 v0, p15

    if-eqz p7, :cond_0

    const/4 v13, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p13

    move/from16 v12, p16

    .line 172
    invoke-static/range {v0 .. v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getReportS4(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZZZZZZZZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    move/from16 v5, p6

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isBeforeJan2016()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-eqz p14, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 175
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v7

    const-string v8, " "

    if-eqz v7, :cond_5

    if-eqz p3, :cond_2

    .line 178
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    invoke-static {v7, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-eqz p8, :cond_3

    .line 180
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    invoke-static {v7}, Lcom/lostpixels/fieldservice/utils/DateUtils;->roundToQuarters(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    invoke-static {v7, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 182
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v7

    if-ne v7, v4, :cond_4

    const v7, 0x7f120412

    .line 185
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const v7, 0x7f120418

    .line 187
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 188
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDoneMinistry()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz p17, :cond_6

    const v7, 0x7f1200ae

    .line 189
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_6
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v7

    if-eqz v7, :cond_c

    .line 193
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 194
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-eqz p3, :cond_8

    .line 197
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    invoke-static {v7, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 199
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    :goto_3
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p16, :cond_a

    .line 202
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v7

    if-ne v7, v4, :cond_9

    const v7, 0x7f1201de

    .line 203
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    const v7, 0x7f1201df

    .line 205
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 207
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v7

    if-ne v7, v4, :cond_b

    const v7, 0x7f1204a2

    .line 208
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_b
    const v7, 0x7f1204a3

    .line 210
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    :goto_4
    if-nez v2, :cond_f

    .line 214
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v7

    if-eqz v7, :cond_f

    .line 215
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 216
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v7

    if-ne v7, v4, :cond_e

    const v7, 0x7f12043a

    .line 221
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_e
    const v7, 0x7f12043c

    .line 223
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_f
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v7

    if-nez v2, :cond_12

    if-eqz v7, :cond_12

    .line 228
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_10

    .line 229
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_10
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v7, v4, :cond_11

    const v7, 0x7f120384

    .line 234
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_11
    const v7, 0x7f120386

    .line 236
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    :goto_6
    if-nez v2, :cond_15

    .line 239
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v7

    if-eqz v7, :cond_15

    .line 240
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_13

    .line 241
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v7

    if-ne v7, v4, :cond_14

    const v7, 0x7f12037f

    .line 246
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_14
    const v7, 0x7f120382

    .line 248
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    :goto_7
    if-nez v2, :cond_18

    .line 251
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v7

    if-eqz v7, :cond_18

    .line 252
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_16

    .line 253
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v7

    if-ne v7, v4, :cond_17

    const v7, 0x7f12053a

    .line 258
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_17
    const v7, 0x7f12053c

    .line 260
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    :goto_8
    if-eqz v2, :cond_1b

    .line 263
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 264
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 265
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_19
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v2

    if-ne v2, v4, :cond_1a

    const v2, 0x7f12031b

    .line 270
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_1a
    const v2, 0x7f12031c

    .line 272
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_1b
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isBeforeJan2016()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 276
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1c

    .line 277
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v2

    if-ne v2, v4, :cond_1d

    const v2, 0x7f1205f4

    .line 282
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_1d
    const v2, 0x7f1205f5

    .line 284
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_1e
    :goto_a
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v2

    if-eqz v2, :cond_21

    .line 288
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1f

    .line 289
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v2

    if-ne v2, v4, :cond_20

    const v2, 0x7f120548

    .line 294
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_20
    const v2, 0x7f12054a

    .line 296
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_21
    :goto_b
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v2

    if-eqz v2, :cond_24

    .line 300
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_22

    .line 301
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_22
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v2

    if-ne v2, v4, :cond_23

    const v2, 0x7f1204b6

    .line 306
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_23
    const v2, 0x7f1204b9

    .line 308
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    :goto_c
    if-eqz p5, :cond_25

    .line 313
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v2

    goto :goto_d

    .line 315
    :cond_25
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result v7

    add-int/2addr v2, v7

    :goto_d
    if-eqz v2, :cond_28

    .line 317
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_26

    .line 318
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_26
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v4, :cond_27

    const v2, 0x7f120507

    .line 323
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_27
    const v2, 0x7f120502

    .line 325
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    :goto_e
    if-eqz p10, :cond_2b

    .line 328
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result v2

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_2b

    .line 329
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_29

    .line 330
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    if-eqz p9, :cond_2a

    const v2, 0x7f120403

    .line 333
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_2a
    const v2, 0x7f120404

    .line 335
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result v1

    const v2, 0x3f1f122b

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_2b
    :goto_f
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p0

    const/4 p1, 0x2

    .line 339
    const-string v1, "%d %s"

    if-eqz p11, :cond_2c

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result v2

    if-nez v2, :cond_2d

    :cond_2c
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v2

    if-lez v2, :cond_31

    .line 340
    :cond_2d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2e

    .line 341
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_2e
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v2

    if-eqz v2, :cond_30

    if-eqz p3, :cond_2f

    .line 344
    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v7

    invoke-direct {v2, v7}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-static {v2, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 346
    :cond_2f
    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v7

    invoke-direct {v2, v7}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    :goto_10
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 350
    :cond_30
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v7

    new-array v9, p1, [Ljava/lang/Object;

    aput-object v2, v9, v3

    aput-object v7, v9, v4

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    :goto_11
    if-eqz p12, :cond_32

    .line 353
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result v2

    if-nez v2, :cond_33

    :cond_32
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v2

    if-lez v2, :cond_37

    .line 354
    :cond_33
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_34

    .line 355
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_34
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v2

    if-eqz v2, :cond_36

    if-eqz p3, :cond_35

    .line 358
    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v7

    invoke-direct {v2, v7}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-static {v2, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 360
    :cond_35
    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v7

    invoke-direct {v2, v7}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    :goto_12
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 364
    :cond_36
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v7

    new-array v9, p1, [Ljava/lang/Object;

    aput-object v2, v9, v3

    aput-object v7, v9, v4

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    :goto_13
    if-eqz p13, :cond_38

    .line 367
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result v2

    if-nez v2, :cond_39

    :cond_38
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v2

    if-lez v2, :cond_3d

    .line 368
    :cond_39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3a

    .line 369
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_3a
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz p3, :cond_3b

    .line 372
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-static {p1, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 374
    :cond_3b
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    :goto_14
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 378
    :cond_3c
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v3

    aput-object p0, p1, v4

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    :goto_15
    if-eqz p4, :cond_3f

    .line 381
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getComment()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3f

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getComment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3f

    .line 382
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3e

    .line 383
    const-string p0, "\n"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_3e
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getComment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_3f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getReportS4(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZZZZZZZZZZZ)Ljava/lang/String;
    .locals 9

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isBeforeOctober2023()Z

    move-result v1

    .line 412
    const-string v2, "\n"

    const-string v3, ": "

    if-eqz v1, :cond_0

    const v4, 0x7f12031d

    .line 413
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f1205f6

    .line 418
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-nez v1, :cond_2

    if-eqz p13, :cond_1

    goto :goto_0

    :cond_1
    const v4, 0x7f120103

    .line 435
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    :goto_0
    const v4, 0x7f120413

    .line 426
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_3

    .line 429
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-static {v4, p5, p5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-eqz p6, :cond_4

    .line 431
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-static {v4}, Lcom/lostpixels/fieldservice/utils/DateUtils;->roundToQuarters(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-static {v4, p5, p5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 433
    :cond_4
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    const v4, 0x7f1204b8

    .line 450
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const v4, 0x7f120500

    .line 456
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_6

    .line 459
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v4

    goto :goto_2

    .line 461
    :cond_6
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v4

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result v5

    add-int/2addr v4, v5

    .line 462
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v4

    if-lez v4, :cond_8

    .line 468
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p12, :cond_7

    const v4, 0x7f1201df

    .line 470
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const v4, 0x7f1204a3

    .line 472
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-static {v4, p5, p5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz v1, :cond_9

    .line 489
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v1

    if-lez v1, :cond_9

    .line 490
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120549

    .line 491
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz p8, :cond_b

    .line 496
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_b

    .line 497
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p7, :cond_a

    const v5, 0x7f120403

    .line 499
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    const v5, 0x7f120404

    .line 501
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result v5

    const v6, 0x3f1f122b

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_b
    :goto_4
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p0

    const/4 p1, 0x2

    .line 505
    const-string v5, "%s: %d"

    if-eqz p9, :cond_e

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result v6

    if-eqz v6, :cond_e

    .line 506
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 508
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_c

    .line 511
    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-static {v6, p5, p5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 513
    :cond_c
    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 515
    :cond_d
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, p1, [Ljava/lang/Object;

    aput-object v6, v8, v1

    aput-object v7, v8, v4

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_5
    if-eqz p10, :cond_11

    .line 518
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result v6

    if-eqz v6, :cond_11

    .line 519
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 521
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_f

    .line 524
    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-static {v6, p5, p5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 526
    :cond_f
    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 528
    :cond_10
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, p1, [Ljava/lang/Object;

    aput-object v6, v8, v1

    aput-object v7, v8, v4

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    :goto_6
    if-eqz p11, :cond_14

    .line 531
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result v6

    if-eqz v6, :cond_14

    .line 532
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 534
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_12

    .line 537
    new-instance p0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-static {p0, p5, p5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 539
    :cond_12
    new-instance p0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 542
    :cond_13
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v1

    aput-object p2, p1, v4

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_14
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReportToSend(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZZZZZZZZZZZ)Ljava/lang/String;
    .locals 0

    .line 164
    invoke-static/range {p0 .. p13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getReportS4(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZZZZZZZZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStudiesAsString(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Ljava/lang/String;
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studies()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studyPersons()I

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studies()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studyPersons()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studies()I

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studies()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studyPersons()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isBeforeJan2016(Ljava/util/Date;)Z
    .locals 7

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x7e0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 148
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 149
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public static isBeforeOctober2023(Ljava/util/Date;)Z
    .locals 7

    .line 153
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x7e7

    const/16 v2, 0x9

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 154
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 155
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public add(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 2

    .line 763
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$booklets()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$booklets()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$booklets(I)V

    .line 764
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$books()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$books()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$books(I)V

    .line 765
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$tracts()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$tracts()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$tracts(I)V

    .line 766
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$retVisits()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$retVisits()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$retVisits(I)V

    .line 767
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$minutes()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$minutes()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$minutes(I)V

    .line 768
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$magazines()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$magazines()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$magazines(I)V

    .line 769
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studies()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studies()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studies(I)V

    .line 770
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$rbcMinutes()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$rbcMinutes()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$rbcMinutes(I)V

    .line 771
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$dvds()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$dvds()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$dvds(I)V

    .line 772
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$videoShowings()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$videoShowings()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$videoShowings(I)V

    .line 773
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$mileageKilometers(F)V

    .line 774
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom1(I)V

    .line 775
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom2(I)V

    .line 776
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom3(I)V

    .line 777
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    :cond_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$date(Ljava/util/Date;)V

    .line 779
    :cond_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$comment(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$doneMinistry()Z

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$doneMinistry()Z

    move-result p1

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$doneMinistry(Z)V

    return-object p0
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 830
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$booklets(I)V

    .line 831
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$books(I)V

    .line 832
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$tracts(I)V

    .line 833
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$retVisits(I)V

    .line 834
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$minutes(I)V

    .line 835
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$magazines(I)V

    .line 836
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studies(I)V

    .line 837
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$rbcMinutes(I)V

    .line 838
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studyPersons(I)V

    .line 839
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$dvds(I)V

    .line 840
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$videoShowings(I)V

    const/4 v1, 0x0

    .line 841
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$mileageKilometers(F)V

    .line 842
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$date(Ljava/util/Date;)V

    const/4 v1, 0x0

    .line 843
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$comment(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom1(I)V

    .line 845
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom2(I)V

    .line 846
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom3(I)V

    .line 847
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$doneMinistry(Z)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddedStudies()I
    .locals 1

    .line 742
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studies()I

    move-result v0

    return v0
.end method

.method public getBooks()I
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$books()I

    move-result v0

    return v0
.end method

.method public getBrochures()I
    .locals 1

    .line 646
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$booklets()I

    move-result v0

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 694
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustom1()I
    .locals 1

    .line 654
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result v0

    return v0
.end method

.method public getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;
    .locals 2

    .line 663
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    return-object v0
.end method

.method public getCustom2()I
    .locals 1

    .line 667
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result v0

    return v0
.end method

.method public getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;
    .locals 2

    .line 676
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    return-object v0
.end method

.method public getCustom3()I
    .locals 1

    .line 680
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result v0

    return v0
.end method

.method public getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;
    .locals 2

    .line 689
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 550
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDoneMinistry()Z
    .locals 1

    .line 602
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$doneMinistry()Z

    move-result v0

    return v0
.end method

.method public getDvds()I
    .locals 1

    .line 718
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$dvds()I

    move-result v0

    return v0
.end method

.method public getHours()Lcom/lostpixels/fieldservice/internal/report/Time;
    .locals 2

    .line 559
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$minutes()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    return-object v0
.end method

.method public getMagazines()I
    .locals 1

    .line 634
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$magazines()I

    move-result v0

    return v0
.end method

.method public getMileage(Z)F
    .locals 1

    if-eqz p1, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result p1

    const v0, 0x3f1f122b

    mul-float p1, p1, v0

    return p1
.end method

.method public getPlacements()I
    .locals 2

    .line 642
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$magazines()I

    move-result v0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$booklets()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$books()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$tracts()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;
    .locals 2

    .line 568
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$rbcMinutes()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    return-object v0
.end method

.method public getRbcMinutes()I
    .locals 1

    .line 586
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$rbcMinutes()I

    move-result v0

    return v0
.end method

.method public getRetVisits()I
    .locals 1

    .line 734
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$retVisits()I

    move-result v0

    return v0
.end method

.method public getStudyPersons()I
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studyPersons()I

    move-result v0

    return v0
.end method

.method public getTracts()I
    .locals 1

    .line 710
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$tracts()I

    move-result v0

    return v0
.end method

.method public getVideoShowings()I
    .locals 1

    .line 726
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$videoShowings()I

    move-result v0

    return v0
.end method

.method public hasComment()Z
    .locals 1

    .line 855
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDoneMinistry()Z
    .locals 1

    .line 758
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$doneMinistry()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$minutes()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isBeforeJan2016()Z
    .locals 7

    .line 859
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x7e0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 860
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 861
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isBeforeOctober2023()Z
    .locals 7

    .line 865
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x7e7

    const/16 v2, 0x9

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 866
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 867
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isBeforeOctober2023(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isSessionEmpty()Z
    .locals 2

    .line 851
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$doneMinistry()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$booklets()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$books()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$retVisits()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$minutes()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$rbcMinutes()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studies()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$magazines()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$dvds()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$videoShowings()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$tracts()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadFromFileObjectStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V
    .locals 1

    .line 873
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$minutes(I)V

    .line 874
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$rbcMinutes(I)V

    .line 875
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$magazines(I)V

    .line 876
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$booklets(I)V

    .line 877
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$books(I)V

    .line 878
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$tracts(I)V

    .line 879
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$retVisits(I)V

    .line 880
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studies(I)V

    .line 881
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studyPersons(I)V

    .line 882
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$mileageKilometers(F)V

    .line 883
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$dvds(I)V

    .line 884
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom1(I)V

    .line 885
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom2(I)V

    .line 886
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom3(I)V

    .line 887
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$date(Ljava/util/Date;)V

    .line 888
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$comment(Ljava/lang/String;)V

    const/16 v0, 0x11

    if-lt p2, v0, :cond_0

    .line 891
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$videoShowings(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/16 v0, 0x16

    if-lt p2, v0, :cond_1

    .line 893
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$doneMinistry(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 895
    :goto_1
    const-string p2, "ServiceSession.loadFromFileObjectStream 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    throw p1
.end method

.method public loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3

    .line 952
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 954
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_14

    .line 955
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 956
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 958
    const-string v1, "H"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->toMinutes(D)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$minutes(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 960
    :cond_0
    const-string v1, "Hm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 961
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$minutes(I)V

    goto :goto_0

    .line 962
    :cond_1
    const-string v1, "RBC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 963
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->toMinutes(D)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$rbcMinutes(I)V

    goto :goto_0

    .line 964
    :cond_2
    const-string v1, "RBCm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 965
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$rbcMinutes(I)V

    goto :goto_0

    .line 966
    :cond_3
    const-string v1, "M"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 967
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$magazines(I)V

    goto :goto_0

    .line 968
    :cond_4
    const-string v1, "Br"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 969
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$booklets(I)V

    goto :goto_0

    .line 970
    :cond_5
    const-string v1, "Bk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 971
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$books(I)V

    goto/16 :goto_0

    .line 972
    :cond_6
    const-string v1, "T"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 973
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$tracts(I)V

    goto/16 :goto_0

    .line 974
    :cond_7
    const-string v1, "RV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 975
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$retVisits(I)V

    goto/16 :goto_0

    .line 976
    :cond_8
    const-string v1, "S"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 977
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studies(I)V

    goto/16 :goto_0

    .line 978
    :cond_9
    const-string v1, "SP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 979
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studyPersons(I)V

    goto/16 :goto_0

    .line 980
    :cond_a
    const-string v1, "mil"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 981
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$mileageKilometers(F)V

    goto/16 :goto_0

    .line 982
    :cond_b
    const-string v1, "V"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 983
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$dvds(I)V

    goto/16 :goto_0

    .line 984
    :cond_c
    const-string v1, "VS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 985
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$videoShowings(I)V

    goto/16 :goto_0

    .line 986
    :cond_d
    const-string v1, "C1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 987
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom1(I)V

    goto/16 :goto_0

    .line 988
    :cond_e
    const-string v1, "C2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 989
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom2(I)V

    goto/16 :goto_0

    .line 990
    :cond_f
    const-string v1, "C3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 991
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom3(I)V

    goto/16 :goto_0

    .line 992
    :cond_10
    const-string v1, "C"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 993
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$comment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 994
    :cond_11
    const-string v1, "SD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 995
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$date(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 996
    :cond_12
    const-string v1, "DM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 997
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$doneMinistry(Z)V

    goto/16 :goto_0

    .line 999
    :cond_13
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_14
    return-void

    .line 1003
    :goto_1
    const-string v0, "ServiceSession.loadFromFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    throw p1
.end method

.method public realmGet$booklets()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->booklets:I

    return v0
.end method

.method public realmGet$books()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->books:I

    return v0
.end method

.method public realmGet$comment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$custom1()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->custom1:I

    return v0
.end method

.method public realmGet$custom2()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->custom2:I

    return v0
.end method

.method public realmGet$custom3()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->custom3:I

    return v0
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->date:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$doneMinistry()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->doneMinistry:Z

    return v0
.end method

.method public realmGet$dvds()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->dvds:I

    return v0
.end method

.method public realmGet$magazines()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->magazines:I

    return v0
.end method

.method public realmGet$mileageKilometers()F
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->mileageKilometers:F

    return v0
.end method

.method public realmGet$minutes()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->minutes:I

    return v0
.end method

.method public realmGet$rbcMinutes()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->rbcMinutes:I

    return v0
.end method

.method public realmGet$retVisits()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->retVisits:I

    return v0
.end method

.method public realmGet$studies()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->studies:I

    return v0
.end method

.method public realmGet$studyPersons()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->studyPersons:I

    return v0
.end method

.method public realmGet$tracts()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->tracts:I

    return v0
.end method

.method public realmGet$videoShowings()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->videoShowings:I

    return v0
.end method

.method public realmSet$booklets(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->booklets:I

    return-void
.end method

.method public realmSet$books(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->books:I

    return-void
.end method

.method public realmSet$comment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->comment:Ljava/lang/String;

    return-void
.end method

.method public realmSet$custom1(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->custom1:I

    return-void
.end method

.method public realmSet$custom2(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->custom2:I

    return-void
.end method

.method public realmSet$custom3(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->custom3:I

    return-void
.end method

.method public realmSet$date(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->date:Ljava/util/Date;

    return-void
.end method

.method public realmSet$doneMinistry(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->doneMinistry:Z

    return-void
.end method

.method public realmSet$dvds(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->dvds:I

    return-void
.end method

.method public realmSet$magazines(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->magazines:I

    return-void
.end method

.method public realmSet$mileageKilometers(F)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->mileageKilometers:F

    return-void
.end method

.method public realmSet$minutes(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->minutes:I

    return-void
.end method

.method public realmSet$rbcMinutes(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->rbcMinutes:I

    return-void
.end method

.method public realmSet$retVisits(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->retVisits:I

    return-void
.end method

.method public realmSet$studies(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->studies:I

    return-void
.end method

.method public realmSet$studyPersons(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->studyPersons:I

    return-void
.end method

.method public realmSet$tracts(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->tracts:I

    return-void
.end method

.method public realmSet$videoShowings(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->videoShowings:I

    return-void
.end method

.method public remove(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 2

    .line 786
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$booklets()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$booklets()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$booklets(I)V

    .line 787
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$books()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$books()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$books(I)V

    .line 788
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$tracts()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$tracts()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$tracts(I)V

    .line 789
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$retVisits()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$retVisits()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$retVisits(I)V

    .line 790
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$minutes()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$minutes()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$minutes(I)V

    .line 791
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$magazines()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$magazines()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$magazines(I)V

    .line 792
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studies()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studies()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studies(I)V

    .line 793
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$rbcMinutes()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$rbcMinutes()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$rbcMinutes(I)V

    .line 794
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$dvds()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$dvds()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$dvds(I)V

    .line 795
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$videoShowings()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$videoShowings()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$videoShowings(I)V

    .line 796
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$mileageKilometers(F)V

    .line 797
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom1(I)V

    .line 798
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom2(I)V

    .line 799
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom3(I)V

    .line 800
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    :cond_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$date(Ljava/util/Date;)V

    .line 802
    :cond_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$doneMinistry()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$doneMinistry(Z)V

    return-object p0
.end method

.method public saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 4

    .line 903
    :try_start_0
    const-string v0, "SS"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$minutes()I

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    const-string v0, "Hm"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$minutes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 906
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$rbcMinutes()I

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    const-string v0, "RBCm"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$rbcMinutes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 908
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$magazines()I

    move-result v0

    if-eqz v0, :cond_2

    .line 909
    const-string v0, "M"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$magazines()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 910
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$booklets()I

    move-result v0

    if-eqz v0, :cond_3

    .line 911
    const-string v0, "Br"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$booklets()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 912
    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$books()I

    move-result v0

    if-eqz v0, :cond_4

    .line 913
    const-string v0, "Bk"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$books()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 914
    :cond_4
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$tracts()I

    move-result v0

    if-eqz v0, :cond_5

    .line 915
    const-string v0, "T"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$tracts()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 916
    :cond_5
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$retVisits()I

    move-result v0

    if-eqz v0, :cond_6

    .line 917
    const-string v0, "RV"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$retVisits()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 918
    :cond_6
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studies()I

    move-result v0

    if-eqz v0, :cond_7

    .line 919
    const-string v0, "S"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studies()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 920
    :cond_7
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studyPersons()I

    move-result v0

    if-eqz v0, :cond_8

    .line 921
    const-string v0, "SP"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studyPersons()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 922
    :cond_8
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    .line 923
    const-string v0, "mil"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;F)V

    .line 924
    :cond_9
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$dvds()I

    move-result v0

    if-eqz v0, :cond_a

    .line 925
    const-string v0, "V"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$dvds()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 926
    :cond_a
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$videoShowings()I

    move-result v0

    if-eqz v0, :cond_b

    .line 927
    const-string v0, "VS"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$videoShowings()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 928
    :cond_b
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result v0

    if-eqz v0, :cond_c

    .line 929
    const-string v0, "C1"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 930
    :cond_c
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result v0

    if-eqz v0, :cond_d

    .line 931
    const-string v0, "C2"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 932
    :cond_d
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result v0

    if-eqz v0, :cond_e

    .line 933
    const-string v0, "C3"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 934
    :cond_e
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "SD"

    if-eqz v0, :cond_f

    .line 935
    :try_start_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    goto :goto_1

    .line 937
    :cond_f
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 938
    :goto_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 939
    const-string v0, "C"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$comment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :cond_10
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$doneMinistry()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 941
    const-string v0, "DM"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 942
    :cond_11
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 944
    :goto_2
    const-string v0, "ServiceSession.saveToFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    throw p1
.end method

.method public set(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 3

    .line 808
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$booklets()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$booklets(I)V

    .line 809
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$books()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$books(I)V

    .line 810
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$tracts()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$tracts(I)V

    .line 811
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$retVisits()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$retVisits(I)V

    .line 812
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$minutes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$minutes(I)V

    .line 813
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$magazines()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$magazines(I)V

    .line 814
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studies()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studies(I)V

    .line 815
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$rbcMinutes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$rbcMinutes(I)V

    .line 816
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$date(Ljava/util/Date;)V

    .line 817
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$comment(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$dvds()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$dvds(I)V

    .line 819
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$videoShowings()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$videoShowings(I)V

    .line 820
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$mileageKilometers(F)V

    .line 821
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studyPersons()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studyPersons(I)V

    .line 822
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom1(I)V

    .line 823
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom2(I)V

    .line 824
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom3(I)V

    .line 825
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$doneMinistry()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$doneMinistry(Z)V

    return-object p0
.end method

.method public setAddedStudies(I)V
    .locals 0

    .line 746
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studies(I)V

    return-void
.end method

.method public setBooklets(I)V
    .locals 0

    .line 598
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$booklets(I)V

    return-void
.end method

.method public setBooks(I)V
    .locals 0

    .line 706
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$books(I)V

    return-void
.end method

.method public setBrochures(I)V
    .locals 0

    .line 650
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$booklets(I)V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 698
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$comment(Ljava/lang/String;)V

    return-void
.end method

.method public setCustom1(I)V
    .locals 0

    .line 658
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom1(I)V

    return-void
.end method

.method public setCustom2(I)V
    .locals 0

    .line 671
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom2(I)V

    return-void
.end method

.method public setCustom3(I)V
    .locals 0

    .line 684
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$custom3(I)V

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 554
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method

.method public setDoneMinistry(Z)V
    .locals 0

    .line 606
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$doneMinistry(Z)V

    return-void
.end method

.method public setDvds(I)V
    .locals 0

    .line 722
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$dvds(I)V

    return-void
.end method

.method public setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V
    .locals 0

    .line 563
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$minutes(I)V

    return-void
.end method

.method public setMagazines(I)V
    .locals 0

    .line 638
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$magazines(I)V

    return-void
.end method

.method public setMileage(FZ)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x3f1f122b

    div-float/2addr p1, p2

    .line 630
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$mileageKilometers(F)V

    return-void
.end method

.method public setRbcHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V
    .locals 0

    .line 572
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$rbcMinutes(I)V

    return-void
.end method

.method public setRetVisits(I)V
    .locals 0

    .line 738
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$retVisits(I)V

    return-void
.end method

.method public setStudyPersons(I)V
    .locals 0

    .line 754
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$studyPersons(I)V

    return-void
.end method

.method public setTracts(I)V
    .locals 0

    .line 714
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$tracts(I)V

    return-void
.end method

.method public setVideoShowings(I)V
    .locals 0

    .line 730
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmSet$videoShowings(I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$minutes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$rbcMinutes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$magazines()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$booklets()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$books()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$tracts()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$mileageKilometers()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 110
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$retVisits()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studies()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$studyPersons()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$dvds()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$videoShowings()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$date()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeDateToParcel(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 116
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$comment()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom1()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom2()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$custom3()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->realmGet$doneMinistry()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
