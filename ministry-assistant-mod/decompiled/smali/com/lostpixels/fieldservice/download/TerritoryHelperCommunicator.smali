.class public abstract Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;,
        Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$Assignment;
    }
.end annotation


# static fields
.field private static locationMap:Ljava/util/Map;

.field private static unitMap:Ljava/util/Map;


# direct methods
.method public static addNewLocations(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;
    .locals 20

    .line 594
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    return-object v10

    .line 597
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->loginToTerritoryHelper(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 600
    invoke-static {v11}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getCongregationId(Ljava/lang/String;)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    move-result-object v12

    .line 601
    iget-object v0, v12, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 604
    :cond_1
    iget-wide v6, v12, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->value:J

    .line 605
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 606
    invoke-static {v11}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getStatusTypes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    .line 608
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-object/from16 v2, p2

    .line 609
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v16, v0, 0x1

    .line 612
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v0

    const-wide/16 v4, 0x0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x1

    if-le v0, v8, :cond_3

    :cond_2
    move-object v2, v3

    move-object/from16 v17, v14

    move-object/from16 p1, v15

    move-wide v14, v4

    move-object/from16 v5, p5

    goto :goto_1

    .line 646
    :cond_3
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v14

    check-cast v9, Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v8, p6

    move-object v2, v3

    move-object/from16 v17, v14

    move-object/from16 p1, v15

    move-object/from16 v3, p3

    move-wide v14, v4

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v9}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->createLocation(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/maps/model/LatLng;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 647
    invoke-static {v11, v14, v15, v2}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->uploadLocation(Ljava/lang/String;JLjava/lang/String;)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    move-result-object v0

    .line 648
    iget-object v2, v12, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 649
    iget-object v0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    return-object v0

    .line 651
    :cond_4
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 652
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v1

    iget-wide v2, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->value:J

    invoke-static {v1, v2, v3, v14, v15}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->createVisit(Ljava/util/Date;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v5, v0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->uploadVisit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    :cond_5
    move-object v0, v5

    move-wide v7, v6

    move-object v1, v11

    goto/16 :goto_4

    .line 615
    :goto_1
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 616
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v9, v1

    move-wide v7, v6

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_3

    .line 619
    :cond_6
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v10

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 621
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->hasLocationId()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->unitMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getRealLocationIdFromTerritoryHelper()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 622
    new-instance v3, Lorg/json/JSONObject;

    sget-object v8, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->unitMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getRealLocationIdFromTerritoryHelper()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 623
    const-string v4, "LocationId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_2

    :cond_8
    if-nez v3, :cond_a

    .line 629
    invoke-static/range {v17 .. v17}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v17

    check-cast v9, Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v8, p6

    invoke-static/range {v0 .. v9}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->createLocation(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/maps/model/LatLng;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v1

    move-object v0, v5

    move-wide v7, v6

    .line 630
    invoke-static {v11, v14, v15, v2}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->uploadLocation(Ljava/lang/String;JLjava/lang/String;)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    move-result-object v1

    .line 631
    iget-object v2, v12, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 632
    iget-object v0, v1, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    return-object v0

    .line 633
    :cond_9
    iget-wide v1, v1, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 634
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    move-object v9, v1

    move-object v0, v5

    move-wide v7, v6

    move-object v1, v3

    .line 639
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static/range {v17 .. v17}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v17

    check-cast v4, Ljava/util/Map;

    invoke-static {v9, v2, v3, v4}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->createUnit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;JLjava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 640
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v2, 0x0

    move-object v1, v11

    invoke-static/range {v1 .. v6}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->uploadUnit(Ljava/lang/String;JLjava/lang/String;J)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    move-result-object v2

    .line 641
    iget-object v3, v2, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    if-nez v3, :cond_b

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 642
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v3

    iget-wide v4, v2, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->value:J

    invoke-static {v3, v14, v15, v4, v5}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->createVisit(Ljava/util/Date;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->uploadVisit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_4
    move-object/from16 v15, p1

    move-object v11, v1

    move-wide v6, v7

    move/from16 v0, v16

    move-object/from16 v14, v17

    goto/16 :goto_0

    :cond_c
    return-object v10

    :catch_0
    move-exception v0

    .line 658
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertStatusId(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static createLocation(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/maps/model/LatLng;Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    .line 454
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    .line 455
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 456
    const-string v2, "CongregationId"

    invoke-virtual {v1, v2, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 457
    const-string p6, "TerritoryId"

    invoke-virtual {v1, p6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    const-string p5, "StreetName"

    invoke-virtual {v1, p5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p5

    invoke-virtual {p5}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object p5

    const-string p6, "Number"

    invoke-virtual {v1, p6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    const-string p5, "City"

    invoke-virtual {v1, p5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    const-string p5, "StatusId"

    invoke-static {p1, p9}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getStatusId(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/util/Map;)J

    move-result-wide p6

    invoke-virtual {v1, p5, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 463
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string p2, " "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    .line 467
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 468
    const-string p2, ", "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_0
    const-string p2, "Address"

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    .line 474
    iget-wide p6, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide/16 v2, 0x0

    cmpl-double p9, p6, v2

    if-eqz p9, :cond_2

    iget-wide p6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double p9, p6, v2

    if-nez p9, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p8, p1

    goto :goto_2

    .line 476
    :cond_2
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getInstance()Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;

    move-result-object p1

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p0, p5, p2, p4}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getFromLocationName(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 478
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 479
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    iget-wide p4, p4, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->latitude:D

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    iget-wide p6, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->longitude:D

    invoke-direct {p1, p4, p5, p6, p7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 484
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_3
    :goto_2
    iget-wide p0, p8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iget-wide p4, p8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p0, p4, p3

    aput-object p1, p4, p2

    const-string p0, "{\"lat\":%s,\"lng\":%s}"

    invoke-static {p0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 492
    const-string p1, "LatLng"

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createUnit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;JLjava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 515
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 516
    const-string v1, "LocationId"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 517
    const-string p1, "StatusId"

    invoke-static {p0, p3}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getStatusId(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/util/Map;)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 518
    const-string p1, "Number"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    const-string p1, "Floor"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 520
    const-string p0, "Notes"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createVisit(Ljava/util/Date;JJ)Ljava/lang/String;
    .locals 4

    .line 499
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 500
    const-string v1, "StatusId"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    .line 502
    const-string p3, "LocationId"

    invoke-virtual {v0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 504
    :cond_0
    const-string p1, "LocationUnitId"

    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 505
    :goto_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 506
    const-string p2, "UTC"

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 507
    const-string p2, "DateVisited"

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 510
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static downloadCompositeTerritory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 142
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.territoryhelper.com/api/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "compositeterritories/%s?access_token=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p0, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 144
    const-string p1, "GET"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 146
    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/net/HttpURLConnection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 149
    :cond_0
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 151
    :goto_0
    invoke-static {p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractLocationsAndUnits(Ljava/lang/String;)Z
    .locals 11

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->unitMap:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->locationMap:Ljava/util/Map;

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    const-string p0, "CompositeLocations"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 116
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 117
    const-string v4, "Units"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "Id"

    if-nez v5, :cond_0

    .line 118
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 119
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_0

    .line 122
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "LocationUnit"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 123
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 124
    sget-object v10, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->unitMap:Ljava/util/Map;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 128
    :cond_0
    const-string v4, "Location"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 129
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 130
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 131
    sget-object v5, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->locationMap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getAssignedTerritories(Landroid/app/Activity;Ljava/lang/String;)Ljava/util/List;
    .locals 13

    .line 723
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 724
    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->loginToTerritoryHelper(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 726
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.territoryhelper.com/api/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const-string v7, "publishers/me/territories?access_token=%s"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 728
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 730
    invoke-static {v1}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/net/HttpURLConnection;)Z

    move-result v5

    const-string v7, "Failed to get territories"

    if-eqz v5, :cond_0

    .line 731
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 733
    :cond_0
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 734
    invoke-static {v5}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 737
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 738
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    const-string v9, "Id"

    const/4 v10, 0x0

    if-ge v1, v8, :cond_2

    .line 739
    new-instance v8, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$Assignment;

    invoke-direct {v8, v10}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$Assignment;-><init>(Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator-IA;)V

    .line 740
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 741
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v8, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$Assignment;->territoryId:J

    .line 742
    const-string v9, "UrlId"

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 743
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 747
    :cond_2
    new-instance v1, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p0, v8, v6

    const-string v11, "publishers/me/campaignterritories?access_token=%s"

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 749
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 751
    invoke-static {v1}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/net/HttpURLConnection;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 752
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 754
    :cond_3
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 755
    invoke-static {v5}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 759
    new-instance v5, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p0, v3, v4

    const-string p0, "territories/%s?access_token=%s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 761
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 762
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 763
    invoke-static {p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 764
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 768
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 769
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v6, v1, :cond_5

    .line 770
    new-instance v1, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$Assignment;

    invoke-direct {v1, v10}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$Assignment;-><init>(Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator-IA;)V

    .line 771
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 772
    const-string v4, "TerritoryId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$Assignment;->territoryId:J

    .line 773
    const-string v4, "CampaignId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$Assignment;->campaignId:J

    .line 775
    iget-wide v3, v1, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$Assignment;->territoryId:J

    cmp-long v5, v3, p0

    if-nez v5, :cond_4

    .line 776
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public static getCongregationId(Ljava/lang/String;)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;
    .locals 6

    .line 161
    new-instance v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;-><init>(Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator-IA;)V

    .line 163
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.territoryhelper.com/api/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "publishers/me?access_token=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 165
    const-string v1, "GET"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 167
    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/net/HttpURLConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 170
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 171
    invoke-static {v1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 172
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    const-string p0, "CongregationId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->value:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 177
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentAssignment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 79
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.territoryhelper.com/api/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "territories/%s/assignments/current?access_token=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p0, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 81
    const-string p1, "GET"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/net/HttpURLConnection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    :goto_0
    invoke-static {p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPublisherId(Ljava/lang/String;)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;
    .locals 6

    .line 211
    new-instance v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;-><init>(Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator-IA;)V

    .line 213
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.territoryhelper.com/api/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "publishers/me?access_token=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 215
    const-string v1, "GET"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 217
    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/net/HttpURLConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 220
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 221
    invoke-static {v1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 222
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 223
    const-string p0, "Id"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->value:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 227
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    return-object v0
.end method

.method private static getStatusId(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/util/Map;)J
    .locals 3

    .line 535
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result p0

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_6

    const/4 v2, 0x7

    if-eq p0, v2, :cond_5

    const/16 v2, 0xd

    if-eq p0, v2, :cond_4

    const/16 v2, 0xa

    if-eq p0, v2, :cond_3

    const/16 v2, 0xb

    if-eq p0, v2, :cond_2

    const/16 v2, 0x10

    if-eq p0, v2, :cond_1

    const/16 v2, 0x11

    if-eq p0, v2, :cond_0

    move-wide p0, v0

    goto :goto_0

    .line 555
    :cond_0
    const-string p0, "PhoneOnly"

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getStatusType(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 552
    :cond_1
    const-string p0, "Witness"

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getStatusType(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 543
    :cond_2
    const-string p0, "NoTrespassing"

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getStatusType(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 537
    :cond_3
    const-string p0, "DoNotCall"

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getStatusType(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 540
    :cond_4
    const-string p0, "Locked"

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getStatusType(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 549
    :cond_5
    const-string p0, "Vacant"

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getStatusType(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 546
    :cond_6
    const-string p0, "LettersOnly"

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getStatusType(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide p0

    :goto_0
    cmp-long v2, p0, v0

    if-nez v2, :cond_7

    const-wide/16 p0, 0x0

    :cond_7
    return-wide p0
.end method

.method private static getStatusType(Ljava/util/Map;Ljava/lang/String;)J
    .locals 2

    .line 526
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 527
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static getStatusTypes(Ljava/lang/String;)Ljava/util/Map;
    .locals 6

    .line 694
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 696
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.territoryhelper.com/api/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "locationstatuses?access_token=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 698
    const-string v1, "GET"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 700
    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/net/HttpURLConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    const-string v1, "Failed to get territories"

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 703
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 704
    invoke-static {v1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 705
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 706
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-ge v5, p0, :cond_1

    .line 707
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 708
    const-string v2, "Id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 709
    const-string v4, "InternalName"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 710
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 714
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTerritoryTypes(Ljava/lang/String;)Ljava/util/Map;
    .locals 6

    .line 665
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 667
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.territoryhelper.com/api/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "territorytypes?access_token=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 669
    const-string v1, "GET"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 671
    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/net/HttpURLConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    const-string v1, "Failed to get territories"

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 674
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 675
    invoke-static {v1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 676
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 677
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-ge v5, p0, :cond_1

    .line 678
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 679
    const-string v2, "Id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 680
    const-string v4, "Name"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 681
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 685
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isError(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 99
    :cond_0
    const-string v1, "assignment_not_found"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 101
    :cond_1
    const-string v1, "territory_not_found"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 103
    :cond_2
    const-string v0, "invalid_token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isError(Ljava/net/HttpURLConnection;)Z
    .locals 1

    .line 893
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x257

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPublisherAllowedToReturnTerritories(Ljava/lang/String;)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;
    .locals 6

    .line 186
    new-instance v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;-><init>(Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator-IA;)V

    .line 188
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.territoryhelper.com/api/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "congregations/my?access_token=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 190
    const-string v1, "GET"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 192
    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/net/HttpURLConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 195
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 196
    invoke-static {v1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 197
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 198
    const-string p0, "PublisherCanReturnAssignments"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->value:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 202
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    return-object v0
.end method

.method private static loginToTerritoryHelper(Landroid/app/Activity;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    .line 59
    :try_start_0
    new-array v5, v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    :try_start_2
    const-string v1, "Prepare looper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    new-instance v1, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    new-instance v3, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;

    invoke-direct {v3, p0}, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;-><init>(Landroid/content/Context;)V

    const-string v4, "https://www.territoryhelper.com/api/auth"

    const-string v6, "http://localhost"

    const-string v7, "code"

    const-string v8, "JihQ8AtAyLTU1RWaeNrqdaEUh7bn6m3umol77gvoqo3f"

    const-string v9, "offline"

    const-string v10, "https://www.territoryhelper.com/api/token"

    const-string v11, "DoARSXHyYAJRBuTb8VZw7C_l1HuH-9rMXpZ3tDRcBIE1"

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;-><init>(Landroid/app/Activity;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->getAccessToken()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static returnTerritory(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 790
    :try_start_0
    invoke-static {v1}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->loginToTerritoryHelper(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 793
    invoke-static {v3}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isPublisherAllowedToReturnTerritories(Ljava/lang/String;)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    move-result-object v4

    .line 794
    iget-object v5, v4, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    if-eqz v5, :cond_0

    return-object v5

    .line 796
    :cond_0
    iget-wide v4, v4, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->value:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 797
    const-string v0, "You\'re not allowed the return the territory. Contact the territory overseer."

    return-object v0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 800
    :cond_1
    invoke-static/range {p0 .. p1}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getAssignedTerritories(Landroid/app/Activity;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 803
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$Assignment;

    .line 804
    iget-wide v10, v9, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$Assignment;->campaignId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v14, v10, v6

    if-eqz v14, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x3

    .line 805
    const-string v15, "UTC"

    const/16 v16, 0x0

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    const-string v6, "Notes"

    const-string v7, "https://www.territoryhelper.com/api/"

    if-nez v10, :cond_7

    move-object/from16 v14, p1

    const/16 v17, 0x2

    .line 806
    :try_start_1
    invoke-static {v3, v14}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getCurrentAssignment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 808
    invoke-static {v8}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 809
    const-string v0, "return territory"

    invoke-static {v0, v8}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f1200e4

    .line 810
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 813
    :cond_3
    invoke-static {v3}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getPublisherId(Ljava/lang/String;)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    move-result-object v9

    .line 814
    iget-object v2, v9, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    const/4 v2, 0x0

    const/16 v18, 0x1

    .line 817
    iget-wide v12, v9, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->value:J

    .line 820
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 821
    const-string v8, "Id"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 822
    invoke-virtual {v9, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 824
    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 825
    const-string v5, "DateReturned"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 826
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 828
    const-string v5, "PublisherId"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v9, v12, v5

    if-eqz v9, :cond_5

    const v0, 0x7f1200e5

    .line 829
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    if-eqz v0, :cond_6

    .line 832
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 833
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "territories/return/%s?access_token=%s&unworked=%b&notes=%s"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    xor-int/lit8 v12, p2, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v9, v15, v2

    aput-object v3, v15, v18

    aput-object v12, v15, v17

    aput-object v13, v15, v11

    invoke-static {v7, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 835
    :cond_6
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "territories/return/%s?access_token=%s&unworked=%b"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    xor-int/lit8 v12, p2, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v9, v11, v2

    aput-object v3, v11, v18

    aput-object v12, v11, v17

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_2
    move-object/from16 v19, v3

    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_7
    move-object/from16 v14, p1

    const/4 v2, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x1

    .line 838
    new-instance v12, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "campaigns/%d/campaignterritories/%d?access_token=%s"

    move-object/from16 v19, v3

    const/16 v20, 0x0

    iget-wide v2, v9, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$Assignment;->campaignId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v21, v12

    iget-wide v11, v9, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$Assignment;->territoryId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v20

    aput-object v9, v3, v18

    aput-object v19, v3, v17

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 840
    const-string v7, "GET"

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 841
    invoke-static {v2}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/net/HttpURLConnection;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 842
    const-string v5, "Failed to return campaing territory"

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v6}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v5, v3

    goto :goto_4

    .line 844
    :cond_8
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 845
    invoke-static {v7}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 848
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 849
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 850
    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 851
    const-string v5, "DateCompleted"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v0, :cond_9

    .line 853
    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 854
    :cond_9
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 859
    :goto_4
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    .line 860
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    if-eqz v10, :cond_b

    if-eqz p2, :cond_a

    .line 862
    const-string v3, "PUT"

    goto :goto_5

    :cond_a
    const-string v3, "DELETE"

    :goto_5
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_6

    .line 864
    :cond_b
    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 866
    :goto_6
    const-string v3, "Content-Type"

    const-string v5, "application/json"

    invoke-virtual {v2, v3, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string v3, "charset"

    const-string v5, "utf-8"

    invoke-virtual {v2, v3, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 869
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 871
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 872
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 873
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 874
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 876
    invoke-static {v2}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/net/HttpURLConnection;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 877
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 878
    invoke-static {v0}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    const v2, 0x7f1200e1

    .line 879
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    move-object/from16 v3, v19

    const-wide/16 v6, 0x0

    goto/16 :goto_0

    :cond_d
    const/16 v16, 0x0

    return-object v16

    .line 885
    :cond_e
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 887
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f1200e1

    .line 888
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateExistingLocations(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 405
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 408
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->loginToTerritoryHelper(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 412
    invoke-static {v4, v1}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->downloadCompositeTerritory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->extractLocationsAndUnits(Ljava/lang/String;)Z

    .line 414
    invoke-static {v4}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getStatusTypes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 415
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-object/from16 v12, p2

    .line 416
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v13, v5, 0x1

    .line 418
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getRealLocationIdFromTerritoryHelper()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 421
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->isTHLocationUnit()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 422
    sget-object v9, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->unitMap:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 423
    sget-object v9, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->unitMap:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v3

    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    invoke-static {v9, v11, v3}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->updateUnit(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 424
    new-instance v9, Lorg/json/JSONObject;

    sget-object v14, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->unitMap:Ljava/util/Map;

    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v9, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 425
    const-string v14, "LocationId"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v17, v4

    .line 426
    sget-object v4, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->locationMap:Ljava/util/Map;

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v11, v6, v0, v2}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->updateLocation(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 427
    sget-object v6, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->unitMap:Ljava/util/Map;

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v5, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->locationMap:Ljava/util/Map;

    invoke-interface {v5, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v5, v7

    move-wide v8, v14

    move-object/from16 v4, v17

    move-object v7, v3

    invoke-static/range {v4 .. v9}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->uploadUnit(Ljava/lang/String;JLjava/lang/String;J)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    move-result-object v3

    move-wide v7, v5

    .line 431
    iget-object v3, v3, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 432
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v5, v6, v7, v8}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->createVisit(Ljava/util/Date;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1, v3}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->uploadVisit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-object/from16 v16, v3

    goto :goto_1

    :cond_2
    move-object/from16 v16, v3

    .line 435
    sget-object v3, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->locationMap:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 436
    sget-object v3, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->locationMap:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Ljava/util/Map;

    invoke-static {v3, v11, v6, v0, v9}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->updateLocation(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 437
    sget-object v6, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->locationMap:Ljava/util/Map;

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v7, v8, v3}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->uploadLocation(Ljava/lang/String;JLjava/lang/String;)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    move-result-object v3

    .line 439
    iget-object v3, v3, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 440
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v7, v8, v5, v6}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->createVisit(Ljava/util/Date;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1, v3}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->uploadVisit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    move v5, v13

    move-object/from16 v3, v16

    goto/16 :goto_0

    :cond_4
    move-object/from16 v16, v3

    return-object v16

    .line 447
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f1200e2

    move-object/from16 v1, p0

    .line 448
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static updateLocation(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    .line 289
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p0

    .line 292
    const-string v1, "Number"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string v1, "StreetName"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string v1, "City"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string v1, "StatusId"

    invoke-static {p1, p4}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getStatusId(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/util/Map;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 296
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string p2, " "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    .line 302
    const-string p0, ", "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_0
    const-string p0, "Address"

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 308
    const-string p1, "{\"lat\":%s,\"lng\":%s}"

    iget-wide p2, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    iget-wide p3, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p2, p3, p4

    const/4 p2, 0x1

    aput-object p0, p3, p2

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 309
    const-string p1, "LatLng"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 315
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static updateUnit(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 236
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    const-string p0, "Floor"

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 238
    const-string p0, "Number"

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string p0, "StatusId"

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->getStatusId(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/util/Map;)J

    move-result-wide p1

    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 241
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static uploadLocation(Ljava/lang/String;JLjava/lang/String;)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;
    .locals 7

    .line 322
    new-instance v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;-><init>(Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator-IA;)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 325
    const-string v5, "https://www.territoryhelper.com/api/"

    cmp-long v6, p1, v1

    if-eqz v6, :cond_0

    .line 326
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "locations/%s?access_token=%s"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v4

    aput-object p0, p2, v3

    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    .line 328
    :cond_0
    new-instance v1, Ljava/net/URL;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "locations?access_token=%s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 330
    :goto_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 331
    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    if-nez v6, :cond_1

    .line 332
    const-string p1, "POST"

    goto :goto_1

    :cond_1
    const-string p1, "PUT"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 333
    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string p1, "charset"

    const-string p2, "utf-8"

    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 338
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 339
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 340
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 341
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    if-nez v6, :cond_3

    .line 345
    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/net/HttpURLConnection;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 346
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    return-object v0

    .line 348
    :cond_2
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 349
    invoke-static {p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 350
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 351
    const-string p0, "Id"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    iput-wide p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->value:J

    return-object v0

    .line 354
    :cond_3
    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/net/HttpURLConnection;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 355
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    .line 359
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    return-object v0
.end method

.method private static uploadUnit(Ljava/lang/String;JLjava/lang/String;J)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;
    .locals 8

    .line 249
    new-instance v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;-><init>(Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator-IA;)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 252
    const-string v6, "https://www.territoryhelper.com/api/"

    cmp-long v7, p1, v1

    if-eqz v7, :cond_0

    .line 253
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "locations/%s/units/%s?access_token=%s"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p4, p2, v5

    aput-object p1, p2, v4

    aput-object p0, p2, v3

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    .line 255
    :cond_0
    new-instance v1, Ljava/net/URL;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "locations/%s/units?access_token=%s"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    new-array p5, v3, [Ljava/lang/Object;

    aput-object p4, p5, v5

    aput-object p0, p5, v4

    invoke-static {p2, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 256
    :goto_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 257
    invoke-virtual {p0, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    if-nez v7, :cond_1

    .line 258
    const-string p1, "POST"

    goto :goto_1

    :cond_1
    const-string p1, "PUT"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 259
    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string p1, "charset"

    const-string p2, "utf-8"

    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0, v5}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 264
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 265
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 266
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 267
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 269
    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/net/HttpURLConnection;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 270
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    return-object v0

    .line 272
    :cond_2
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 273
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 274
    const-string p0, "Id"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    iput-wide p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->value:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 279
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    return-object v0
.end method

.method private static uploadVisit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;
    .locals 6

    .line 368
    new-instance v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;-><init>(Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator-IA;)V

    .line 370
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.territoryhelper.com/api/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "territories/%s/visits?access_token=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object p0, v4, p1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 373
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 374
    const-string p1, "POST"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 375
    const-string p1, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, p1, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string p1, "charset"

    const-string v1, "utf-8"

    invoke-virtual {p0, p1, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0, v5}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 379
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 380
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 381
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 382
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 385
    invoke-static {p0}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->isError(Ljava/net/HttpURLConnection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 386
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 388
    :cond_0
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 389
    invoke-static {p1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 390
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 391
    const-string p0, "Id"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    iput-wide p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->value:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 395
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator$OutputResult;->error:Ljava/lang/String;

    return-object v0
.end method
