.class public Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/backupsync/IBackupFactory;


# direct methods
.method static bridge synthetic -$$Nest$smgetAllSchedExportFiles(ZLandroid/content/Context;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;->getAllSchedExportFiles(ZLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllSchedExportFiles(ZLandroid/content/Context;)Ljava/util/ArrayList;
    .locals 5

    .line 82
    const-string v0, "/"

    :try_start_0
    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getBackupFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v1, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$1BackupFileFilter;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$1BackupFileFilter;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_1
    new-instance p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$1BackupComparator;

    invoke-direct {p0}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$1BackupComparator;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 112
    const-string p1, "getAllSchedExportFiles"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getBackupFile(Landroid/content/Context;Z)Ljava/io/File;
    .locals 10

    .line 37
    const-string v0, ".mabackup"

    const-string v1, "/"

    const-string v2, "-"

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getBackupFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    .line 44
    :cond_0
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v5, "MABackup-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    .line 47
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    .line 49
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v7, v5

    const-string v8, "0"

    const/16 v9, 0xa

    if-ge v7, v9, :cond_1

    .line 50
    :try_start_1
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    .line 53
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ge v7, v9, :cond_2

    .line 54
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {}, Lcom/jaredrummler/android/device/DeviceName;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_3

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-sched"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    :cond_3
    new-instance p1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 65
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 66
    new-instance p1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object p1

    :cond_5
    return-object v3

    .line 73
    :goto_2
    const-string p1, "getBackupFile"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public listCurrentBackups(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IListComplete;)Ljava/util/ArrayList;
    .locals 9

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 121
    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;->getAllSchedExportFiles(ZLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    .line 122
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    new-instance v6, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;

    invoke-direct {v6}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;-><init>()V

    .line 124
    iput-object v4, v6, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->deleteID:Ljava/lang/String;

    .line 125
    iput-object v4, v6, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->restoreID:Ljava/lang/String;

    .line 126
    iput v1, v6, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->type:I

    .line 127
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->name:Ljava/lang/String;

    .line 128
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    iput-object v4, v6, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->date:Ljava/util/Date;

    .line 129
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 132
    invoke-interface {p2, p1}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IListComplete;->onListComplete(Z)V

    :cond_1
    return-object v0
.end method

.method public makeBackup(Landroid/content/Context;ILcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V
    .locals 2

    const/4 v0, 0x1

    .line 161
    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;->getBackupFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 164
    invoke-interface {p3, p1}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;->onBackupComplete(Z)V

    :cond_0
    return-void

    .line 168
    :cond_1
    :try_start_0
    new-instance v1, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$2;-><init>(Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;Landroid/content/Context;I)V

    const-string p2, "SDCardBackupFactory 2"

    invoke-static {p1, v1, v0, p2}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->saveExternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public makeManualBackup(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V
    .locals 4

    const/4 v0, 0x0

    .line 138
    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;->getBackupFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    .line 141
    invoke-interface {p2, v0}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;->onBackupComplete(Z)V

    return-void

    .line 145
    :cond_0
    :try_start_0
    new-instance v2, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$1;

    invoke-direct {v2, p0, p2}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$1;-><init>(Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V

    const-string v3, "SDCardBackupFactory"

    invoke-static {p1, v2, v1, v3}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->saveExternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    if-eqz p2, :cond_1

    .line 155
    invoke-interface {p2, v0}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;->onBackupComplete(Z)V

    :cond_1
    return-void
.end method

.method public removeBackup(Ljava/lang/String;Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRemoveComplete;)V
    .locals 0

    .line 231
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p3, :cond_0

    .line 234
    invoke-interface {p3, p1}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRemoveComplete;->onRemoveComplete(Z)V

    :cond_0
    return-void
.end method

.method public restoreBackup(Ljava/lang/String;Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;)V
    .locals 3

    .line 198
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mabackup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    .line 200
    new-instance p1, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {p1}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    .line 201
    :goto_1
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    .line 203
    new-instance v2, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$3;

    invoke-direct {v2, p0, p3, p1, v1}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$3;-><init>(Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;Lcom/fasterxml/jackson/core/JsonParser;Ljava/io/InputStream;)V

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "SDCardBackupFactory 3"

    invoke-static {p2, p1, v2, v0, v1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->loadExternalFile(Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 223
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    .line 225
    invoke-interface {p3, p1}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;->onRestoreComplete(Z)V

    :cond_2
    return-void
.end method
