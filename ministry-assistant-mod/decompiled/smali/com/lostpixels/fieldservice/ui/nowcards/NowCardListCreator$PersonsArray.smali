.class Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PersonsArray"
.end annotation


# instance fields
.field final arrArchivedPersons:Ljava/util/HashMap;

.field final arrOldVisits:Ljava/util/ArrayList;

.field final arrPeopleAtHomeNow:Ljava/util/ArrayList;

.field final arrPinnedVisits:Ljava/util/ArrayList;

.field final arrScheduledVisits:Ljava/util/ArrayList;

.field nFavourites:I

.field nMagRoutes:I

.field nPersons:I

.field nReturnVisits:I

.field nStudies:I


# direct methods
.method public constructor <init>(Lio/realm/Realm;)V
    .locals 14

    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1236
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nReturnVisits:I

    .line 1237
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nStudies:I

    .line 1238
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nFavourites:I

    .line 1239
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nMagRoutes:I

    .line 1240
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nPersons:I

    .line 1243
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v1

    .line 1244
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrScheduledVisits:Ljava/util/ArrayList;

    .line 1245
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrPinnedVisits:Ljava/util/ArrayList;

    .line 1246
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrOldVisits:Ljava/util/ArrayList;

    .line 1247
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrPeopleAtHomeNow:Ljava/util/ArrayList;

    .line 1248
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrArchivedPersons:Ljava/util/HashMap;

    .line 1252
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 1253
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1254
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 1255
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 1256
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 1257
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_3

    .line 1258
    iget-object v8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrArchivedPersons:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1266
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v5, -0x1

    .line 1268
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1269
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x6

    .line 1270
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x1

    .line 1271
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1274
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1275
    iget-object v10, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrArchivedPersons:Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isHidden()Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v10, 0x1

    .line 1278
    :goto_3
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isInterested()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isHidden()Z

    move-result v11

    if-nez v11, :cond_d

    .line 1280
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1281
    iget v11, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nReturnVisits:I

    add-int/2addr v11, v7

    iput v11, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nReturnVisits:I

    const/4 v11, 0x1

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    .line 1284
    :goto_4
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1285
    iget v11, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nStudies:I

    add-int/2addr v11, v7

    iput v11, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nStudies:I

    const/4 v11, 0x1

    .line 1288
    :cond_9
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1289
    iget v11, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nFavourites:I

    add-int/2addr v11, v7

    iput v11, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nFavourites:I

    const/4 v11, 0x1

    .line 1292
    :cond_a
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1293
    iget v11, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nMagRoutes:I

    add-int/2addr v11, v7

    iput v11, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nMagRoutes:I

    const/4 v11, 0x1

    :cond_b
    if-nez v11, :cond_c

    if-nez v10, :cond_d

    .line 1298
    :cond_c
    iget v11, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nPersons:I

    add-int/2addr v11, v7

    iput v11, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->nPersons:I

    .line 1302
    :cond_d
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isPinnedToFront()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isHidden()Z

    move-result v11

    if-nez v11, :cond_e

    .line 1303
    iget-object v11, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrPinnedVisits:Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-nez v10, :cond_13

    .line 1305
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isInterested()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1307
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f

    .line 1308
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_5

    .line 1310
    :cond_f
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getLastUpdate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1311
    :goto_5
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isInterested()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isHidden()Z

    move-result v10

    if-nez v10, :cond_10

    .line 1312
    iget-object v10, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrOldVisits:Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    :cond_10
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isHidden()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_13

    .line 1317
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1318
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v10, v6, :cond_11

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v10, v8, :cond_11

    goto/16 :goto_1

    .line 1321
    :cond_11
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 1322
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1324
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->hasVisitType()Z

    move-result v11

    if-nez v11, :cond_12

    invoke-static {v4, v2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->-$$Nest$smisAboutSameDateAndTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1325
    iget-object v10, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrPeopleAtHomeNow:Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    :cond_13
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1334
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1335
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v10, v6, :cond_5

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v10, v8, :cond_5

    .line 1336
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1337
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1338
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v10, v6, :cond_14

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v10, v8, :cond_14

    goto/16 :goto_1

    .line 1340
    :cond_14
    iget-object v10, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrScheduledVisits:Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1349
    :cond_15
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;->arrScheduledVisits:Ljava/util/ArrayList;

    new-instance v1, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray$1;

    invoke-direct {v1, p0, p1}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray$1;-><init>(Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;Lio/realm/Realm;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
