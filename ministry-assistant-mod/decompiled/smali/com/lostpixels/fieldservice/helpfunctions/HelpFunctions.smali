.class public abstract Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static _isDebugBuild:Ljava/lang/Boolean; = null

.field private static bFirstTimeTested:Z = false

.field private static gsCurLocal:Ljava/lang/String;

.field static oldVersion:I

.field private static sHQRnd:Lcom/lostpixels/fieldservice/utils/HighQualityRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static addFloorNumber(Landroid/content/Context;)I
    .locals 2

    .line 382
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 383
    const-string v0, "defaultFloor"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static createCitiesList(Lio/realm/Realm;)V
    .locals 4

    .line 350
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 352
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getCities()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 353
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 354
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    :cond_1
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getCities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 363
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->setCities(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static getAllBackupFiles(ZLandroid/content/Context;)Ljava/util/ArrayList;
    .locals 2

    .line 570
    const-string v0, "/"

    :try_start_0
    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getBackupFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 572
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 574
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    new-instance v1, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1BackupFileFilter;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1BackupFileFilter;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 588
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 597
    new-instance p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1BackupComparator;

    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1BackupComparator;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 598
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 602
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAndroidVersion()Ljava/lang/String;
    .locals 1

    .line 437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_0

    .line 483
    const-string v0, "13+"

    return-object v0

    .line 481
    :pswitch_0
    const-string v0, "13.0"

    return-object v0

    .line 479
    :pswitch_1
    const-string v0, "12.0"

    return-object v0

    .line 477
    :pswitch_2
    const-string v0, "11.0"

    return-object v0

    .line 475
    :pswitch_3
    const-string v0, "10.0"

    return-object v0

    .line 473
    :pswitch_4
    const-string v0, "9.0"

    return-object v0

    .line 471
    :pswitch_5
    const-string v0, "8.1"

    return-object v0

    .line 469
    :pswitch_6
    const-string v0, "8.0"

    return-object v0

    .line 467
    :pswitch_7
    const-string v0, "7.1"

    return-object v0

    .line 465
    :pswitch_8
    const-string v0, "7.0"

    return-object v0

    .line 463
    :pswitch_9
    const-string v0, "6.0"

    return-object v0

    .line 461
    :pswitch_a
    const-string v0, "5.1"

    return-object v0

    .line 459
    :pswitch_b
    const-string v0, "5.0"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x15
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

.method public static getAutomaticBackupFile(ZLandroid/content/Context;)Ljava/io/File;
    .locals 7

    .line 650
    const-string v0, "AutoBackup.mabackup"

    if-eqz p0, :cond_0

    .line 651
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getBackupFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 653
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v1, 0x2

    .line 654
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    const/4 v1, 0x4

    .line 655
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    const/4 v1, 0x3

    .line 656
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 657
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getBackupFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutoBackup_Week%d.mabackup"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 660
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x6

    const/16 v4, 0xa

    .line 661
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 663
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 665
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getBackupFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object v2

    :catch_0
    move-exception p0

    .line 670
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 613
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 617
    :try_start_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getMinistryAssistantDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    .line 621
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 622
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-object p0

    :catch_1
    move-exception v0

    const/4 p0, 0x0

    .line 628
    :goto_0
    const-string v1, "getCacheDir"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 631
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 632
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 633
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "backup/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 634
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    .line 636
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    return-object p0
.end method

.method public static getFloorString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 367
    invoke-static {p0, p1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFloorString(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 1

    .line 371
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->gsCurLocal:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 372
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->gsCurLocal:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    if-ltz p1, :cond_1

    .line 375
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->addFloorNumber(Landroid/content/Context;)I

    move-result p2

    add-int/2addr p1, p2

    .line 377
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const p1, 0x7f12026d

    .line 378
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 679
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 681
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 682
    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNextPrimaryId()J
    .locals 2

    .line 689
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->sHQRnd:Lcom/lostpixels/fieldservice/utils/HighQualityRandom;

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->sHQRnd:Lcom/lostpixels/fieldservice/utils/HighQualityRandom;

    .line 691
    :cond_0
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->sHQRnd:Lcom/lostpixels/fieldservice/utils/HighQualityRandom;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/utils/HighQualityRandom;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOldVersion(Landroid/content/Context;)I
    .locals 1

    .line 529
    sget v0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->oldVersion:I

    if-nez v0, :cond_0

    .line 533
    :try_start_0
    const-string v0, "version"

    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    .line 534
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 536
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    sput v0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->oldVersion:I

    .line 538
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :catch_0
    :cond_0
    sget p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->oldVersion:I

    return p0
.end method

.method public static getSoftwareVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 490
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 731
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 732
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 733
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 734
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 735
    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    .line 736
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 738
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getTerritoryCard(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    .line 321
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryCard()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 327
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "%sTerritoryCards/%d.jpg"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getMinistryAssistantDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v3, 0x1

    aput-object v4, v8, v3

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 331
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "%sTerritoryCards/%d.png"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getMinistryAssistantDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v10

    and-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v9

    aput-object p0, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 333
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    return-object v0

    .line 336
    :goto_0
    const-string p1, "getTerritoryCard"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTerritoryCardId(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Ljava/lang/String;
    .locals 4

    .line 345
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTerritoryId(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Ljava/lang/String;
    .locals 2

    .line 113
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->hasTerritoryHelperLink(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 116
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getURL()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWidgetBackground(IZ)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    if-eqz p1, :cond_0

    const p0, 0x7f08039a

    return p0

    :cond_0
    const p0, 0x7f080398

    return p0

    :sswitch_0
    if-eqz p1, :cond_1

    const p0, 0x7f0803ae

    return p0

    :cond_1
    const p0, 0x7f0803ac

    return p0

    :sswitch_1
    if-eqz p1, :cond_2

    const p0, 0x7f0803b1

    return p0

    :cond_2
    const p0, 0x7f0803af

    return p0

    :sswitch_2
    if-eqz p1, :cond_3

    const p0, 0x7f080394

    return p0

    :cond_3
    const p0, 0x7f080392

    return p0

    :sswitch_3
    if-eqz p1, :cond_4

    const p0, 0x7f0803bd

    return p0

    :cond_4
    const p0, 0x7f0803bb

    return p0

    :sswitch_4
    if-eqz p1, :cond_5

    const p0, 0x7f0803b4

    return p0

    :cond_5
    const p0, 0x7f0803b2

    return p0

    :sswitch_5
    if-eqz p1, :cond_6

    const p0, 0x7f08039d

    return p0

    :cond_6
    const p0, 0x7f08039b

    return p0

    :sswitch_6
    if-eqz p1, :cond_7

    const p0, 0x7f0803ba

    return p0

    :cond_7
    const p0, 0x7f0803b8

    return p0

    :sswitch_7
    if-eqz p1, :cond_8

    const p0, 0x7f0803a8

    return p0

    :cond_8
    const p0, 0x7f0803a6

    return p0

    :sswitch_8
    if-eqz p1, :cond_9

    const p0, 0x7f0803ab

    return p0

    :cond_9
    const p0, 0x7f0803a9

    return p0

    :sswitch_9
    if-eqz p1, :cond_a

    const p0, 0x7f0803a0

    return p0

    :cond_a
    const p0, 0x7f08039e

    return p0

    :sswitch_a
    if-eqz p1, :cond_b

    const p0, 0x7f0803b7

    return p0

    :cond_b
    const p0, 0x7f0803b5

    return p0

    :sswitch_b
    if-eqz p1, :cond_c

    const p0, 0x7f0803a5

    return p0

    :cond_c
    const p0, 0x7f080391

    return p0

    :sswitch_c
    if-eqz p1, :cond_d

    const p0, 0x7f0803a3

    return p0

    :cond_d
    const p0, 0x7f0803a1

    return p0

    :sswitch_d
    if-eqz p1, :cond_e

    const p0, 0x7f080397

    return p0

    :cond_e
    const p0, 0x7f080395

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xff8100 -> :sswitch_d
        -0xcccccd -> :sswitch_c
        -0xcc4a1b -> :sswitch_b
        -0xa4b3c7 -> :sswitch_a
        -0x777778 -> :sswitch_9
        -0x663400 -> :sswitch_8
        -0x559934 -> :sswitch_7
        -0x3d5477 -> :sswitch_6
        -0x333334 -> :sswitch_5
        -0x273f28 -> :sswitch_4
        -0x141500 -> :sswitch_3
        -0xd4545 -> :sswitch_2
        -0xbbbc -> :sswitch_1
        -0x44cd -> :sswitch_0
    .end sparse-switch
.end method

.method public static getWidgetBackgroundRound(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const p0, 0x7f080399

    return p0

    :sswitch_0
    const p0, 0x7f0803ad

    return p0

    :sswitch_1
    const p0, 0x7f0803b0

    return p0

    :sswitch_2
    const p0, 0x7f080393

    return p0

    :sswitch_3
    const p0, 0x7f0803bc

    return p0

    :sswitch_4
    const p0, 0x7f0803b3

    return p0

    :sswitch_5
    const p0, 0x7f08039c

    return p0

    :sswitch_6
    const p0, 0x7f0803b9

    return p0

    :sswitch_7
    const p0, 0x7f0803a7

    return p0

    :sswitch_8
    const p0, 0x7f0803aa

    return p0

    :sswitch_9
    const p0, 0x7f08039f

    return p0

    :sswitch_a
    const p0, 0x7f0803b6

    return p0

    :sswitch_b
    const p0, 0x7f0803a4

    return p0

    :sswitch_c
    const p0, 0x7f0803a2

    return p0

    :sswitch_d
    const p0, 0x7f080396

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xff8100 -> :sswitch_d
        -0xcccccd -> :sswitch_c
        -0xcc4a1b -> :sswitch_b
        -0xa4b3c7 -> :sswitch_a
        -0x777778 -> :sswitch_9
        -0x663400 -> :sswitch_8
        -0x559934 -> :sswitch_7
        -0x3d5477 -> :sswitch_6
        -0x333334 -> :sswitch_5
        -0x273f28 -> :sswitch_4
        -0x141500 -> :sswitch_3
        -0xd4545 -> :sswitch_2
        -0xbbbc -> :sswitch_1
        -0x44cd -> :sswitch_0
    .end sparse-switch
.end method

.method public static hasInterestedPersons(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z
    .locals 9

    .line 86
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 87
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 88
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 89
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 90
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v5

    invoke-virtual {v4, p0, v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 91
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isInterested()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_1

    :cond_4
    if-eqz v0, :cond_0

    :cond_5
    return v0
.end method

.method public static hasTerritoryHelperLink(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getURL()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "territoryhelper"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDebugBuild(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2

    .line 695
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->_isDebugBuild:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 697
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 698
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 700
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->_isDebugBuild:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 703
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 706
    :cond_1
    :goto_0
    sget-object p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->_isDebugBuild:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static isFirstUseOfApp(Landroid/content/Context;)Z
    .locals 2

    .line 757
    const-string v0, "MA"

    if-nez p0, :cond_0

    .line 758
    const-string v1, "Context null\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 761
    const-string v1, "getFilesDir null\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 765
    const-string v1, "getPath null\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_2
    sget-boolean v0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->bFirstTimeTested:Z

    if-nez v0, :cond_3

    .line 768
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/firsttime"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    .line 771
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    const/4 p0, 0x1

    .line 772
    sput-boolean p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->bFirstTimeTested:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 776
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0xa

    .line 710
    invoke-static {p0, v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isInteger(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isInteger(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 720
    :cond_0
    new-instance v1, Ljava/util/Scanner;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v1, p1}, Ljava/util/Scanner;->hasNextInt(I)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 724
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/Scanner;->nextInt(I)I

    .line 725
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    if-nez p0, :cond_1

    .line 746
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 748
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 750
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public static isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x1

    .line 279
    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSingleLetter(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 714
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static pxFromDp(Landroid/content/Context;F)F
    .locals 0

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    return p1

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static setLanguage(Landroid/app/Activity;)V
    .locals 3

    .line 387
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 388
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "langPref"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 391
    const-string v1, "zh-CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    goto :goto_0

    .line 393
    :cond_0
    const-string v1, "zh-TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 398
    new-instance v2, Ljava/util/Locale;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 400
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 404
    :goto_0
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 405
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 406
    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const/4 p0, 0x0

    .line 409
    sput-object p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->gsCurLocal:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static setLanguage(Landroid/content/Context;)V
    .locals 3

    .line 414
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 416
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "langPref"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 419
    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    goto :goto_0

    .line 421
    :cond_0
    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    goto :goto_0

    .line 424
    :cond_1
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 425
    :goto_0
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 426
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 427
    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const/4 p0, 0x0

    .line 430
    sput-object p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->gsCurLocal:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static testPersonsExists(Lio/realm/Realm;)V
    .locals 11

    .line 288
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 290
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 291
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 292
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 293
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_3

    .line 294
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v6

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v7

    invoke-virtual {v6, p0, v7, v8}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v6

    if-nez v6, :cond_3

    .line 295
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    .line 303
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    const-string v1, "Check failed person with ID="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Long;

    .line 306
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 307
    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 310
    :cond_5
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    return-void
.end method

.method public static updateNumberOfStudies(Lio/realm/Realm;Landroid/content/Context;)V
    .locals 13

    .line 200
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v0, 0x2

    .line 201
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    .line 202
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, -0x1

    .line 203
    invoke-virtual {v5, v0, v4}, Ljava/util/Calendar;->add(II)V

    .line 204
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 205
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 207
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 208
    const-string v7, "checkCountVisitedStudies"

    invoke-interface {p1, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 209
    const-string v8, "checkAutoCountStudies"

    invoke-interface {p1, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v8, 0x0

    if-eqz p1, :cond_a

    .line 214
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v9, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 215
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isInterested()Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v7, :cond_2

    .line 217
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 218
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 220
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->isCountStudy()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 221
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v11, v3, :cond_3

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v11, v1, :cond_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-lt v11, v3, :cond_0

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ge v11, v1, :cond_1

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_9

    .line 237
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 239
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 240
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 242
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->isCountStudy()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 243
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v6, :cond_7

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v4, :cond_7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 249
    :cond_7
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt v3, v6, :cond_5

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v6, :cond_6

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v3, v4, :cond_6

    goto :goto_1

    :cond_8
    move v6, v8

    move v3, v9

    goto :goto_3

    :cond_9
    move v3, v9

    :goto_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    goto :goto_2

    .line 257
    :goto_3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 260
    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;

    move-object v1, p0

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;-><init>(Lio/realm/Realm;Ljava/util/Date;IZLjava/util/Calendar;I)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public static updateReportWidget(Landroid/content/Context;)V
    .locals 2

    .line 121
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateVersion(Landroid/content/Context;)Z
    .locals 5

    .line 497
    const-string v0, "version"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 501
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 502
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 504
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 506
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 507
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->getSoftwareVersion(Landroid/content/Context;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v1, :cond_1

    .line 514
    :try_start_1
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 515
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 516
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->getSoftwareVersion(Landroid/content/Context;)I

    move-result p0

    .line 517
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 519
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return v1
.end method
