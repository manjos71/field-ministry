.class public Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/backupsync/IBackupFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBackupFile(Landroid/content/Context;)Ljava/io/File;
    .locals 10

    .line 27
    const-string v0, "-"

    const/4 v1, 0x0

    .line 29
    :try_start_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 33
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v4, "MABackup-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 39
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    .line 41
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v6, v4

    const-string v7, "0"

    const/16 v8, 0xa

    if-ge v6, v8, :cond_0

    .line 42
    :try_start_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    .line 45
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ge v9, v8, :cond_1

    .line 46
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {}, Lcom/jaredrummler/android/device/DeviceName;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "%s%s"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const-string v0, ".mabackup"

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v1

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_2
    return-object v1

    .line 61
    :goto_1
    const-string v0, "getBackupFile"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public makeManualBackup(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V
    .locals 2

    .line 80
    invoke-static {p1}, Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory;->getBackupFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 83
    invoke-interface {p2, p1}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;->onBackupComplete(Z)V

    :cond_0
    return-void

    .line 87
    :cond_1
    :try_start_0
    new-instance v1, Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory$1;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory$1;-><init>(Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;Landroid/content/Context;Ljava/io/File;)V

    const-string p2, "EMailBackupFactory"

    invoke-static {p1, v1, v0, p2}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->saveExternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeBackup(Ljava/lang/String;Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRemoveComplete;)V
    .locals 0

    return-void
.end method

.method public restoreBackup(Ljava/lang/String;Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;)V
    .locals 0

    return-void
.end method
