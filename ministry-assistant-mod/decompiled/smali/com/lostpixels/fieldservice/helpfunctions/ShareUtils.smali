.class public abstract Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static msLetter:Ljava/lang/String;

.field private static msNoTime:Ljava/lang/String;

.field private static msNotAtHome:Ljava/lang/String;

.field private static msNotInterested:Ljava/lang/String;

.field private static msPerPhone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getTerritoryAsText(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Territory;[Z)Ljava/lang/String;
    .locals 26

    move-object/from16 v0, p1

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 136
    const-string v3, "checkGpsAsMinutes"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\n"

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f030002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 145
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 148
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v10

    const-string v11, " "

    if-eqz v10, :cond_2

    .line 149
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 150
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-nez v8, :cond_3

    .line 155
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    .line 161
    :cond_3
    :goto_2
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v13, -0x1

    const/4 v14, -0x1

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 163
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v12

    if-eq v14, v12, :cond_5

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v12

    if-eqz v12, :cond_5

    if-eq v14, v13, :cond_4

    .line 166
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_4
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v14

    .line 168
    invoke-static {v0, v14}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_5
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v12

    .line 175
    const-string v13, ", "

    if-eqz v12, :cond_d

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    goto/16 :goto_4

    .line 177
    :cond_6
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v12

    if-nez v12, :cond_8

    .line 178
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 179
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 180
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 181
    :cond_8
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 182
    :cond_9
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 184
    :cond_a
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 187
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 191
    :cond_c
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 176
    :cond_d
    :goto_4
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v4

    .line 193
    :goto_5
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_e

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_e

    move/from16 v16, v2

    .line 195
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    move/from16 v16, v2

    .line 196
    :goto_6
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 197
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_f
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_10

    .line 202
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    move-object/from16 v18, v3

    const v3, 0x7f120001

    .line 203
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 206
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v3, v19

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    move-object/from16 v20, v6

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_11

    .line 208
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_12
    move-object/from16 v18, v3

    move-object/from16 v20, v6

    .line 215
    :goto_7
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v2

    const-wide/16 v21, 0x0

    cmp-long v6, v2, v21

    if-eqz v6, :cond_13

    .line 216
    invoke-static/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v2

    move-object v3, v7

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v6

    move-object/from16 v12, p0

    invoke-virtual {v2, v12, v6, v7}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v2

    goto :goto_8

    :cond_13
    move-object/from16 v12, p0

    move-object v3, v7

    const/4 v2, 0x0

    .line 217
    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    .line 220
    aget-boolean v6, p3, v4

    if-eqz v6, :cond_15

    if-nez v2, :cond_15

    .line 221
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    if-eqz v6, :cond_15

    if-eqz v16, :cond_14

    move-object/from16 v19, v5

    const/16 v23, 0x3

    .line 224
    iget-wide v4, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move/from16 v24, v8

    iget-wide v7, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5, v7, v8}, Lcom/lostpixels/fieldservice/utils/map/PositionUtils;->getGPSCoordinatesAsDegrees(DD)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v4, v5, v17

    const-string v4, "\n(%s)\n"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_14
    move-object/from16 v19, v5

    move/from16 v24, v8

    const/16 v17, 0x0

    const/16 v23, 0x3

    .line 226
    iget-wide v4, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-wide v5, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v17

    const/4 v6, 0x1

    aput-object v5, v7, v6

    const-string v4, "\n(%.4f,%.4f)\n"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_15
    move-object/from16 v19, v5

    move/from16 v24, v8

    const/16 v23, 0x3

    :goto_9
    if-eqz v2, :cond_16

    .line 231
    const-string v4, "------\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_16
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_18

    .line 234
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v4

    cmp-long v6, v4, v21

    if-eqz v6, :cond_17

    const/4 v6, 0x1

    aget-boolean v4, p3, v6

    if-nez v4, :cond_18

    :cond_17
    const/16 v17, 0x0

    aget-boolean v4, p3, v17

    if-eqz v4, :cond_18

    .line 235
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    if-eqz v2, :cond_1b

    const/4 v6, 0x1

    .line 238
    aget-boolean v4, p3, v6

    if-eqz v4, :cond_1b

    const/16 v25, 0x2

    aget-boolean v4, p3, v25

    if-nez v4, :cond_1b

    .line 239
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result v4

    if-ne v4, v6, :cond_19

    const/16 v17, 0x0

    .line 241
    aget-object v4, v18, v17

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_19
    const/16 v17, 0x0

    .line 242
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result v4

    if-nez v4, :cond_1a

    .line 243
    aget-object v4, v18, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 245
    :cond_1a
    aget-object v4, v18, v23

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :goto_a
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAge()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1b
    const/16 v17, 0x0

    .line 250
    :goto_b
    invoke-static {v12}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v4

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getNote(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1d

    if-nez v2, :cond_1d

    .line 252
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getNumberOfVisits()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1c

    .line 256
    const-string v5, " ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getNumberOfVisits()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    const/4 v5, 0x1

    goto :goto_c

    :cond_1d
    const/4 v5, 0x0

    .line 263
    :goto_c
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v6

    cmp-long v8, v6, v21

    if-nez v8, :cond_1f

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getComment()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1f

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1f

    if-eqz v4, :cond_1e

    .line 264
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 265
    :cond_1e
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    goto :goto_d

    :cond_1f
    move v6, v5

    :goto_d
    if-eqz v2, :cond_26

    const/16 v25, 0x2

    .line 271
    aget-boolean v4, p3, v25

    if-eqz v4, :cond_26

    const/4 v4, 0x1

    aget-boolean v5, p3, v4

    if-nez v5, :cond_26

    .line 272
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 274
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    move-object/from16 v7, v19

    .line 275
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getInfo()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_20

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_20

    .line 277
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_20
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getScriptures()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_21

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getScriptures()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_21

    .line 281
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getScriptures()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_21
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getPublications()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_22

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getPublications()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_22

    .line 285
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getPublications()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_22
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getNextTime()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_23

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getNextTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_23

    .line 289
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getNextTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_23
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v7

    goto :goto_e

    :cond_24
    move-object/from16 v7, v19

    :cond_25
    const/4 v4, 0x1

    goto :goto_f

    :cond_26
    move-object/from16 v7, v19

    .line 295
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v4

    cmp-long v8, v4, v21

    if-eqz v8, :cond_25

    const/16 v25, 0x2

    aget-boolean v4, p3, v25

    if-eqz v4, :cond_25

    const/4 v4, 0x1

    aget-boolean v5, p3, v4

    if-eqz v5, :cond_27

    if-eqz v2, :cond_27

    .line 297
    invoke-virtual {v2, v0, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    :goto_f
    if-eqz v2, :cond_28

    .line 302
    const-string v2, "\n------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    if-eqz v6, :cond_29

    .line 304
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    move-object v5, v7

    move/from16 v2, v16

    move-object/from16 v6, v20

    move/from16 v8, v24

    const/4 v4, 0x0

    const/4 v13, -0x1

    move-object v7, v3

    move-object/from16 v3, v18

    goto/16 :goto_3

    :cond_2a
    move-object/from16 v12, p0

    move/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v6

    move-object v3, v7

    move/from16 v24, v8

    const/16 v17, 0x0

    move-object v7, v5

    .line 306
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    move-object v7, v3

    move-object/from16 v3, v18

    goto/16 :goto_1

    :cond_2b
    move-object/from16 v12, p0

    goto/16 :goto_0

    .line 310
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendAsBinaryOrEmail(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 552
    :try_start_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    .line 553
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10000001

    .line 555
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 556
    const-string v0, "android.intent.extra.SUBJECT"

    const-string v2, "Ministry Assistant Backup"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v0, "android.intent.extra.STREAM"

    const-string v2, "com.lostpixels.fieldservice.fileprovider"

    invoke-static {p0, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 558
    const-string v0, "application/octet-stream"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 560
    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const p1, 0x7f120371

    .line 561
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 563
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendBackupAsEMail(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 567
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f1203de

    .line 568
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static sendBackupAsEMail(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 574
    :try_start_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 575
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10000001

    .line 576
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 577
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "Ministry Assistant Backup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const-string p2, "android.intent.extra.STREAM"

    const-string v1, "com.lostpixels.fieldservice.fileprovider"

    invoke-static {p0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 580
    const-string p1, "application/vnd.mabackupbin"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string p1, "Email:"

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 583
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f1200df

    .line 584
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static sendErrorFilesAsEMail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 589
    const-string v0, "Ministry Assistant Error files"

    invoke-static {p0, p1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendErrorFilesAsEMail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendErrorFilesAsEMail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    .line 594
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 595
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 597
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->getAllErrorFiles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (Android %s)"

    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getAndroidVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 602
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const v3, 0x7f1200d4

    if-nez v2, :cond_3

    .line 603
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v4, 0x6

    const/16 v5, -0xe

    .line 604
    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 605
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 606
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v6, 0x10000001

    .line 608
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 609
    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const-string p2, "android.intent.extra.EMAIL"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 613
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v6, 0x0

    :cond_0
    :goto_0
    if-ge v6, p2, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/String;

    .line 614
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-lez v10, :cond_0

    .line 616
    const-string v8, "com.lostpixels.fieldservice.fileprovider"

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v8, v9}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 618
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 619
    const-string p2, "android.intent.extra.STREAM"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 620
    const-string p1, "vnd.android.cursor.dir/email"

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string p1, "Email:"

    invoke-static {v2, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 623
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 625
    :cond_3
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 628
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f1200df

    .line 629
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static sendPersonAsData(Lio/realm/Realm;Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 6

    .line 343
    const-string v0, "application/vnd.maexportbin"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "MAPerson-"

    const-string v3, ".maexport"

    new-instance v4, Ljava/io/File;

    .line 344
    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getTempFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 345
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 349
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 351
    new-instance v4, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    .line 352
    sget-object v5, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v4, v3, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v3

    .line 354
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p0

    invoke-virtual {p0, v3, p3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->exportData(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/lostpixels/fieldservice/internal/ministry/Person;)Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x7f1203e1

    .line 355
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 357
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 359
    invoke-static {p1, v2}, Lcom/lostpixels/fieldservice/utils/ContentUriProvider;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 362
    new-instance p3, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {p3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10000001

    .line 364
    invoke-virtual {p3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 365
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p3, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string p2, "android.intent.extra.STREAM"

    invoke-virtual {p3, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 367
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    new-instance p2, Landroid/content/ClipData;

    const-string v2, "MAExport"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, p0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {p2, v2, v0, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 370
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const p0, 0x7f1201bc

    .line 371
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 374
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x7f1200df

    .line 375
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static sendPersonAsText(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 2

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p2, p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string p2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string p1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x7f1201bc

    .line 116
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendPersonAsvCard(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 11

    .line 382
    :try_start_0
    new-instance p1, Lezvcard/VCard;

    invoke-direct {p1}, Lezvcard/VCard;-><init>()V

    .line 385
    new-instance v0, Lezvcard/property/StructuredName;

    invoke-direct {v0}, Lezvcard/property/StructuredName;-><init>()V

    .line 386
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lezvcard/VCard;->setFormattedName(Ljava/lang/String;)Lezvcard/property/FormattedName;

    .line 388
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lezvcard/property/StructuredName;->setFamily(Ljava/lang/String;)V

    .line 390
    :cond_0
    invoke-virtual {p1, v0}, Lezvcard/VCard;->setStructuredName(Lezvcard/property/StructuredName;)V

    .line 393
    new-instance v0, Lezvcard/property/Address;

    invoke-direct {v0}, Lezvcard/property/Address;-><init>()V

    .line 394
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 396
    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v2, v3, v4, v5}, Lezvcard/VCard;->setGeo(DD)Lezvcard/property/Geo;

    .line 397
    :cond_1
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 399
    invoke-virtual {v0, v1}, Lezvcard/property/Address;->setStreetAddress(Ljava/lang/String;)V

    .line 400
    :cond_2
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 402
    invoke-virtual {v0, v1}, Lezvcard/property/Address;->setLocality(Ljava/lang/String;)V

    .line 403
    :cond_3
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 405
    invoke-virtual {v0, v1}, Lezvcard/property/Address;->setPostalCode(Ljava/lang/String;)V

    .line 406
    :cond_4
    invoke-virtual {p1, v0}, Lezvcard/VCard;->addAddress(Lezvcard/property/Address;)V

    .line 409
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 410
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 411
    new-array v3, v2, [Lezvcard/parameter/TelephoneType;

    sget-object v4, Lezvcard/parameter/TelephoneType;->HOME:Lezvcard/parameter/TelephoneType;

    aput-object v4, v3, v1

    invoke-virtual {p1, v0, v3}, Lezvcard/VCard;->addTelephoneNumber(Ljava/lang/String;[Lezvcard/parameter/TelephoneType;)Lezvcard/property/Telephone;

    .line 412
    :cond_5
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 413
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 414
    new-array v3, v2, [Lezvcard/parameter/TelephoneType;

    sget-object v4, Lezvcard/parameter/TelephoneType;->CELL:Lezvcard/parameter/TelephoneType;

    aput-object v4, v3, v1

    invoke-virtual {p1, v0, v3}, Lezvcard/VCard;->addTelephoneNumber(Ljava/lang/String;[Lezvcard/parameter/TelephoneType;)Lezvcard/property/Telephone;

    .line 415
    :cond_6
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getVideoPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 416
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 417
    new-array v3, v2, [Lezvcard/parameter/TelephoneType;

    sget-object v4, Lezvcard/parameter/TelephoneType;->VIDEO:Lezvcard/parameter/TelephoneType;

    aput-object v4, v3, v1

    invoke-virtual {p1, v0, v3}, Lezvcard/VCard;->addTelephoneNumber(Ljava/lang/String;[Lezvcard/parameter/TelephoneType;)Lezvcard/property/Telephone;

    .line 418
    :cond_7
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 419
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 420
    new-array v3, v2, [Lezvcard/parameter/EmailType;

    sget-object v4, Lezvcard/parameter/EmailType;->HOME:Lezvcard/parameter/EmailType;

    aput-object v4, v3, v1

    invoke-virtual {p1, v0, v3}, Lezvcard/VCard;->addEmail(Ljava/lang/String;[Lezvcard/parameter/EmailType;)Lezvcard/property/Email;

    .line 423
    :cond_8
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 424
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lezvcard/VCard;->addNote(Ljava/lang/String;)Lezvcard/property/Note;

    goto :goto_0

    .line 429
    :cond_9
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 431
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_b

    .line 434
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 435
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_b

    move-object v0, p2

    .line 438
    :cond_b
    const-string p2, "MinistryAssistantExport"

    if-nez v0, :cond_c

    move-object v0, p2

    .line 442
    :cond_c
    :try_start_1
    const-string v3, "|"

    const-string v4, "\\"

    const-string v5, "?"

    const-string v6, "*"

    const-string v7, "<"

    const-string v8, "\""

    const-string v9, ":"

    const-string v10, ">"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0x8

    if-ge v4, v5, :cond_d

    .line 443
    aget-object v5, v3, v4

    .line 444
    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 447
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_3

    :cond_e
    move-object p2, v0

    .line 450
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".vcf"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 452
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    new-array p2, v2, [Lezvcard/VCard;

    aput-object p1, p2, v1

    invoke-static {p2}, Lezvcard/Ezvcard;->write([Lezvcard/VCard;)Lezvcard/Ezvcard$WriterChainText;

    move-result-object p1

    sget-object p2, Lezvcard/VCardVersion;->V3_0:Lezvcard/VCardVersion;

    invoke-virtual {p1, p2}, Lezvcard/Ezvcard$WriterChainText;->version(Lezvcard/VCardVersion;)Lezvcard/Ezvcard$WriterChainText;

    move-result-object p1

    invoke-virtual {p1, v0}, Lezvcard/Ezvcard$WriterChainText;->go(Ljava/io/File;)V

    .line 454
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    const-string p2, "text/x-vcard"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x10000001

    .line 456
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 457
    const-string p2, "android.intent.extra.STREAM"

    const-string v1, "com.lostpixels.fieldservice.fileprovider"

    .line 458
    invoke-static {p0, v1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 457
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 461
    const-string p1, "sendPersonAsvCard"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendStringAsEMail(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    if-eqz p3, :cond_1

    .line 526
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    invoke-static {p0}, Lde/cketti/mailto/EmailIntentBuilder;->from(Landroid/content/Context;)Lde/cketti/mailto/EmailIntentBuilder;

    move-result-object v0

    .line 533
    invoke-virtual {v0, p3}, Lde/cketti/mailto/EmailIntentBuilder;->to(Ljava/lang/String;)Lde/cketti/mailto/EmailIntentBuilder;

    move-result-object p3

    .line 534
    invoke-virtual {p3, p1}, Lde/cketti/mailto/EmailIntentBuilder;->subject(Ljava/lang/String;)Lde/cketti/mailto/EmailIntentBuilder;

    move-result-object p1

    .line 535
    invoke-virtual {p1, p2}, Lde/cketti/mailto/EmailIntentBuilder;->body(Ljava/lang/String;)Lde/cketti/mailto/EmailIntentBuilder;

    move-result-object p1

    .line 536
    invoke-virtual {p1}, Lde/cketti/mailto/EmailIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 527
    :cond_1
    :goto_0
    invoke-static {p0}, Lde/cketti/mailto/EmailIntentBuilder;->from(Landroid/content/Context;)Lde/cketti/mailto/EmailIntentBuilder;

    move-result-object p3

    .line 528
    invoke-virtual {p3, p1}, Lde/cketti/mailto/EmailIntentBuilder;->subject(Ljava/lang/String;)Lde/cketti/mailto/EmailIntentBuilder;

    move-result-object p1

    .line 529
    invoke-virtual {p1, p2}, Lde/cketti/mailto/EmailIntentBuilder;->body(Ljava/lang/String;)Lde/cketti/mailto/EmailIntentBuilder;

    move-result-object p1

    .line 530
    invoke-virtual {p1}, Lde/cketti/mailto/EmailIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_1
    const-string p2, "Email:"

    if-lez p4, :cond_2

    .line 540
    :try_start_1
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 542
    :cond_2
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 545
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f1200df

    .line 546
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static sendStringAsSMS(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 84
    :try_start_0
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 88
    const-string p2, "sms_body"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 90
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    const-string p2, "text/plain"

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string p2, "android.intent.extra.TEXT"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-lez p3, :cond_2

    .line 97
    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 99
    :cond_2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 101
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f1200e0

    .line 102
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static sendTerritoryAsData(Lio/realm/Realm;Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 5

    const/4 v0, 0x0

    .line 493
    :try_start_0
    const-string v1, "MATerritory-"

    const-string v2, ".maexport"

    new-instance v3, Ljava/io/File;

    .line 494
    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getTempFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 495
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 499
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 501
    new-instance v3, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    .line 502
    sget-object v4, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v3, v2, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v2

    .line 503
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p0

    invoke-virtual {p0, v2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->exportData(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x7f1203e1

    .line 504
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 506
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 508
    new-instance p0, Landroid/content/Intent;

    const-string p3, "android.intent.action.SEND"

    invoke-direct {p0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p3, 0x10000001

    .line 510
    invoke-virtual {p0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 511
    const-string p3, "android.intent.extra.SUBJECT"

    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const-string p2, "android.intent.extra.STREAM"

    const-string p3, "com.lostpixels.fieldservice.fileprovider"

    invoke-static {p1, p3, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 515
    const-string p2, "application/vnd.maexportbin"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x7f1201bc

    .line 516
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 518
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x7f1200df

    .line 519
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static sendTerritoryAsText(Lio/realm/Realm;Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;[Z)V
    .locals 2

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "android.intent.extra.TEXT"

    invoke-static {p0, p1, p3, p4}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->getTerritoryAsText(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Territory;[Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string p0, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string p0, "android.intent.category.DEFAULT"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const p0, 0x7f1201bc

    .line 127
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    .line 128
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static visitTypeToText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 634
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->msNotAtHome:Ljava/lang/String;

    const/16 v1, 0x11

    if-nez v0, :cond_0

    .line 635
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 636
    aget-object v2, v0, v1

    sput-object v2, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->msNotAtHome:Ljava/lang/String;

    const/4 v2, 0x0

    .line 637
    aget-object v2, v0, v2

    sput-object v2, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->msNotInterested:Ljava/lang/String;

    const/4 v2, 0x1

    .line 638
    aget-object v2, v0, v2

    sput-object v2, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->msNoTime:Ljava/lang/String;

    const/4 v2, 0x5

    .line 639
    aget-object v0, v0, v2

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->msLetter:Ljava/lang/String;

    const v0, 0x7f120485

    .line 640
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->msPerPhone:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_5

    const/16 p0, 0x9

    if-eq p1, p0, :cond_4

    if-eq p1, v1, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    .line 682
    const-string p0, ""

    return-object p0

    .line 645
    :cond_1
    sget-object p0, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->msNotInterested:Ljava/lang/String;

    return-object p0

    .line 649
    :cond_2
    sget-object p0, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->msNoTime:Ljava/lang/String;

    return-object p0

    .line 653
    :cond_3
    sget-object p0, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->msPerPhone:Ljava/lang/String;

    return-object p0

    .line 647
    :cond_4
    sget-object p0, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->msNotAtHome:Ljava/lang/String;

    return-object p0

    .line 651
    :cond_5
    sget-object p0, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->msLetter:Ljava/lang/String;

    return-object p0
.end method
