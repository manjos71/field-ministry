.class abstract Lcom/doctoror/geocoder/Parser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static parseAddressComponents(Lorg/json/JSONObject;Lcom/doctoror/geocoder/Address;)V
    .locals 10

    .line 204
    const-string v0, "address_components"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 206
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 207
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 208
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 209
    const-string v3, "types"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_6

    .line 213
    :cond_0
    const-string v4, "long_name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "short_name"

    if-eqz v5, :cond_1

    .line 214
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 216
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2a

    .line 218
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_6

    .line 221
    :cond_3
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    .line 222
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_2a

    .line 223
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 224
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v8, "locality"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v9, 0x24

    goto/16 :goto_3

    :sswitch_1
    const-string v8, "bus_station"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_3

    :cond_5
    const/16 v9, 0x23

    goto/16 :goto_3

    :sswitch_2
    const-string v8, "transit_station"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v9, 0x22

    goto/16 :goto_3

    :sswitch_3
    const-string v8, "administrative_area_level_5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v9, 0x21

    goto/16 :goto_3

    :sswitch_4
    const-string v8, "administrative_area_level_4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_3

    :cond_8
    const/16 v9, 0x20

    goto/16 :goto_3

    :sswitch_5
    const-string v8, "administrative_area_level_3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v9, 0x1f

    goto/16 :goto_3

    :sswitch_6
    const-string v8, "administrative_area_level_2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto/16 :goto_3

    :cond_a
    const/16 v9, 0x1e

    goto/16 :goto_3

    :sswitch_7
    const-string v8, "administrative_area_level_1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto/16 :goto_3

    :cond_b
    const/16 v9, 0x1d

    goto/16 :goto_3

    :sswitch_8
    const-string v8, "street_number"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto/16 :goto_3

    :cond_c
    const/16 v9, 0x1c

    goto/16 :goto_3

    :sswitch_9
    const-string v8, "country"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_3

    :cond_d
    const/16 v9, 0x1b

    goto/16 :goto_3

    :sswitch_a
    const-string v8, "subpremise"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_3

    :cond_e
    const/16 v9, 0x1a

    goto/16 :goto_3

    :sswitch_b
    const-string v8, "post_box"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto/16 :goto_3

    :cond_f
    const/16 v9, 0x19

    goto/16 :goto_3

    :sswitch_c
    const-string v8, "neighborhood"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto/16 :goto_3

    :cond_10
    const/16 v9, 0x18

    goto/16 :goto_3

    :sswitch_d
    const-string v8, "colloquial_area"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto/16 :goto_3

    :cond_11
    const/16 v9, 0x17

    goto/16 :goto_3

    :sswitch_e
    const-string v8, "intersection"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    goto/16 :goto_3

    :cond_12
    const/16 v9, 0x16

    goto/16 :goto_3

    :sswitch_f
    const-string v8, "route"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    goto/16 :goto_3

    :cond_13
    const/16 v9, 0x15

    goto/16 :goto_3

    :sswitch_10
    const-string v8, "floor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    goto/16 :goto_3

    :cond_14
    const/16 v9, 0x14

    goto/16 :goto_3

    :sswitch_11
    const-string v8, "ward"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    goto/16 :goto_3

    :cond_15
    const/16 v9, 0x13

    goto/16 :goto_3

    :sswitch_12
    const-string v8, "room"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    goto/16 :goto_3

    :cond_16
    const/16 v9, 0x12

    goto/16 :goto_3

    :sswitch_13
    const-string v8, "park"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    goto/16 :goto_3

    :cond_17
    const/16 v9, 0x11

    goto/16 :goto_3

    :sswitch_14
    const-string v8, "point_of_interest"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    goto/16 :goto_3

    :cond_18
    const/16 v9, 0x10

    goto/16 :goto_3

    :sswitch_15
    const-string v8, "political"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    goto/16 :goto_3

    :cond_19
    const/16 v9, 0xf

    goto/16 :goto_3

    :sswitch_16
    const-string v8, "train_station"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    goto/16 :goto_3

    :cond_1a
    const/16 v9, 0xe

    goto/16 :goto_3

    :sswitch_17
    const-string v8, "premise"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    goto/16 :goto_3

    :cond_1b
    const/16 v9, 0xd

    goto/16 :goto_3

    :sswitch_18
    const-string v8, "parking"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    goto/16 :goto_3

    :cond_1c
    const/16 v9, 0xc

    goto/16 :goto_3

    :sswitch_19
    const-string v8, "airport"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    goto/16 :goto_3

    :cond_1d
    const/16 v9, 0xb

    goto/16 :goto_3

    :sswitch_1a
    const-string v8, "sublocality"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    goto/16 :goto_3

    :cond_1e
    const/16 v9, 0xa

    goto/16 :goto_3

    :sswitch_1b
    const-string v8, "establishment"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    goto/16 :goto_3

    :cond_1f
    const/16 v9, 0x9

    goto/16 :goto_3

    :sswitch_1c
    const-string v8, "sublocality_level_5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    goto/16 :goto_3

    :cond_20
    const/16 v9, 0x8

    goto/16 :goto_3

    :sswitch_1d
    const-string v8, "sublocality_level_4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    goto :goto_3

    :cond_21
    const/4 v9, 0x7

    goto :goto_3

    :sswitch_1e
    const-string v8, "sublocality_level_3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    goto :goto_3

    :cond_22
    const/4 v9, 0x6

    goto :goto_3

    :sswitch_1f
    const-string v8, "sublocality_level_2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    goto :goto_3

    :cond_23
    const/4 v9, 0x5

    goto :goto_3

    :sswitch_20
    const-string v8, "sublocality_level_1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    goto :goto_3

    :cond_24
    const/4 v9, 0x4

    goto :goto_3

    :sswitch_21
    const-string v8, "street_address"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    goto :goto_3

    :cond_25
    const/4 v9, 0x3

    goto :goto_3

    :sswitch_22
    const-string v8, "postal_town"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    goto :goto_3

    :cond_26
    const/4 v9, 0x2

    goto :goto_3

    :sswitch_23
    const-string v8, "postal_code"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    goto :goto_3

    :cond_27
    const/4 v9, 0x1

    goto :goto_3

    :sswitch_24
    const-string v8, "natural_feature"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    goto :goto_3

    :cond_28
    const/4 v9, 0x0

    :goto_3
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_5

    .line 273
    :pswitch_0
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setLocality(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 364
    :pswitch_1
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setBusStation(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 372
    :pswitch_2
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setTransitStation(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 265
    :pswitch_3
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setAdministrativeAreaLevel5(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 261
    :pswitch_4
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setAdministrativeAreaLevel4(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 257
    :pswitch_5
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setAdministrativeAreaLevel3(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 253
    :pswitch_6
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setAdministrativeAreaLevel2(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 249
    :pswitch_7
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setAdministrativeAreaLevel1(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 360
    :pswitch_8
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setStreetNumber(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 242
    :pswitch_9
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setCountry(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 244
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/doctoror/geocoder/Address;->setCountryCode(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 312
    :pswitch_a
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setSubPremise(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 348
    :pswitch_b
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setPostBox(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 305
    :pswitch_c
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setNeighborhood(Ljava/lang/String;)V

    goto :goto_4

    .line 269
    :pswitch_d
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setColloquialArea(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 234
    :pswitch_e
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setIntersection(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 230
    :pswitch_f
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setRoute(Ljava/lang/String;)V

    goto :goto_5

    .line 336
    :pswitch_10
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setFloor(Ljava/lang/String;)V

    goto :goto_5

    .line 277
    :pswitch_11
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setWard(Ljava/lang/String;)V

    goto :goto_5

    .line 356
    :pswitch_12
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setRoom(Ljava/lang/String;)V

    goto :goto_5

    .line 328
    :pswitch_13
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setPark(Ljava/lang/String;)V

    goto :goto_5

    .line 332
    :pswitch_14
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setPointOfInterest(Ljava/lang/String;)V

    goto :goto_5

    .line 238
    :pswitch_15
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setPolitical(Ljava/lang/String;)V

    goto :goto_5

    .line 368
    :pswitch_16
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setTrainStation(Ljava/lang/String;)V

    goto :goto_5

    .line 308
    :goto_4
    :pswitch_17
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setPremise(Ljava/lang/String;)V

    goto :goto_5

    .line 344
    :pswitch_18
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setParking(Ljava/lang/String;)V

    goto :goto_5

    .line 324
    :pswitch_19
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setAirport(Ljava/lang/String;)V

    goto :goto_5

    .line 281
    :pswitch_1a
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setSubLocality(Ljava/lang/String;)V

    goto :goto_5

    .line 340
    :pswitch_1b
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setEstablishment(Ljava/lang/String;)V

    goto :goto_5

    .line 301
    :pswitch_1c
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setSubLocalityLevel5(Ljava/lang/String;)V

    goto :goto_5

    .line 297
    :pswitch_1d
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setSubLocalityLevel4(Ljava/lang/String;)V

    goto :goto_5

    .line 293
    :pswitch_1e
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setSubLocalityLevel3(Ljava/lang/String;)V

    goto :goto_5

    .line 289
    :pswitch_1f
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setSubLocalityLevel2(Ljava/lang/String;)V

    goto :goto_5

    .line 285
    :pswitch_20
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setSubLocalityLevel1(Ljava/lang/String;)V

    goto :goto_5

    .line 226
    :pswitch_21
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setStreetAddress(Ljava/lang/String;)V

    goto :goto_5

    .line 352
    :pswitch_22
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setPostTown(Ljava/lang/String;)V

    goto :goto_5

    .line 316
    :pswitch_23
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setPostalCode(Ljava/lang/String;)V

    goto :goto_5

    .line 320
    :pswitch_24
    invoke-virtual {p1, v4}, Lcom/doctoror/geocoder/Address;->setNaturalFeature(Ljava/lang/String;)V

    :cond_29
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_2a
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a62ff20 -> :sswitch_24
        -0x7a624f1f -> :sswitch_23
        -0x7a5a927a -> :sswitch_22
        -0x72862048 -> :sswitch_21
        -0x65945a66 -> :sswitch_20
        -0x65945a65 -> :sswitch_1f
        -0x65945a64 -> :sswitch_1e
        -0x65945a63 -> :sswitch_1d
        -0x65945a62 -> :sswitch_1c
        -0x58429de9 -> :sswitch_1b
        -0x4434845d -> :sswitch_1a
        -0x3b1ba335 -> :sswitch_19
        -0x2f474c48 -> :sswitch_18
        -0x12fb31ef -> :sswitch_17
        -0x11daee03 -> :sswitch_16
        -0xc8b4103 -> :sswitch_15
        -0x507b79d -> :sswitch_14
        0x3463ea -> :sswitch_13
        0x3580db -> :sswitch_12
        0x37927c -> :sswitch_11
        0x5d0240c -> :sswitch_10
        0x67ab249 -> :sswitch_f
        0xa1e2a89 -> :sswitch_e
        0x1863f8ff -> :sswitch_d
        0x1db5e70e -> :sswitch_c
        0x2d23f5ac -> :sswitch_b
        0x317c87d1 -> :sswitch_a
        0x39175796 -> :sswitch_9
        0x44fd0f05 -> :sswitch_8
        0x470233f5 -> :sswitch_7
        0x470233f6 -> :sswitch_6
        0x470233f7 -> :sswitch_5
        0x470233f8 -> :sswitch_4
        0x470233f9 -> :sswitch_3
        0x59841ac8 -> :sswitch_2
        0x5b56a675 -> :sswitch_1
        0x714bfd63 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseGeometry(Lorg/json/JSONObject;Lcom/doctoror/geocoder/Address;)V
    .locals 11

    .line 152
    const-string v0, "geometry"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 154
    const-string v0, "location_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setLocationType(Ljava/lang/String;)V

    .line 158
    :cond_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "lng"

    const-string v3, "lat"

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 160
    new-instance v1, Lcom/doctoror/geocoder/Address$Location;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 161
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/doctoror/geocoder/Address$Location;-><init>(DD)V

    .line 160
    invoke-virtual {p1, v1}, Lcom/doctoror/geocoder/Address;->setLocation(Lcom/doctoror/geocoder/Address$Location;)V

    .line 164
    :cond_1
    const-string v0, "viewport"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "northeast"

    const-string v5, "southwest"

    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 168
    new-instance v6, Lcom/doctoror/geocoder/Address$Location;

    .line 169
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 170
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/doctoror/geocoder/Address$Location;-><init>(DD)V

    .line 172
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 173
    new-instance v1, Lcom/doctoror/geocoder/Address$Location;

    .line 174
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 175
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-direct {v1, v7, v8, v9, v10}, Lcom/doctoror/geocoder/Address$Location;-><init>(DD)V

    .line 177
    new-instance v0, Lcom/doctoror/geocoder/Address$Viewport;

    invoke-direct {v0, v6, v1}, Lcom/doctoror/geocoder/Address$Viewport;-><init>(Lcom/doctoror/geocoder/Address$Location;Lcom/doctoror/geocoder/Address$Location;)V

    invoke-virtual {p1, v0}, Lcom/doctoror/geocoder/Address;->setViewport(Lcom/doctoror/geocoder/Address$Viewport;)V

    .line 182
    :cond_2
    const-string v0, "bounds"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 184
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/doctoror/geocoder/Address$Location;

    .line 187
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 188
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/doctoror/geocoder/Address$Location;-><init>(DD)V

    .line 190
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 191
    new-instance v0, Lcom/doctoror/geocoder/Address$Location;

    .line 192
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 193
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/doctoror/geocoder/Address$Location;-><init>(DD)V

    .line 195
    new-instance p0, Lcom/doctoror/geocoder/Address$Bounds;

    invoke-direct {p0, v1, v0}, Lcom/doctoror/geocoder/Address$Bounds;-><init>(Lcom/doctoror/geocoder/Address$Location;Lcom/doctoror/geocoder/Address$Location;)V

    invoke-virtual {p1, p0}, Lcom/doctoror/geocoder/Address;->setBounds(Lcom/doctoror/geocoder/Address$Bounds;)V

    :cond_3
    return-void
.end method

.method static parseJson([BIZ)Ljava/util/List;
    .locals 4

    .line 91
    const-string v0, "error_message"

    const-string v1, "status"

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 92
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doctoror/geocoder/Status;->fromString(Ljava/lang/String;)Lcom/doctoror/geocoder/Status;

    move-result-object v1

    .line 99
    sget-object v2, Lcom/doctoror/geocoder/Parser$1;->$SwitchMap$com$doctoror$geocoder$Status:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 p1, 0x2

    if-eq v2, p1, :cond_1

    .line 110
    invoke-static {v1}, Lcom/doctoror/geocoder/GeocoderException;->forStatus(Lcom/doctoror/geocoder/Status;)Lcom/doctoror/geocoder/GeocoderException;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/doctoror/geocoder/GeocoderException;->setErrorMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    :catch_0
    :cond_0
    :try_start_2
    throw p1

    .line 107
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 101
    :cond_2
    const-string v0, "results"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    invoke-static {p1, p2, p0}, Lcom/doctoror/geocoder/Parser;->parseResults(IZLorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 104
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 95
    :cond_4
    new-instance p0, Lcom/doctoror/geocoder/GeocoderException;

    new-instance p1, Lorg/json/JSONException;

    const-string p2, "No \"status\" field"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/doctoror/geocoder/GeocoderException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 120
    new-instance p1, Lcom/doctoror/geocoder/GeocoderException;

    invoke-direct {p1, p0}, Lcom/doctoror/geocoder/GeocoderException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static parseResults(IZLorg/json/JSONObject;)Ljava/util/List;
    .locals 6

    .line 127
    const-string v0, "results"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 128
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p0

    .line 129
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_3

    .line 132
    new-instance v2, Lcom/doctoror/geocoder/Address;

    invoke-direct {v2}, Lcom/doctoror/geocoder/Address;-><init>()V

    .line 133
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 135
    const-string v4, "formatted_address"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/doctoror/geocoder/Address;->setFormattedAddress(Ljava/lang/String;)V

    .line 139
    :cond_1
    invoke-static {v3, v2}, Lcom/doctoror/geocoder/Parser;->parseGeometry(Lorg/json/JSONObject;Lcom/doctoror/geocoder/Address;)V

    if-eqz p1, :cond_2

    .line 142
    invoke-static {v3, v2}, Lcom/doctoror/geocoder/Parser;->parseAddressComponents(Lorg/json/JSONObject;Lcom/doctoror/geocoder/Address;)V

    .line 145
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method
