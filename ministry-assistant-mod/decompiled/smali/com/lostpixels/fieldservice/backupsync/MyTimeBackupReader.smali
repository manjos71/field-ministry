.class public abstract Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static bridge synthetic -$$Nest$smgetReport(Lio/realm/Realm;Landroid/database/sqlite/SQLiteDatabase;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->getReport(Lio/realm/Realm;Landroid/database/sqlite/SQLiteDatabase;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetReturnVisits(Lio/realm/Realm;Landroid/database/sqlite/SQLiteDatabase;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->getReturnVisits(Lio/realm/Realm;Landroid/database/sqlite/SQLiteDatabase;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetTerritories(Lio/realm/Realm;Landroid/database/sqlite/SQLiteDatabase;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->getTerritories(Lio/realm/Realm;Landroid/database/sqlite/SQLiteDatabase;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V

    return-void
.end method

.method static getDate(D)Ljava/util/Date;
    .locals 3

    .line 498
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide v1, 0x41cd27e440000000L    # 9.783072E8

    add-double/2addr p0, v1

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, v1

    double-to-long p0, p0

    .line 500
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 501
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static getReport(Lio/realm/Realm;Landroid/database/sqlite/SQLiteDatabase;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 350
    const-string v3, "SELECT ZTIMEENTRY.ZMINUTES,ZTIMEENTRY.ZDATE,ZTIMETYPE.Z_PK FROM ZTIMEENTRY INNER JOIN ZTIMETYPE ON ZTIMEENTRY.ZTYPE = ZTIMETYPE.Z_PK"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 351
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 353
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    const-string v6, "ZDATE"

    const/4 v7, 0x1

    if-nez v5, :cond_1

    .line 354
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    .line 355
    const-string v8, "Z_PK"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 356
    const-string v9, "ZMINUTES"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 357
    new-instance v10, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 358
    invoke-static {v5, v6}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->getDate(D)Ljava/util/Date;

    move-result-object v5

    .line 359
    invoke-virtual {v10, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    if-ne v8, v7, :cond_0

    .line 361
    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v6, v9}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {v10, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    goto :goto_1

    .line 363
    :cond_0
    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v6, v9}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {v10, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setRbcHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 365
    :goto_1
    invoke-virtual {v2, v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 366
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 369
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 370
    const-string v3, "SELECT * FROM ZSTATISTICSADJUSTMENT"

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 371
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 373
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v8, 0x5

    .line 374
    invoke-virtual {v5, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 375
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    const-string v9, "ZTYPE"

    const-string v10, "LDC"

    const-string v11, "Web Link"

    const-string v12, "TwoMagazine"

    if-nez v8, :cond_d

    .line 376
    const-string v8, "ZTIMESTAMP"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 378
    div-int/lit8 v13, v8, 0x64

    mul-int/lit8 v14, v13, 0x64

    sub-int/2addr v8, v14

    .line 380
    invoke-virtual {v5, v7, v13}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v8, v7

    const/4 v13, 0x2

    .line 381
    invoke-virtual {v5, v13, v8}, Ljava/util/Calendar;->set(II)V

    .line 382
    const-string v8, "ZADJUSTMENT"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 383
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 384
    new-instance v13, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 385
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 387
    const-string v14, "Hours"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 388
    new-instance v9, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v9, v8}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {v13, v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    goto/16 :goto_4

    .line 389
    :cond_2
    const-string v14, "Return Visits"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 390
    invoke-virtual {v13, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setRetVisits(I)V

    goto/16 :goto_4

    .line 391
    :cond_3
    const-string v14, "Magazines"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 392
    invoke-virtual {v13, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMagazines(I)V

    goto/16 :goto_4

    .line 393
    :cond_4
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    mul-int/lit8 v8, v8, 0x2

    .line 394
    invoke-virtual {v13, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMagazines(I)V

    goto :goto_4

    .line 395
    :cond_5
    const-string v12, "Brochures"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 396
    invoke-virtual {v13, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setBrochures(I)V

    goto :goto_4

    .line 397
    :cond_6
    const-string v12, "Books"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 398
    invoke-virtual {v13, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setBooks(I)V

    goto :goto_4

    .line 399
    :cond_7
    const-string v12, "Bible Studies"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 400
    invoke-virtual {v13, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMagazines(I)V

    goto :goto_4

    .line 401
    :cond_8
    const-string v12, "Tracts"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "Campaign Tracts"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "Handbills"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_3

    .line 403
    :cond_9
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 404
    new-instance v9, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v9, v8}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {v13, v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setRbcHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    goto :goto_4

    .line 405
    :cond_a
    const-string v10, "Video Showings"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 406
    invoke-virtual {v13, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setVideoShowings(I)V

    goto :goto_4

    .line 402
    :cond_b
    :goto_3
    invoke-virtual {v13, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setTracts(I)V

    .line 408
    :cond_c
    :goto_4
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 410
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 414
    :cond_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 415
    const-string v3, "SELECT ZPUBLICATION.ZCOUNT, ZPUBLICATION.ZTYPE, ZBULKPLACEMENT.ZDATE FROM ZPUBLICATION JOIN ZBULKPLACEMENT ON ZPUBLICATION.ZBULKPLACEMENT = ZBULKPLACEMENT.Z_PK"

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 416
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 418
    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    const-string v8, "Video Showing"

    const-string v13, "Handbill"

    const-string v14, "Campaign Tract"

    const-string v15, "Tract"

    const/16 v16, 0x1

    const-string v7, "Bible Studie"

    const-string v4, "Book"

    move/from16 v18, v5

    const-string v5, "Brochure"

    const-string v1, "Magazine"

    const-string v0, "Return Visit"

    const-string v2, "Hour"

    move-object/from16 v19, v8

    const-string v8, "ZCOUNT"

    if-nez v18, :cond_19

    move-object/from16 v18, v10

    .line 419
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .line 420
    new-instance v10, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    move-object/from16 v22, v6

    .line 421
    invoke-static/range {v20 .. v21}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->getDate(D)Ljava/util/Date;

    move-result-object v6

    .line 422
    invoke-virtual {v10, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 423
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 424
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 425
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 426
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v0, v8}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {v10, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    :goto_6
    move-object/from16 v0, v18

    goto/16 :goto_8

    .line 427
    :cond_e
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 428
    invoke-virtual {v10, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setRetVisits(I)V

    goto :goto_6

    .line 429
    :cond_f
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 430
    invoke-virtual {v10, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMagazines(I)V

    goto :goto_6

    .line 431
    :cond_10
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    mul-int/lit8 v8, v8, 0x2

    .line 432
    invoke-virtual {v10, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMagazines(I)V

    goto :goto_6

    .line 433
    :cond_11
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 434
    invoke-virtual {v10, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setBrochures(I)V

    goto :goto_6

    .line 435
    :cond_12
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 436
    invoke-virtual {v10, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setBooks(I)V

    goto :goto_6

    .line 437
    :cond_13
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 438
    invoke-virtual {v10, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMagazines(I)V

    goto :goto_6

    .line 439
    :cond_14
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    move-object/from16 v0, v18

    goto :goto_7

    :cond_16
    move-object/from16 v0, v18

    .line 441
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 442
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v1, v8}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {v10, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setRbcHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    goto :goto_8

    :cond_17
    move-object/from16 v1, v19

    .line 443
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 444
    invoke-virtual {v10, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setVideoShowings(I)V

    goto :goto_8

    .line 440
    :goto_7
    invoke-virtual {v10, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setTracts(I)V

    .line 446
    :cond_18
    :goto_8
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, p0

    move-object/from16 v2, p2

    invoke-virtual {v2, v6, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 448
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-object/from16 v1, p1

    move-object v10, v0

    move-object v0, v6

    move-object/from16 v6, v22

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_19
    move-object/from16 v18, v3

    move-object/from16 v22, v6

    move-object v9, v10

    move-object/from16 v3, v19

    move-object/from16 v6, p0

    .line 452
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 453
    const-string v6, "SELECT ZPUBLICATION.ZCOUNT, ZPUBLICATION.ZTYPE AS PUBLICATION, ZRETURNVISIT.ZDATE, ZRETURNVISIT.ZTYPE AS VISITTYPE FROM ZPUBLICATION JOIN ZRETURNVISIT ON ZPUBLICATION.ZRETURNVISIT = ZRETURNVISIT.Z_PK"

    move-object/from16 v10, p1

    const/4 v3, 0x0

    invoke-virtual {v10, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 454
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 456
    :goto_9
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_26

    move-object/from16 v6, v22

    .line 457
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v17

    .line 458
    new-instance v10, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 460
    invoke-static/range {v17 .. v18}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->getDate(D)Ljava/util/Date;

    move-result-object v6

    .line 461
    invoke-virtual {v10, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 462
    const-string v6, "PUBLICATION"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v9

    .line 463
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 464
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 465
    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v6, v9}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {v10, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    :goto_a
    move-object/from16 v17, v0

    :goto_b
    move-object/from16 v0, v19

    goto/16 :goto_d

    .line 466
    :cond_1a
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 467
    invoke-virtual {v10, v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setRetVisits(I)V

    goto :goto_a

    .line 468
    :cond_1b
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 469
    invoke-virtual {v10, v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMagazines(I)V

    goto :goto_a

    .line 470
    :cond_1c
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    mul-int/lit8 v9, v9, 0x2

    .line 471
    invoke-virtual {v10, v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMagazines(I)V

    goto :goto_a

    .line 472
    :cond_1d
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 473
    invoke-virtual {v10, v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setBrochures(I)V

    goto :goto_a

    .line 474
    :cond_1e
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 475
    invoke-virtual {v10, v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setBooks(I)V

    goto :goto_a

    .line 476
    :cond_1f
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 477
    invoke-virtual {v10, v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMagazines(I)V

    goto :goto_a

    .line 478
    :cond_20
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_21

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_21

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_21

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    :cond_21
    move-object/from16 v17, v0

    move-object/from16 v0, v19

    goto :goto_c

    :cond_22
    move-object/from16 v17, v0

    move-object/from16 v0, v18

    .line 480
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_23

    .line 481
    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v6, v9}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {v10, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setRbcHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    move-object/from16 v18, v0

    goto :goto_b

    :cond_23
    move-object/from16 v18, v0

    move-object/from16 v0, v19

    .line 482
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 483
    invoke-virtual {v10, v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setVideoShowings(I)V

    goto :goto_d

    .line 479
    :goto_c
    invoke-virtual {v10, v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setTracts(I)V

    .line 485
    :cond_24
    :goto_d
    const-string v6, "VISITTYPE"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_25

    .line 486
    const-string v9, "Study"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 487
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v10, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setAddedStudies(I)V

    .line 488
    :cond_25
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, p0

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 490
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-object/from16 v0, v17

    move-object/from16 v9, v18

    goto/16 :goto_9

    .line 493
    :cond_26
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private static getReturnVisits(Lio/realm/Realm;Landroid/database/sqlite/SQLiteDatabase;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V
    .locals 13

    .line 164
    const-string v0, "Z_PK"

    :try_start_0
    const-string v1, "SELECT * FROM ZCALL"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_12

    .line 168
    new-instance v3, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;-><init>()V

    const/4 v4, 0x1

    .line 169
    invoke-virtual {v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 171
    const-string v5, "ZSTREET"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 172
    const-string v6, "ZHOUSENUMBER"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 174
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_1

    .line 176
    invoke-virtual {v3, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setAddress(Ljava/lang/String;)V

    .line 178
    :cond_1
    const-string v5, "ZNAME"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 180
    invoke-virtual {v3, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setName(Ljava/lang/String;)V

    .line 181
    :cond_2
    const-string v5, "ZAPARTMENTNUMBER"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 183
    invoke-virtual {v3, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setApartment(Ljava/lang/String;)V

    .line 185
    :cond_3
    const-string v5, "ZLATTITUDE"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    .line 186
    const-string v7, "ZLONGITUDE"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v11, v5, v9

    if-eqz v11, :cond_4

    cmpl-double v11, v7, v9

    if-eqz v11, :cond_4

    .line 188
    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v9, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v3, v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 190
    :cond_4
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM ZADDITIONALINFORMATION WHERE ZCALL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 195
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "ZTYPE"

    if-nez v7, :cond_a

    .line 196
    :try_start_1
    const-string v7, "ZVALUE"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 197
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eq v8, v4, :cond_8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    const/4 v9, 0x3

    if-eq v8, v9, :cond_6

    const/4 v9, 0x4

    if-eq v8, v9, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v7, :cond_9

    .line 213
    invoke-virtual {v3, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setCellPhone(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_9

    .line 205
    invoke-virtual {v3, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setEmail(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_9

    .line 209
    invoke-virtual {v3, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setHomePhone(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    if-eqz v7, :cond_9

    .line 201
    invoke-virtual {v3, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setGeneralInfo(Ljava/lang/String;)V

    .line 216
    :cond_9
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 220
    :cond_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM ZRETURNVISIT WHERE ZCALL="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 222
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 223
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 224
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_11

    .line 225
    new-instance v7, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-direct {v7}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;-><init>()V

    .line 226
    const-string v9, "ZDATE"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    .line 227
    invoke-static {v9, v10}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->getDate(D)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setVisitDate(Ljava/util/Date;)V

    .line 228
    const-string v9, "ZNOTES"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 230
    invoke-virtual {v7, v9}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setInfo(Ljava/lang/String;)V

    .line 231
    :cond_b
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 232
    const-string v10, "Study"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    goto :goto_4

    :cond_c
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v7, v9}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setCountStudy(Z)V

    .line 233
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 235
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT * FROM ZPUBLICATION WHERE ZRETURNVISIT="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 236
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-object v10, v2

    .line 238
    :goto_5
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_f

    .line 239
    const-string v11, "ZTITLE"

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_e

    if-nez v10, :cond_d

    move-object v10, v11

    goto :goto_6

    .line 244
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ", "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 247
    :cond_e
    :goto_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    .line 249
    :cond_f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    if-eqz v10, :cond_10

    .line 252
    invoke-virtual {v7, v10}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setPublications(Ljava/lang/String;)V

    .line 254
    :cond_10
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v7, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$2;

    invoke-direct {v7}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$2;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 261
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_3

    .line 264
    :cond_11
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 266
    invoke-virtual {v3, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setInfo(Ljava/util/List;)V

    .line 267
    invoke-virtual {p2, p0, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addPerson(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)J

    .line 269
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 272
    :cond_12
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 274
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getTerritories(Lio/realm/Realm;Landroid/database/sqlite/SQLiteDatabase;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V
    .locals 11

    .line 279
    const-string v0, "SELECT * FROM ZTERRITORY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 280
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 283
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    .line 284
    new-instance v2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-direct {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;-><init>()V

    .line 285
    const-string v3, "Z_PK"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 286
    const-string v5, "ZDATE"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    .line 287
    invoke-static {v5, v6}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->getDate(D)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setDateCreated(Ljava/util/Date;)V

    .line 289
    const-string v5, "ZCITY"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 291
    invoke-virtual {v2, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setCity(Ljava/lang/String;)V

    .line 294
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT * FROM ZTERRITORYSTREET WHERE ZTERRITORY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 295
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 297
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_6

    .line 298
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM ZTERRITORYHOUSE WHERE ZSTREET = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 300
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 301
    new-instance v6, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 302
    const-string v7, "ZNAME"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 304
    invoke-virtual {v6, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 307
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 308
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_5

    .line 309
    const-string v8, "ZNUMBER"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 312
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 313
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    goto :goto_3

    .line 315
    :cond_2
    new-instance v10, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-direct {v10, v8, v9}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 316
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->clearVisit()V

    .line 317
    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v10

    .line 320
    :goto_3
    new-instance v9, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {v9, v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 321
    const-string v10, "ZAPARTMENT"

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 323
    invoke-virtual {v9, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    .line 324
    :cond_3
    const-string v10, "ZNOTES"

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 325
    invoke-virtual {v9, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setVisitComment(Ljava/lang/String;)V

    .line 326
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->addVisit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    .line 327
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->updateIsBuilding()V

    .line 328
    invoke-virtual {v6, v8}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 330
    :cond_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 333
    :cond_5
    invoke-virtual {v6, v9}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->sort(Z)V

    .line 334
    invoke-virtual {v2, p0, v6, v9}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 336
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 337
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 339
    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 341
    invoke-virtual {p2, p0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 342
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 345
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public static readBackupFile(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 95
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 96
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Backupfile.bin"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    .line 99
    new-array v3, v3, [B

    .line 101
    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 102
    invoke-virtual {v2, v3, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    .line 104
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 105
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 106
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 107
    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->readBackupFile(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 112
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 109
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return v0
.end method

.method public static readBackupFile(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .line 119
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 123
    :try_start_0
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :try_start_1
    new-instance v2, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;

    invoke-direct {v2, v1, p0, p1}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;-><init>(Lio/realm/Realm;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    :try_start_2
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 149
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    .line 150
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 146
    :try_start_3
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 147
    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    :goto_0
    :try_start_4
    const-string p1, "Import from DB"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p0, 0x0

    return p0

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 157
    throw p0
.end method
