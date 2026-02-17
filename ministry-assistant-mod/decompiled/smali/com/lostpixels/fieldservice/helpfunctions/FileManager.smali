.class public abstract Lcom/lostpixels/fieldservice/helpfunctions/FileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;,
        Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;
    }
.end annotation


# static fields
.field private static mFileCommunicationLock:Ljava/util/concurrent/locks/Lock; = null

.field private static mlstLogging:Ljava/util/List; = null

.field private static wasLowOnDiskSpace:Z = false


# direct methods
.method static bridge synthetic -$$Nest$sfgetmFileCommunicationLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 0
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sminternalLoadObjectServiceFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->internalLoadObjectServiceFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sminternalLoadObjectTerritoryFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->internalLoadObjectTerritoryFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sminternalLoadSmileServiceFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->internalLoadSmileServiceFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sminternalLoadSmileTerritoryFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->internalLoadSmileTerritoryFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smlogFileEvent(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smprintLogging(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->printLogging(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsaveFilesExternal(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->saveFilesExternal(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 175
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 176
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 177
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x400

    .line 179
    :try_start_2
    new-array p2, p2, [B

    .line 181
    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    .line 182
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_5

    :catch_0
    move-exception p2

    goto :goto_2

    .line 185
    :cond_0
    const-string p2, "done copying"

    invoke-static {p2}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 198
    :catch_1
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object p1, p2

    move-object p2, p0

    move-object p0, p1

    goto :goto_5

    :catch_3
    move-exception p0

    move-object p1, p2

    move-object p2, p0

    move-object p0, p1

    .line 187
    :goto_2
    :try_start_5
    const-string v0, "CopyFile"

    invoke-static {p2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string p2, "Error copy file"

    invoke-static {p2}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_1

    .line 192
    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    nop

    :cond_1
    :goto_3
    if-eqz p0, :cond_2

    goto :goto_1

    :catch_5
    :cond_2
    :goto_4
    return-void

    :goto_5
    if-eqz p1, :cond_3

    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    nop

    :cond_3
    :goto_6
    if-eqz p0, :cond_4

    .line 198
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 202
    :catch_7
    :cond_4
    throw p2
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 129
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_5

    const/4 p1, 0x0

    .line 136
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 137
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p0, 0x400

    .line 139
    :try_start_2
    new-array p0, p0, [B

    .line 141
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_0

    .line 142
    invoke-virtual {v0, p0, v2, p1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p1, v0

    goto :goto_5

    :catch_0
    move-exception p0

    move-object p1, v0

    goto :goto_2

    .line 145
    :cond_0
    const-string p0, "done copying"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 158
    :catch_1
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v1, p1

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v1, p1

    .line 147
    :goto_2
    :try_start_5
    const-string v0, "CopyFile"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string p0, "Error copy file"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_1

    .line 152
    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    nop

    :cond_1
    :goto_3
    if-eqz v1, :cond_2

    goto :goto_1

    :catch_5
    :cond_2
    :goto_4
    return-void

    :goto_5
    if-eqz p1, :cond_3

    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    nop

    :cond_3
    :goto_6
    if-eqz v1, :cond_4

    .line 158
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 162
    :catch_7
    :cond_4
    throw p0

    .line 164
    :cond_5
    const-string p0, "copyFile"

    const-string p1, "Copy empty file"

    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static getFileLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 84
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    .line 87
    :cond_0
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private static internalLoadObjectServiceFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 634
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    const/4 v1, 0x0

    .line 636
    :try_start_0
    new-instance v2, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    const-string v4, "Service.obj"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 640
    :try_start_1
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->loadFromDataStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 654
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 658
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 p0, 0x1

    return p0

    .line 643
    :cond_0
    :try_start_3
    new-instance p0, Ljava/lang/Exception;

    const-string v1, "loadInternalObjectFile split returned false 5"

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 647
    :goto_0
    :try_start_4
    const-string v2, "internalLoadObjectServiceFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception cought: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v2, "Stacktrace"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string p0, "Source"

    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string p0, "Memory left (MB)"

    invoke-static {}, Lcom/lostpixels/fieldservice/utils/DeviceMemory;->getInternalFreeSpace()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->printLogging(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 654
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    if-eqz v1, :cond_1

    .line 658
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_1
    const/4 p0, 0x0

    return p0

    .line 654
    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    if-eqz v1, :cond_2

    .line 658
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 661
    :catch_4
    :cond_2
    throw p0
.end method

.method private static internalLoadObjectTerritoryFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11

    .line 703
    const-string v0, "Source"

    const-string v1, "HelpFunctions.loadSmileTerritoryFile"

    .line 706
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 708
    :cond_0
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v5

    const/4 v6, 0x1

    .line 710
    :try_start_0
    new-instance v7, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    const-string v9, "Ministry.obj"

    invoke-virtual {p0, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 714
    :try_start_1
    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->loadFromDataStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;)Z

    move-result v2
    :try_end_1
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 739
    invoke-virtual {v5}, Lio/realm/Realm;->close()V

    .line 742
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v5, 0x1

    :goto_1
    move-object v2, v7

    goto/16 :goto_5

    .line 717
    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/Exception;

    const-string v8, "loadSmileFile split returned false"

    invoke-direct {v2, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    move-object v2, v7

    goto/16 :goto_8

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v2, v7

    goto/16 :goto_7

    :catchall_1
    move-exception p0

    goto/16 :goto_8

    :catch_3
    move-exception v7

    move-object v10, v7

    move-object v7, v2

    move-object v2, v10

    goto :goto_2

    :catch_4
    move-exception p0

    goto/16 :goto_7

    .line 727
    :goto_2
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception cought: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_2
    const-string v9, ""

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 727
    invoke-static {v1, v8}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-static {v2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v2, "Memory left (MB)"

    invoke-static {}, Lcom/lostpixels/fieldservice/utils/DeviceMemory;->getInternalFreeSpace()F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->printLogging(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 739
    invoke-virtual {v5}, Lio/realm/Realm;->close()V

    if-eqz v7, :cond_3

    .line 742
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    nop

    :cond_3
    :goto_4
    const/4 v5, 0x0

    goto :goto_1

    :goto_5
    if-nez v5, :cond_4

    const-wide/16 v7, 0x64

    .line 749
    :try_start_6
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v7

    .line 751
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_6
    add-int/2addr v4, v6

    if-nez v5, :cond_5

    const/4 v6, 0x3

    if-lt v4, v6, :cond_0

    .line 758
    :cond_5
    const-string p0, "Load territory file"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    return v5

    .line 723
    :goto_7
    :try_start_7
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 739
    :goto_8
    invoke-virtual {v5}, Lio/realm/Realm;->close()V

    if-eqz v2, :cond_6

    .line 742
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 745
    :catch_7
    :cond_6
    throw p0
.end method

.method private static internalLoadSmileServiceFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .line 668
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    const/4 v1, 0x0

    .line 670
    :try_start_0
    new-instance v2, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    .line 671
    new-instance v3, Ljava/io/BufferedInputStream;

    const-string v4, "Service.bin"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 674
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    .line 675
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->loadFromFile(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 687
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    if-eqz v1, :cond_0

    .line 690
    :try_start_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 695
    :catch_0
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    const/4 p0, 0x1

    return p0

    .line 676
    :cond_1
    :try_start_4
    new-instance p0, Ljava/lang/Exception;

    const-string v2, "AddToReportHelper.loadSmileFile returned false"

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v3, v1

    goto :goto_2

    :catch_3
    move-exception p0

    move-object v3, v1

    .line 680
    :goto_0
    :try_start_5
    const-string v2, "loadInternalSmileServiceFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception cought: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v2, "Stacktrace"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string p0, "Source"

    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->printLogging(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 687
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    if-eqz v1, :cond_2

    .line 690
    :try_start_6
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    nop

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 695
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_3
    const/4 p0, 0x0

    return p0

    .line 687
    :goto_2
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    if-eqz v1, :cond_4

    .line 690
    :try_start_8
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3

    :catch_6
    nop

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 695
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 698
    :catch_7
    :cond_5
    throw p0
.end method

.method private static internalLoadSmileTerritoryFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12

    .line 763
    const-string v0, "Source"

    const-string v1, "HelpFunctions.loadSmileTerritoryFile"

    .line 767
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v5, 0x0

    .line 769
    :cond_0
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v6

    const/4 v7, 0x1

    .line 771
    :try_start_0
    new-instance v8, Ljava/io/BufferedInputStream;

    const-string v9, "Ministry.bin"

    invoke-virtual {p0, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 774
    :try_start_1
    new-instance v4, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    .line 775
    invoke-virtual {v4, v8}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v2

    .line 777
    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->loadFromFile(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v4
    :try_end_1
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 797
    invoke-virtual {v6}, Lio/realm/Realm;->close()V

    .line 801
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v2, :cond_1

    .line 806
    :try_start_3
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    nop

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    move-object v4, v8

    goto/16 :goto_7

    .line 780
    :cond_2
    :try_start_4
    new-instance v4, Ljava/lang/Exception;

    const-string v9, "loadSmileFile split returned false"

    invoke-direct {v4, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    move-object v4, v8

    goto/16 :goto_a

    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception p0

    move-object v4, v8

    goto/16 :goto_9

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    :catch_4
    move-exception v8

    move-object v11, v8

    move-object v8, v4

    move-object v4, v11

    goto :goto_3

    :catch_5
    move-exception p0

    goto/16 :goto_9

    .line 790
    :goto_3
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception cought: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_3
    const-string v10, ""

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 790
    invoke-static {v1, v9}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-static {v4}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->printLogging(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 797
    invoke-virtual {v6}, Lio/realm/Realm;->close()V

    if-eqz v8, :cond_4

    .line 801
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    :catch_6
    nop

    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 806
    :try_start_7
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    :catch_7
    nop

    :cond_5
    :goto_6
    const/4 v6, 0x0

    goto :goto_2

    :goto_7
    if-nez v6, :cond_6

    const-wide/16 v8, 0x64

    .line 813
    :try_start_8
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v8

    .line 815
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_8
    add-int/2addr v5, v7

    if-nez v6, :cond_7

    const/4 v7, 0x3

    if-lt v5, v7, :cond_0

    .line 822
    :cond_7
    const-string p0, "Load territory file"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    return v6

    .line 786
    :goto_9
    :try_start_9
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 797
    :goto_a
    invoke-virtual {v6}, Lio/realm/Realm;->close()V

    if-eqz v4, :cond_8

    .line 801
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_b

    :catch_9
    nop

    :cond_8
    :goto_b
    if-eqz v2, :cond_9

    .line 806
    :try_start_b
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 809
    :catch_a
    :cond_9
    throw p0
.end method

.method public static isLowOnDiskSpace(Z)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 95
    :try_start_0
    new-instance p0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 97
    :cond_0
    new-instance p0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 100
    :goto_0
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    .line 101
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v3, p0

    mul-long v1, v1, v3

    const-wide/32 v3, 0x100000

    .line 104
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0xa

    cmp-long p0, v1, v3

    if-gez p0, :cond_1

    const/4 v0, 0x1

    .line 105
    :cond_1
    sput-boolean v0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->wasLowOnDiskSpace:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 108
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static loadExportedDataFileTemp(Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;
    .locals 2

    .line 510
    const-string v0, "end loadExportedDataFileTemp"

    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    .line 511
    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 512
    const-string v1, "start loadExportedDataFileTemp"

    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTemporaryInstance()Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    .line 514
    invoke-virtual {v1, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->importDataTemporary(Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V

    .line 523
    sget-object p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 517
    :try_start_1
    const-string p1, "Source"

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string p1, "exception loadExportedDataFileTemp"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V

    .line 519
    const-string p1, "Failed to load file temp"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    :goto_0
    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V

    .line 523
    sget-object p1, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 524
    throw p0
.end method

.method public static loadExternalFile(Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;ZLjava/lang/String;)V
    .locals 4

    .line 529
    const-string v0, "end loadExternalFile"

    .line 530
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1

    const/4 v2, 0x0

    .line 532
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    .line 533
    sget-object v3, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 534
    const-string v3, "start loadExternalFile"

    invoke-static {v3}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V

    .line 535
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->loadFromFile(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->loadFromFile(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    if-nez p3, :cond_0

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object p3

    invoke-virtual {p3, p1, v3}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->load(Lcom/fasterxml/jackson/core/JsonParser;Z)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object p3

    invoke-virtual {p3, p1, v3}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->load(Lcom/fasterxml/jackson/core/JsonParser;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    .line 536
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :try_start_1
    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->createCitiesList(Lio/realm/Realm;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    const/4 v2, 0x1

    goto :goto_3

    :catch_1
    move-exception p0

    const/4 v2, 0x1

    goto :goto_2

    .line 547
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 548
    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V

    .line 549
    sget-object p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz p2, :cond_2

    .line 551
    invoke-interface {p2, v2}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;->onFileOperationComplete(Z)V

    :cond_2
    return-void

    .line 542
    :goto_2
    :try_start_2
    const-string p1, "Source"

    invoke-static {p1, p4}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string p1, "exception loadExternalFile"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V

    .line 544
    const-string p1, "Failed to load file"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 547
    :goto_3
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 548
    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V

    .line 549
    sget-object p1, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz p2, :cond_3

    .line 551
    invoke-interface {p2, v2}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;->onFileOperationComplete(Z)V

    .line 552
    :cond_3
    throw p0
.end method

.method public static loadInternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;Ljava/lang/String;)V
    .locals 1

    .line 629
    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;

    invoke-direct {v0, p0, p2, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;)V

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Void;

    const/4 p1, 0x0

    const/4 p2, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const/4 p1, 0x2

    aput-object p2, p0, p1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static declared-synchronized logFileEvent(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mlstLogging:Ljava/util/List;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mlstLogging:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 123
    :cond_0
    :goto_0
    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mlstLogging:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_1
    sget-object p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mlstLogging:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/16 v1, 0x32

    if-le p0, v1, :cond_1

    .line 125
    sget-object p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mlstLogging:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 126
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static lowOnDiskSpaceChanged()Z
    .locals 4

    .line 116
    sget-boolean v0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->wasLowOnDiskSpace:Z

    const/4 v1, 0x0

    .line 117
    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->isLowOnDiskSpace(Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v0, :cond_1

    invoke-static {v3}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->isLowOnDiskSpace(Z)Z

    move-result v2

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v3
.end method

.method public static mergeSyncFileNoThread(Lio/realm/Realm;Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)I
    .locals 7

    .line 386
    const-string v0, "Stacktrace"

    const-string v1, ""

    const-string v2, "Exception cought: "

    const-string v3, "Source"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 388
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    .line 389
    sget-object v6, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 391
    const-string v6, "start mergeSyncFileNoThread"

    invoke-static {v6}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p4, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->syncData(Lio/realm/Realm;Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 395
    invoke-virtual {p5, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->merge(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 396
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->merge(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 397
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->merge(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 398
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object p4

    invoke-virtual {p4, p0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->merge(Lio/realm/Realm;Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 402
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->merge(Lio/realm/Realm;)Z

    .line 405
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateNumberOfStudies(Lio/realm/Realm;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :try_start_1
    const-string p0, "end mergeSyncFileNoThread"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 413
    :try_start_2
    invoke-static {v3, p3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string p1, "exception mergeSyncFileNoThread"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V

    .line 415
    const-string p1, "HelpFunctions.saveServiceFile 1"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto/16 :goto_3

    :cond_0
    move-object p4, v1

    :goto_0
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 415
    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 420
    :try_start_3
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 443
    :catch_3
    :goto_1
    sget-object p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    :catch_4
    move-exception p0

    const/4 v4, 0x1

    goto :goto_2

    .line 399
    :cond_1
    :try_start_4
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "FileManager.mergeSyncFileNoThread returned false"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 430
    :goto_2
    :try_start_5
    invoke-static {v3, p3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string p1, "HelpFunctions.mergeSyncFileNoThread 1"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 431
    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    instance-of p1, p0, Lcom/lostpixels/fieldservice/utils/FileVersionException;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    const/4 v4, 0x2

    .line 438
    :cond_3
    :try_start_6
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    invoke-virtual {p1, v3, p3}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 427
    :goto_3
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :goto_4
    return v4

    :catchall_0
    move-exception p0

    .line 443
    sget-object p1, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 444
    throw p0
.end method

.method private static printLogging(Ljava/lang/String;)V
    .locals 4

    .line 207
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mlstLogging:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    const-string v1, "----------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    sget-object v2, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mlstLogging:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static saveExternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 258
    :try_start_0
    new-instance v1, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;)V

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Void;

    const/4 p2, 0x0

    aput-object p2, p0, v0

    const/4 v2, 0x1

    aput-object p2, p0, v2

    const/4 v2, 0x2

    aput-object p2, p0, v2

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 261
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception cought: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 261
    const-string v1, "HelpFunctions.saveServiceFile 1"

    invoke-static {v1, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string p2, "Stacktrace"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string p0, "Source"

    invoke-static {p0, p3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 266
    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;->onFileOperationComplete(Z)V

    :cond_1
    return-void
.end method

.method public static saveExternalFilesNoThread(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/File;Ljava/lang/String;)V
    .locals 4

    .line 272
    const-string v0, "end saveExternalFilesNoThread"

    const-string v1, "Source"

    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    .line 273
    sget-object v2, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 275
    const-string v2, "start saveExternalFilesNoThread"

    invoke-static {v2}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    :try_start_1
    new-instance v2, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1;

    invoke-direct {v2, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1;-><init>(Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, v2, v3, p3}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->saveFilesExternal(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 292
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v2

    const-string v3, "Trying to create the file"

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    :catch_1
    :try_start_3
    invoke-static {v1, p3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 300
    :cond_0
    new-instance v2, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$2;

    invoke-direct {v2, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$2;-><init>(Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, v2, v3, p3}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->saveFilesExternal(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    :goto_0
    :try_start_4
    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 331
    :goto_1
    sget-object p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_3

    .line 318
    :goto_2
    :try_start_5
    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V

    .line 320
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 322
    :goto_3
    :try_start_6
    const-string p2, "HelpFunctions.saveServiceFile 1"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception cought: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_1
    const-string v2, ""

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {p2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string p2, "Stacktrace"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {v1, p3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    .line 327
    invoke-interface {p1, p0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;->onFileOperationComplete(Z)V

    .line 329
    :cond_2
    const-string p0, "ExtDir"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :goto_5
    return-void

    :catchall_1
    move-exception p0

    .line 331
    sget-object p1, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 332
    throw p0
.end method

.method private static saveFilesExternal(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 10

    .line 450
    const-string v0, "Stacktrace"

    const-string v1, "Exception cought: "

    const-string v2, "HelpFunctions.saveToFile 1"

    const-string v3, "Source"

    const-string v4, ""

    .line 453
    :try_start_0
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->initRealm(Landroid/content/Context;)V

    .line 456
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p0

    :goto_0
    const/4 v5, 0x0

    .line 461
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v7, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 463
    new-instance p2, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    .line 464
    sget-object v7, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {p2, v6, v7}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object p2

    .line 465
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v7

    .line 466
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 468
    :try_start_2
    invoke-virtual {v7, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->saveToFile(Lcom/fasterxml/jackson/core/JsonGenerator;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 469
    invoke-virtual {v8, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->saveToFile(Lcom/fasterxml/jackson/core/JsonGenerator;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 470
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->save(Lcom/fasterxml/jackson/core/JsonGenerator;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 471
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->save(Lcom/fasterxml/jackson/core/JsonGenerator;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_2

    :catchall_0
    move-exception v7

    goto :goto_8

    :catch_1
    move-exception v7

    goto :goto_4

    .line 472
    :cond_1
    :goto_1
    const-string v7, "HelpFunctions.saveToFile error 1"

    invoke-static {v7, v4}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    :try_start_3
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v7

    invoke-virtual {v7, v3, p3}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v7

    const-string v8, "Failed to save file"

    invoke-virtual {v7, v8}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 480
    :catch_2
    :goto_2
    :try_start_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 489
    :try_start_5
    invoke-virtual {p0}, Lio/realm/Realm;->close()V

    .line 491
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 492
    :goto_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p0

    goto/16 :goto_b

    :catch_3
    move-exception p0

    goto :goto_9

    .line 483
    :goto_4
    :try_start_6
    invoke-static {v3, p3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_2
    move-object v9, v4

    :goto_5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 484
    invoke-static {v2, v8}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-static {v7}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 489
    :try_start_7
    invoke-virtual {p0}, Lio/realm/Realm;->close()V

    .line 491
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :goto_6
    if-eqz p1, :cond_4

    .line 502
    :goto_7
    invoke-interface {p1, v5}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;->onFileOperationComplete(Z)V

    goto :goto_a

    .line 489
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lio/realm/Realm;->close()V

    .line 491
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 492
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 494
    throw v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 496
    :goto_9
    :try_start_9
    invoke-static {v3, p3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 497
    invoke-static {v2, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz p1, :cond_4

    goto :goto_7

    :cond_4
    :goto_a
    return-void

    :goto_b
    if-eqz p1, :cond_5

    .line 502
    invoke-interface {p1, v5}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;->onFileOperationComplete(Z)V

    .line 503
    :cond_5
    throw p0
.end method

.method public static saveSyncFilesNoThread(Lio/realm/Realm;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)Z
    .locals 5

    .line 341
    const-string v0, "start saveSyncFilesNoThread"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 344
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    .line 345
    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 348
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 350
    :try_start_2
    new-instance p2, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    .line 351
    sget-object v3, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {p2, v2, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v1

    .line 353
    invoke-virtual {p4, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->exportToFile(Lcom/fasterxml/jackson/core/JsonGenerator;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 354
    invoke-virtual {p5, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->saveToFile(Lcom/fasterxml/jackson/core/JsonGenerator;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 355
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->save(Lcom/fasterxml/jackson/core/JsonGenerator;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 356
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->save(Lcom/fasterxml/jackson/core/JsonGenerator;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 357
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save(Lcom/fasterxml/jackson/core/JsonGenerator;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 358
    :cond_0
    :goto_0
    const-string p0, "FileManager.saveSyncFilesNoThread error 1"

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 362
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    :try_start_3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 369
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 373
    const-string p0, "end saveSyncFilesNoThread"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 378
    :goto_1
    sget-object p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_1
    move-exception p0

    move-object v2, v1

    :goto_2
    if-eqz v1, :cond_2

    .line 367
    :try_start_4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    :cond_2
    if-eqz v2, :cond_3

    .line 369
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 371
    :cond_3
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 375
    :catch_0
    :try_start_5
    const-string p0, "Source"

    invoke-static {p0, p3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string p0, "exception saveSyncFilesNoThread"

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->logFileEvent(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    .line 378
    sget-object p1, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 379
    throw p0
.end method

.method public static waitForIO()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    .line 78
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 79
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
