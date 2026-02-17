.class public Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/backupsync/IBackupFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;,
        Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->mHandler:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdeleteOldBackups(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Landroid/content/Context;Lcom/google/api/services/drive/Drive;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->deleteOldBackups(Landroid/content/Context;Lcom/google/api/services/drive/Drive;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBackupFolder(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Lcom/google/api/services/drive/Drive;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->getBackupFolder(Lcom/google/api/services/drive/Drive;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDrive(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Landroid/content/Context;Ljava/lang/String;)Lcom/google/api/services/drive/Drive;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->getDrive(Landroid/content/Context;Ljava/lang/String;)Lcom/google/api/services/drive/Drive;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetName(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Lcom/google/api/services/drive/Drive;Z)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->getName(Lcom/google/api/services/drive/Drive;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->mHandler:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    return-void
.end method

.method private deleteOldBackups(Landroid/content/Context;Lcom/google/api/services/drive/Drive;I)V
    .locals 10

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 590
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 591
    const-string v1, "accountName"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 592
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "mimeType = \'application/vnd.mabackupbin\' and \'%s\' in owners"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 594
    invoke-virtual {p2}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    .line 595
    const-string v1, "files(createdTime,id,name)"

    invoke-virtual {p1, v1}, Lcom/google/api/services/drive/Drive$Files$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    .line 597
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/drive/model/FileList;

    .line 598
    invoke-virtual {v1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/drive/model/File;

    .line 599
    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 600
    const-string v6, ".mab"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".mabackup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_2
    const-string v6, "mabackup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "-sched"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 601
    new-instance v5, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getCreatedTime()Lcom/google/api/client/util/DateTime;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 602
    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, p0, v6, v7, v4}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;-><init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 605
    :cond_3
    invoke-virtual {v1}, Lcom/google/api/services/drive/model/FileList;->getNextPageToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/api/services/drive/Drive$Files$List;->setPageToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    .line 607
    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Files$List;->getPageToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Files$List;->getPageToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    :cond_4
    new-instance p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1BackupComparator;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1BackupComparator;-><init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 617
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p3, :cond_5

    .line 618
    invoke-virtual {p2}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;->sID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/api/services/drive/Drive$Files;->delete(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Delete;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-void
.end method

.method private getBackupFolder(Lcom/google/api/services/drive/Drive;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 496
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "mimeType = \'application/vnd.google-apps.folder\' and name = \'MinistryAssistant\' and \'%s\' in owners"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 499
    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p2

    const-string v1, "files(id)"

    invoke-virtual {p2, v1}, Lcom/google/api/services/drive/Drive$Files$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p2

    .line 501
    invoke-virtual {p2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/api/services/drive/model/FileList;

    if-eqz p2, :cond_0

    .line 502
    invoke-virtual {p2}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    invoke-virtual {p2}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/api/services/drive/model/File;

    invoke-virtual {p2}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 509
    new-instance p2, Lcom/google/api/services/drive/model/File;

    invoke-direct {p2}, Lcom/google/api/services/drive/model/File;-><init>()V

    .line 510
    const-string v0, "MinistryAssistant"

    invoke-virtual {p2, v0}, Lcom/google/api/services/drive/model/File;->setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    .line 511
    const-string v0, "application/vnd.google-apps.folder"

    invoke-virtual {p2, v0}, Lcom/google/api/services/drive/model/File;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    .line 512
    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/api/services/drive/Drive$Files;->create(Lcom/google/api/services/drive/model/File;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {p1, p2}, Lcom/google/api/services/drive/Drive$Files$Create;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File;

    .line 513
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method private getDrive(Landroid/content/Context;Ljava/lang/String;)Lcom/google/api/services/drive/Drive;
    .locals 2

    .line 164
    const-string v0, "https://www.googleapis.com/auth/drive.file"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object p1

    .line 165
    invoke-virtual {p1, p2}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 166
    new-instance p2, Lcom/google/api/services/drive/Drive$Builder;

    invoke-static {}, Lcom/google/api/client/extensions/android/http/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/google/api/services/drive/Drive$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    invoke-virtual {p2}, Lcom/google/api/services/drive/Drive$Builder;->build()Lcom/google/api/services/drive/Drive;

    move-result-object p1

    return-object p1
.end method

.method private getName(Lcom/google/api/services/drive/Drive;Z)Ljava/lang/String;
    .locals 10

    .line 523
    const-string v0, "%s-%d%s"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    const-string v3, "MABackup-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 526
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    .line 528
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v3

    const-string v7, "0"

    const/16 v8, 0xa

    if-ge v6, v8, :cond_0

    .line 529
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    .line 532
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ge v9, v8, :cond_1

    .line 533
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :try_start_0
    invoke-static {}, Lcom/jaredrummler/android/device/DeviceName;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    const-string v4, "device"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz p2, :cond_2

    .line 544
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-sched"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 547
    :cond_2
    new-array p2, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    const-string v4, ".mabackup"

    aput-object v4, p2, v3

    const-string v6, "%s%s"

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 550
    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name contains \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    .line 551
    const-string v6, "files(name)"

    invoke-virtual {p1, v6}, Lcom/google/api/services/drive/Drive$Files$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    const/4 v6, 0x3

    .line 553
    :try_start_1
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/FileList;

    .line 554
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 559
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/api/services/drive/model/File;

    .line 560
    invoke-virtual {v8}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    const/4 v7, 0x1

    :goto_1
    const/4 v8, 0x1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :goto_2
    if-eqz v7, :cond_7

    .line 568
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v1, v7, v2

    aput-object p2, v7, v3

    aput-object v4, v7, v5

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 569
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/api/services/drive/model/File;

    .line 570
    invoke-virtual {v9}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v9, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 579
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 581
    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    aput-object v1, p2, v2

    aput-object p1, p2, v3

    aput-object v4, p2, v5

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_7
    return-object p2
.end method

.method public static testDriveService(Landroid/content/Context;)V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public listCurrentBackups(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IListComplete;)Ljava/util/ArrayList;
    .locals 13

    .line 108
    const-string p2, "GDriveBackupFactory.listCurrentBackups"

    const-string v0, "accountName"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 111
    :try_start_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 112
    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-direct {p0, p1, v5}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->getDrive(Landroid/content/Context;Ljava/lang/String;)Lcom/google/api/services/drive/Drive;

    move-result-object v5

    .line 114
    invoke-virtual {v5}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v5

    const-string v6, "mimeType = \'application/vnd.mabackupbin\' and trashed = false"

    invoke-virtual {v5, v6}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v5

    .line 115
    const-string v6, "files(createdTime,id,name)"

    invoke-virtual {v5, v6}, Lcom/google/api/services/drive/Drive$Files$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 118
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/services/drive/model/FileList;

    .line 119
    invoke-virtual {v6}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/api/services/drive/model/File;

    .line 120
    invoke-virtual {v8}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 121
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".mab"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".mabackup"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_3

    .line 122
    :cond_2
    :goto_1
    new-instance v9, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;

    invoke-direct {v9}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;-><init>()V

    .line 123
    invoke-virtual {v8}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->restoreID:Ljava/lang/String;

    iput-object v10, v9, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->deleteID:Ljava/lang/String;

    .line 124
    invoke-virtual {v8}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->name:Ljava/lang/String;

    .line 125
    new-instance v10, Ljava/util/Date;

    invoke-virtual {v8}, Lcom/google/api/services/drive/model/File;->getCreatedTime()Lcom/google/api/client/util/DateTime;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    iput-object v10, v9, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->date:Ljava/util/Date;

    .line 126
    iput v2, v9, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->type:I

    .line 127
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {v6}, Lcom/google/api/services/drive/model/FileList;->getNextPageToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/api/services/drive/Drive$Files$List;->setPageToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;
    :try_end_1
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    .line 142
    :catch_2
    :try_start_2
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 144
    :try_start_3
    iget-object v6, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->mHandler:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    if-eqz v6, :cond_5

    .line 145
    invoke-interface {v6, v3, v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_4

    :catch_3
    nop

    goto :goto_5

    :catch_4
    move-exception p1

    goto :goto_6

    .line 138
    :goto_2
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-static {p2, v6}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v5, v3}, Lcom/google/api/services/drive/Drive$Files$List;->setPageToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    goto :goto_4

    .line 132
    :goto_3
    iget-object v7, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->mHandler:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    if-eqz v7, :cond_4

    .line 133
    invoke-virtual {v6}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v7, v6, v8}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;Z)V

    goto :goto_4

    .line 135
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-static {p2, v6}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :catch_5
    :cond_5
    :goto_4
    invoke-virtual {v5}, Lcom/google/api/services/drive/Drive$Files$List;->getPageToken()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/google/api/services/drive/Drive$Files$List;->getPageToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v6, :cond_0

    goto :goto_7

    .line 154
    :goto_5
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 155
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->mHandler:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    if-eqz p1, :cond_6

    .line 157
    invoke-interface {p1, v3, v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;Z)V

    goto :goto_7

    .line 152
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_7
    return-object v1
.end method

.method public makeBackup(Landroid/content/Context;ILcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V
    .locals 10

    .line 174
    :try_start_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    const-string v1, "accountName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getTempFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GDCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    new-instance v3, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;

    move-object v4, p0

    move-object v5, p1

    move v8, p2

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;-><init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V

    const-string p1, "GDriveBackupFactory 1"

    invoke-static {v5, v3, v7, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->saveExternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 250
    const-string p2, "makeBackup"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public makeManualBackup(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V
    .locals 9

    .line 258
    :try_start_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 259
    const-string v1, "accountName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getTempFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GDCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    new-instance v3, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;-><init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V

    const-string p1, "GDriveBackupFactory 2"

    invoke-static {v5, v3, v7, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->saveExternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 334
    const-string p2, "makeManualBackup"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeBackup(Ljava/lang/String;Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRemoveComplete;)V
    .locals 1

    .line 490
    new-instance v0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;-><init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRemoveComplete;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Void;

    const/4 p2, 0x0

    const/4 p3, 0x0

    aput-object p3, p1, p2

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const/4 p2, 0x2

    aput-object p3, p1, p2

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public restoreBackup(Ljava/lang/String;Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;)V
    .locals 1

    .line 445
    new-instance v0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;-><init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Void;

    const/4 p2, 0x0

    const/4 p3, 0x0

    aput-object p3, p1, p2

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const/4 p2, 0x2

    aput-object p3, p1, p2

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
