.class abstract Lcom/doctoror/geocoder/LocationIQParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static parseAddressComponents(Lorg/json/JSONObject;Lcom/doctoror/geocoder/Address;)V
    .locals 4

    .line 469
    const-string v0, "address"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 470
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 474
    const-string v0, "country"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "country_code"

    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_17

    .line 479
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 482
    :cond_2
    const-string v1, "route"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 483
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/doctoror/geocoder/Address;->setRoute(Ljava/lang/String;)V

    .line 484
    :cond_3
    const-string v1, "road"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 485
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/doctoror/geocoder/Address;->setRoute(Ljava/lang/String;)V

    .line 487
    :cond_4
    const-string v1, "intersection"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 488
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/doctoror/geocoder/Address;->setIntersection(Ljava/lang/String;)V

    .line 489
    :cond_5
    const-string v1, "political"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 490
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/doctoror/geocoder/Address;->setPolitical(Ljava/lang/String;)V

    .line 492
    :cond_6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 493
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setCountry(Ljava/lang/String;)V

    .line 494
    :cond_7
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 495
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setCountryCode(Ljava/lang/String;)V

    .line 496
    :cond_8
    const-string v0, "state"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 497
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setAdministrativeAreaLevel1(Ljava/lang/String;)V

    .line 498
    :cond_9
    const-string v0, "county"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 499
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setAdministrativeAreaLevel2(Ljava/lang/String;)V

    .line 500
    :cond_a
    const-string v0, "region"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 501
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setAdministrativeAreaLevel3(Ljava/lang/String;)V

    .line 503
    :cond_b
    const-string v0, "administrative_area_level_4"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 504
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setAdministrativeAreaLevel4(Ljava/lang/String;)V

    .line 506
    :cond_c
    const-string v0, "administrative_area_level_5"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 507
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setAdministrativeAreaLevel5(Ljava/lang/String;)V

    .line 509
    :cond_d
    const-string v0, "hamlet"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 510
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setLocality(Ljava/lang/String;)V

    .line 511
    :cond_e
    const-string v0, "suburb"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 512
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setNeighborhood(Ljava/lang/String;)V

    .line 513
    :cond_f
    const-string v0, "village"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 514
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setLocality(Ljava/lang/String;)V

    .line 515
    :cond_10
    const-string v0, "town"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 516
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setLocality(Ljava/lang/String;)V

    .line 517
    :cond_11
    const-string v0, "city"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 518
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setLocality(Ljava/lang/String;)V

    .line 520
    :cond_12
    const-string v0, "ward"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 521
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setWard(Ljava/lang/String;)V

    .line 523
    :cond_13
    const-string v0, "neighborhood"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 524
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setNeighborhood(Ljava/lang/String;)V

    .line 526
    :cond_14
    const-string v0, "premise"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 527
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setPremise(Ljava/lang/String;)V

    .line 529
    :cond_15
    const-string v0, "postcode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 530
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setPostalCode(Ljava/lang/String;)V

    .line 532
    :cond_16
    const-string v0, "house_number"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 533
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/doctoror/geocoder/Address;->setStreetNumber(Ljava/lang/String;)V

    :cond_17
    :goto_1
    return-void
.end method

.method private static parseGeometry(Lorg/json/JSONObject;Lcom/doctoror/geocoder/Address;)V
    .locals 5

    .line 460
    const-string v0, "lat"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "lon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    new-instance v2, Lcom/doctoror/geocoder/Address$Location;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 462
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/doctoror/geocoder/Address$Location;-><init>(DD)V

    .line 461
    invoke-virtual {p1, v2}, Lcom/doctoror/geocoder/Address;->setLocation(Lcom/doctoror/geocoder/Address$Location;)V

    :cond_0
    return-void
.end method

.method static parseJson([BIZZ)Ljava/util/List;
    .locals 2

    .line 399
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    if-eqz p3, :cond_0

    .line 401
    invoke-static {p1, p2, v0}, Lcom/doctoror/geocoder/LocationIQParser;->parseResultsLatLng(IZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 402
    :cond_0
    invoke-static {p1, p2, v0}, Lcom/doctoror/geocoder/LocationIQParser;->parseResults(IZLjava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 405
    new-instance p1, Lcom/doctoror/geocoder/GeocoderException;

    invoke-direct {p1, p0}, Lcom/doctoror/geocoder/GeocoderException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static parseResults(IZLjava/lang/String;)Ljava/util/List;
    .locals 6

    .line 413
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p2

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 415
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    .line 418
    new-instance v2, Lcom/doctoror/geocoder/Address;

    invoke-direct {v2}, Lcom/doctoror/geocoder/Address;-><init>()V

    .line 419
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 421
    const-string v4, "display_name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 422
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/doctoror/geocoder/Address;->setFormattedAddress(Ljava/lang/String;)V

    .line 425
    :cond_0
    invoke-static {v3, v2}, Lcom/doctoror/geocoder/LocationIQParser;->parseGeometry(Lorg/json/JSONObject;Lcom/doctoror/geocoder/Address;)V

    if-eqz p1, :cond_1

    .line 428
    invoke-static {v3, v2}, Lcom/doctoror/geocoder/LocationIQParser;->parseAddressComponents(Lorg/json/JSONObject;Lcom/doctoror/geocoder/Address;)V

    .line 431
    :cond_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method private static parseResultsLatLng(IZLjava/lang/String;)Ljava/util/List;
    .locals 3

    .line 440
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 441
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 442
    new-instance v0, Lcom/doctoror/geocoder/Address;

    invoke-direct {v0}, Lcom/doctoror/geocoder/Address;-><init>()V

    .line 443
    const-string v1, "display_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/doctoror/geocoder/Address;->setFormattedAddress(Ljava/lang/String;)V

    .line 446
    :cond_0
    invoke-static {p0, v0}, Lcom/doctoror/geocoder/LocationIQParser;->parseGeometry(Lorg/json/JSONObject;Lcom/doctoror/geocoder/Address;)V

    if-eqz p1, :cond_1

    .line 449
    invoke-static {p0, v0}, Lcom/doctoror/geocoder/LocationIQParser;->parseAddressComponents(Lorg/json/JSONObject;Lcom/doctoror/geocoder/Address;)V

    .line 452
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
