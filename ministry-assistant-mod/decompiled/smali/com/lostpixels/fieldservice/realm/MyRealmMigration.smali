.class public Lcom/lostpixels/fieldservice/realm/MyRealmMigration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmMigration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public migrate(Lio/realm/DynamicRealm;JJ)V
    .locals 21

    move-object/from16 v1, p0

    .line 41
    const-string v2, "marrBroschures_temp"

    const-string v3, "marrVideos_temp"

    const-string v4, "marrBooks_temp"

    const-string v5, "customTags"

    const-string v6, "magazineList"

    const-string v7, "customTags_temp"

    const-string v8, "magazineList_temp"

    const-string v9, "cities"

    const-string v10, "suburbs"

    const-string v11, "cities_temp"

    const-string v12, "suburbs_temp"

    const-wide/16 v13, 0x0

    const-string v15, "ServiceReportManager"

    const-wide/16 v16, 0x1

    cmp-long v18, p2, v13

    if-nez v18, :cond_0

    .line 42
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lio/realm/DynamicRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v13

    .line 43
    invoke-virtual {v13, v15}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "lastReportTime"

    invoke-virtual {v13, v14}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long v13, p2, v16

    move-wide/from16 p2, v13

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_c

    .line 46
    :cond_0
    :goto_0
    const-string v13, "MinistryManager"

    const-class v14, Ljava/lang/String;

    cmp-long v18, p2, v16

    if-nez v18, :cond_1

    move-object/from16 p4, v15

    .line 47
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lio/realm/DynamicRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v15

    .line 48
    invoke-virtual {v15, v13}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v0, v12, v14}, Lio/realm/RealmObjectSchema;->addRealmListField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v11, v14}, Lio/realm/RealmObjectSchema;->addRealmListField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    move-object/from16 p5, v13

    new-instance v13, Lcom/lostpixels/fieldservice/realm/MyRealmMigration$1;

    invoke-direct {v13, v1}, Lcom/lostpixels/fieldservice/realm/MyRealmMigration$1;-><init>(Lcom/lostpixels/fieldservice/realm/MyRealmMigration;)V

    .line 51
    invoke-virtual {v0, v13}, Lio/realm/RealmObjectSchema;->transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v10}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v12, v10}, Lio/realm/RealmObjectSchema;->renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v9}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v11, v9}, Lio/realm/RealmObjectSchema;->renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    .line 76
    const-string v0, "Person"

    invoke-virtual {v15, v0}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v9, Ljava/lang/Integer;

    .line 77
    invoke-virtual {v0, v8, v9}, Lio/realm/RealmObjectSchema;->addRealmListField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v7, v14}, Lio/realm/RealmObjectSchema;->addRealmListField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    new-instance v9, Lcom/lostpixels/fieldservice/realm/MyRealmMigration$2;

    invoke-direct {v9, v1}, Lcom/lostpixels/fieldservice/realm/MyRealmMigration$2;-><init>(Lcom/lostpixels/fieldservice/realm/MyRealmMigration;)V

    .line 79
    invoke-virtual {v0, v9}, Lio/realm/RealmObjectSchema;->transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v6}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v8, v6}, Lio/realm/RealmObjectSchema;->renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v5}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v7, v5}, Lio/realm/RealmObjectSchema;->renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    .line 105
    const-string v0, "PublicationManager"

    invoke-virtual {v15, v0}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {v0, v4, v14}, Lio/realm/RealmObjectSchema;->addRealmListField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v3, v14}, Lio/realm/RealmObjectSchema;->addRealmListField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v2, v14}, Lio/realm/RealmObjectSchema;->addRealmListField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v5, "marrTracts_temp"

    .line 109
    invoke-virtual {v0, v5, v14}, Lio/realm/RealmObjectSchema;->addRealmListField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v5, "marrOther_temp"

    .line 110
    invoke-virtual {v0, v5, v14}, Lio/realm/RealmObjectSchema;->addRealmListField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v5, "marrMovies_temp"

    .line 111
    invoke-virtual {v0, v5, v14}, Lio/realm/RealmObjectSchema;->addRealmListField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    new-instance v5, Lcom/lostpixels/fieldservice/realm/MyRealmMigration$3;

    invoke-direct {v5, v1}, Lcom/lostpixels/fieldservice/realm/MyRealmMigration$3;-><init>(Lcom/lostpixels/fieldservice/realm/MyRealmMigration;)V

    .line 112
    invoke-virtual {v0, v5}, Lio/realm/RealmObjectSchema;->transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v5, "marrBooks"

    .line 164
    invoke-virtual {v0, v5}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v5, "marrBooks"

    .line 165
    invoke-virtual {v0, v4, v5}, Lio/realm/RealmObjectSchema;->renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v4, "marrVideos"

    .line 166
    invoke-virtual {v0, v4}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v4, "marrVideos"

    .line 167
    invoke-virtual {v0, v3, v4}, Lio/realm/RealmObjectSchema;->renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v3, "marrBroschures"

    .line 168
    invoke-virtual {v0, v3}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v3, "marrBroschures"

    .line 169
    invoke-virtual {v0, v2, v3}, Lio/realm/RealmObjectSchema;->renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v2, "marrTracts"

    .line 170
    invoke-virtual {v0, v2}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v2, "marrTracts_temp"

    const-string v3, "marrTracts"

    .line 171
    invoke-virtual {v0, v2, v3}, Lio/realm/RealmObjectSchema;->renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v2, "marrOther"

    .line 172
    invoke-virtual {v0, v2}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v2, "marrOther_temp"

    const-string v3, "marrOther"

    .line 173
    invoke-virtual {v0, v2, v3}, Lio/realm/RealmObjectSchema;->renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v2, "marrMovies"

    .line 174
    invoke-virtual {v0, v2}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v2, "marrMovies_temp"

    const-string v3, "marrMovies"

    .line 175
    invoke-virtual {v0, v2, v3}, Lio/realm/RealmObjectSchema;->renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-long v2, p2, v16

    goto :goto_1

    :cond_1
    move-object/from16 p5, v13

    move-object/from16 p4, v15

    move-wide/from16 v2, p2

    :goto_1
    const-wide/16 v4, 0x2

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    add-long v2, v2, v16

    :cond_2
    const-wide/16 v4, 0x3

    .line 182
    const-string v0, "MinistryPlannerItem"

    cmp-long v7, v2, v4

    if-nez v7, :cond_11

    .line 184
    :try_start_2
    const-string v4, "MinistryPlannerYear"

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lio/realm/DynamicRealm;->where(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v4

    .line 185
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 186
    invoke-virtual {v4}, Lio/realm/RealmResults;->size()I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_2
    const-string v10, "items"

    if-ltz v8, :cond_4

    .line 187
    :try_start_3
    invoke-virtual {v4, v8}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/realm/DynamicRealmObject;

    .line 188
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "year"

    invoke-virtual {v11, v12}, Lio/realm/DynamicRealmObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 189
    invoke-virtual {v7, v12}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v13

    if-ltz v13, :cond_3

    .line 190
    invoke-virtual {v11, v10}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;)Lio/realm/RealmList;

    move-result-object v10

    .line 191
    invoke-virtual {v10}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 192
    invoke-virtual {v11}, Lio/realm/RealmObject;->deleteFromRealm()V

    .line 194
    :cond_3
    invoke-virtual {v7, v12, v9}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 197
    :cond_4
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->clear()V

    .line 198
    invoke-virtual {v4}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v12, "date"

    if-eqz v11, :cond_7

    :try_start_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/realm/DynamicRealmObject;

    .line 199
    invoke-virtual {v11, v10}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;)Lio/realm/RealmList;

    move-result-object v11

    .line 200
    invoke-virtual {v11}, Lio/realm/RealmList;->size()I

    move-result v13

    sub-int/2addr v13, v9

    :goto_3
    if-ltz v13, :cond_5

    .line 201
    invoke-virtual {v11, v13}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/realm/DynamicRealmObject;

    .line 202
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15, v12}, Lio/realm/DynamicRealmObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 203
    invoke-virtual {v7, v15}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v18

    if-ltz v18, :cond_6

    .line 204
    invoke-virtual {v11, v13}, Lio/realm/RealmList;->deleteFromRealm(I)V

    goto :goto_4

    .line 206
    :cond_6
    invoke-virtual {v7, v15, v9}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :goto_4
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 211
    :cond_7
    invoke-virtual {v5, v0}, Lio/realm/DynamicRealm;->where(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v8

    .line 212
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 213
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->clear()V

    .line 214
    invoke-virtual {v8}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/realm/DynamicRealmObject;

    .line 215
    invoke-virtual {v15, v12}, Lio/realm/DynamicRealmObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 216
    invoke-virtual {v7, v15}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v18

    if-ltz v18, :cond_8

    .line 217
    invoke-virtual {v11, v15, v9}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_5

    .line 219
    :cond_8
    invoke-virtual {v7, v15, v9}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_5

    .line 222
    :cond_9
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    .line 223
    :goto_6
    invoke-virtual {v4}, Lio/realm/RealmResults;->size()I

    move-result v6

    if-ge v15, v6, :cond_b

    .line 224
    invoke-virtual {v4, v15}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/realm/DynamicRealmObject;

    .line 225
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v10}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;)Lio/realm/RealmList;

    move-result-object v6

    const/16 p3, 0x1

    const/4 v9, 0x0

    .line 226
    :goto_7
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v9, v1, :cond_a

    .line 227
    invoke-virtual {v6}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v11, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v18

    move-wide/from16 v19, v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 228
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v2, v19

    goto :goto_7

    :cond_a
    move-wide/from16 v19, v2

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    const/4 v9, 0x1

    goto :goto_6

    :cond_b
    move-wide/from16 v19, v2

    const/16 p3, 0x1

    .line 231
    invoke-virtual {v8}, Lio/realm/RealmResults;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_e

    .line 232
    invoke-virtual {v8, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/DynamicRealmObject;

    .line 233
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_c
    if-ge v4, v3, :cond_d

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lio/realm/DynamicRealmObject;

    .line 234
    invoke-virtual {v6, v12}, Lio/realm/DynamicRealmObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v12}, Lio/realm/DynamicRealmObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_c

    invoke-virtual {v6, v2}, Lio/realm/DynamicRealmObject;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 235
    invoke-virtual {v2}, Lio/realm/RealmObject;->deleteFromRealm()V

    :cond_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 241
    :cond_e
    invoke-virtual {v5, v0}, Lio/realm/DynamicRealm;->where(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 242
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->clear()V

    .line 243
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_9
    if-ltz v2, :cond_10

    .line 245
    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/DynamicRealmObject;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v12}, Lio/realm/DynamicRealmObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 246
    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_f

    .line 247
    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->deleteFromRealm(I)V

    const/4 v4, 0x1

    goto :goto_a

    :cond_f
    const/4 v4, 0x1

    .line 249
    invoke-virtual {v7, v3, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :goto_a
    add-int/lit8 v2, v2, -0x1

    const/16 p3, 0x1

    goto :goto_9

    .line 253
    :cond_10
    invoke-virtual {v5}, Lio/realm/DynamicRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    .line 255
    invoke-virtual {v1, v0}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v12}, Lio/realm/RealmObjectSchema;->addPrimaryKey(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    .line 256
    const-string v2, "MinistryPlannerYear"

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "year"

    invoke-virtual {v1, v2}, Lio/realm/RealmObjectSchema;->addPrimaryKey(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    add-long v2, v19, v16

    goto :goto_b

    :cond_11
    move-object/from16 v5, p1

    move-wide/from16 v19, v2

    :goto_b
    const-wide/16 v6, 0x4

    cmp-long v1, v2, v6

    if-nez v1, :cond_12

    .line 260
    invoke-virtual {v5}, Lio/realm/DynamicRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    move-object/from16 v4, p5

    .line 261
    invoke-virtual {v1, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "personList"

    invoke-virtual {v1, v4}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    const-string v4, "territories"

    invoke-virtual {v1, v4}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    add-long v2, v2, v16

    :cond_12
    const-wide/16 v6, 0x5

    cmp-long v1, v2, v6

    if-nez v1, :cond_13

    .line 265
    invoke-virtual {v5}, Lio/realm/DynamicRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    .line 266
    const-string v4, "Visit"

    invoke-virtual {v1, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "locationIdFromTerritoryHelper"

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    new-array v8, v7, [Lio/realm/FieldAttribute;

    invoke-virtual {v1, v4, v6, v8}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    add-long v2, v2, v16

    :cond_13
    const-wide/16 v6, 0x6

    cmp-long v1, v2, v6

    if-nez v1, :cond_14

    .line 270
    invoke-virtual {v5}, Lio/realm/DynamicRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    .line 271
    const-string v4, "Visit"

    invoke-virtual {v1, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "locationIdHash"

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    new-array v8, v7, [Lio/realm/FieldAttribute;

    invoke-virtual {v1, v4, v6, v8}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    add-long v2, v2, v16

    :cond_14
    const-wide/16 v6, 0x7

    .line 274
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    cmp-long v4, v2, v6

    if-nez v4, :cond_15

    .line 275
    :try_start_5
    invoke-virtual {v5}, Lio/realm/DynamicRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    .line 276
    const-string v6, "YearReport"

    invoke-virtual {v4, v6}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "infirmPioneer"

    const/4 v7, 0x0

    new-array v8, v7, [Lio/realm/FieldAttribute;

    invoke-virtual {v4, v6, v1, v8}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    add-long v2, v2, v16

    :cond_15
    const-wide/16 v6, 0x8

    cmp-long v4, v2, v6

    if-nez v4, :cond_16

    .line 281
    invoke-virtual {v5}, Lio/realm/DynamicRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    move-object/from16 v6, p4

    .line 282
    invoke-virtual {v4, v6}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "customItem1IsTime"

    const/4 v7, 0x0

    new-array v8, v7, [Lio/realm/FieldAttribute;

    invoke-virtual {v4, v6, v1, v8}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v6, "customItem2IsTime"

    new-array v8, v7, [Lio/realm/FieldAttribute;

    .line 283
    invoke-virtual {v4, v6, v1, v8}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v6, "customItem3IsTime"

    new-array v8, v7, [Lio/realm/FieldAttribute;

    invoke-virtual {v4, v6, v1, v8}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v6, "customItem1Caps"

    new-array v8, v7, [Lio/realm/FieldAttribute;

    .line 284
    invoke-virtual {v4, v6, v1, v8}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v6, "customItem2Caps"

    new-array v8, v7, [Lio/realm/FieldAttribute;

    invoke-virtual {v4, v6, v1, v8}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v6, "customItem3Caps"

    new-array v8, v7, [Lio/realm/FieldAttribute;

    .line 285
    invoke-virtual {v4, v6, v1, v8}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v6, "usingCustom1"

    new-array v8, v7, [Lio/realm/FieldAttribute;

    invoke-virtual {v4, v6, v1, v8}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v6, "usingCustom2"

    new-array v8, v7, [Lio/realm/FieldAttribute;

    .line 286
    invoke-virtual {v4, v6, v1, v8}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v6, "usingCustom3"

    new-array v8, v7, [Lio/realm/FieldAttribute;

    invoke-virtual {v4, v6, v1, v8}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    add-long v2, v2, v16

    :cond_16
    const-wide/16 v6, 0x9

    cmp-long v4, v2, v6

    if-nez v4, :cond_17

    .line 290
    invoke-virtual {v5}, Lio/realm/DynamicRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    .line 291
    invoke-virtual {v4, v0}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "comment"

    const/4 v7, 0x0

    new-array v6, v7, [Lio/realm/FieldAttribute;

    invoke-virtual {v0, v4, v14, v6}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    add-long v2, v2, v16

    :cond_17
    const-wide/16 v6, 0xa

    cmp-long v0, v2, v6

    if-nez v0, :cond_18

    .line 296
    invoke-virtual {v5}, Lio/realm/DynamicRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    .line 297
    const-string v2, "ServiceSession"

    invoke-virtual {v0, v2}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "doneMinistry"

    const/4 v7, 0x0

    new-array v3, v7, [Lio/realm/FieldAttribute;

    invoke-virtual {v0, v2, v1, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    .line 301
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    throw v0

    :cond_18
    return-void
.end method
