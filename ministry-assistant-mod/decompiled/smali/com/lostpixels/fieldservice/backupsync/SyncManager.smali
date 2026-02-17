.class public abstract Lcom/lostpixels/fieldservice/backupsync/SyncManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;,
        Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;,
        Lcom/lostpixels/fieldservice/backupsync/SyncManager$DownloadInfo;
    }
.end annotation


# static fields
.field private static mSyncLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static downloadAndMergeSyncFile(Landroid/content/Context;Lcom/google/api/services/drive/Drive;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 174
    const-string p2, "GDriveBackupFactory.restoreBackup"

    const/4 p4, 0x0

    .line 178
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object p1

    .line 180
    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive$Files$Get;->executeMediaAndDownloadTo(Ljava/io/OutputStream;)V

    .line 181
    invoke-static {p0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->getRealmInstance(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 184
    :try_start_1
    new-instance p5, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p5, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 186
    :try_start_2
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    .line 187
    invoke-virtual {v0, p5}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 189
    :try_start_3
    const-string v4, "SyncManager 1"

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v5

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, p0

    :try_start_4
    invoke-static/range {v1 .. v6}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->mergeSyncFileNoThread(Lio/realm/Realm;Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    :try_start_5
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    :goto_0
    move-object p0, v0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object p0, v0

    goto/16 :goto_9

    .line 200
    :cond_0
    :goto_1
    invoke-virtual {p5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    return p4

    :catchall_0
    move-exception v0

    :goto_2
    move-object p0, v0

    move-object p1, v3

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_3
    move-object p0, v0

    move-object p1, v3

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, p0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v2, p0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, p0

    :goto_4
    move-object p0, v0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    move-object p5, p1

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    move-object p5, p1

    .line 194
    :goto_5
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 196
    :try_start_7
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    :cond_1
    if-eqz p5, :cond_5

    .line 200
    invoke-virtual {p5}, Ljava/util/zip/GZIPInputStream;->close()V

    goto/16 :goto_a

    :catchall_4
    move-exception v0

    goto :goto_4

    .line 196
    :goto_6
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    if-eqz p1, :cond_2

    .line 198
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    :cond_2
    if-eqz p5, :cond_3

    .line 200
    invoke-virtual {p5}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 202
    :cond_3
    throw p0
    :try_end_7
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_7
    move-exception v0

    move-object v2, p0

    goto :goto_0

    .line 216
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 210
    :goto_8
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 211
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "accountName"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GDriveBackupFactory.makeBackup"

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    if-eqz p3, :cond_4

    .line 206
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;)V

    goto :goto_a

    .line 208
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :catch_8
    :cond_5
    :goto_a
    return p4
.end method

.method private static getBackupFolder(Lcom/google/api/services/drive/Drive;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 394
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "mimeType = \'application/vnd.google-apps.folder\' and name = \'MinistryAssistant\' and \'%s\' in owners"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 397
    invoke-virtual {p0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    const-string v1, "files(id)"

    invoke-virtual {p1, v1}, Lcom/google/api/services/drive/Drive$Files$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/FileList;

    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File;

    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 408
    new-instance p1, Lcom/google/api/services/drive/model/File;

    invoke-direct {p1}, Lcom/google/api/services/drive/model/File;-><init>()V

    .line 409
    const-string v0, "MinistryAssistant"

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/model/File;->setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    .line 410
    const-string v0, "application/vnd.google-apps.folder"

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/model/File;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    .line 411
    invoke-virtual {p0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files;->create(Lcom/google/api/services/drive/model/File;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object p0

    const-string p1, "id"

    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Create;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/services/drive/model/File;

    .line 412
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private static getDrive(Landroid/content/Context;Ljava/lang/String;)Lcom/google/api/services/drive/Drive;
    .locals 2

    .line 384
    const-string v0, "https://www.googleapis.com/auth/drive.file"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object p0

    .line 385
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 386
    new-instance p1, Lcom/google/api/services/drive/Drive$Builder;

    invoke-static {}, Lcom/google/api/client/extensions/android/http/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v1

    invoke-direct {p1, v0, v1, p0}, Lcom/google/api/services/drive/Drive$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Builder;->build()Lcom/google/api/services/drive/Drive;

    move-result-object p0

    return-object p0
.end method

.method private static getFileLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 62
    sget-object v0, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    :cond_0
    sget-object v0, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private static getOnlineFileIfLatest(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lostpixels/fieldservice/backupsync/SyncManager$DownloadInfo;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "name = \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and trashed = false and \'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in owners"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p0

    .line 423
    const-string p1, "files(id)"

    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    .line 424
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/services/drive/model/FileList;

    if-eqz p0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 426
    new-instance p1, Lcom/lostpixels/fieldservice/backupsync/SyncManager$DownloadInfo;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/backupsync/SyncManager$DownloadInfo;-><init>()V

    .line 428
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/services/drive/model/File;

    .line 432
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/lostpixels/fieldservice/backupsync/SyncManager$DownloadInfo;->fileId:Ljava/lang/String;

    const/4 p0, 0x1

    .line 433
    iput-boolean p0, p1, Lcom/lostpixels/fieldservice/backupsync/SyncManager$DownloadInfo;->bDownload:Z

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isSynching()Z
    .locals 1

    .line 70
    sget-object v0, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static startSyncing(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;Z)V
    .locals 7

    .line 88
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lostpixels/fieldservice/backupsync/SyncManager$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/lostpixels/fieldservice/backupsync/SyncManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static startSyncingNoThread(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;Z)V
    .locals 11

    .line 97
    const-string v8, "GDriveBackupFactory.makeBackup"

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 102
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_17
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v4, 0x0

    .line 103
    :try_start_1
    invoke-static/range {p0 .. p1}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->getDrive(Landroid/content/Context;Ljava/lang/String;)Lcom/google/api/services/drive/Drive;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 104
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "android_id"

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-static {v2, p1, v5}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->tryLock(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-nez v10, :cond_1

    if-eqz p3, :cond_0

    const/4 v0, 0x3

    .line 110
    :try_start_3
    invoke-interface {p3, v0}, Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;->onSyncComplete(I)V
    :try_end_3
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    const/4 v9, 0x0

    goto/16 :goto_1d

    :catch_0
    move-exception v0

    move-object v3, v2

    move-object v1, v10

    :goto_0
    const/4 v2, 0x0

    goto/16 :goto_17

    :catch_1
    nop

    move-object v3, v2

    move-object v1, v10

    :goto_1
    const/4 v9, 0x0

    goto/16 :goto_19

    :catch_2
    move-exception v0

    move-object v3, v2

    move-object v1, v10

    :goto_2
    const/4 v9, 0x0

    goto/16 :goto_1a

    :catch_3
    move-exception v0

    move-object v3, v2

    move-object v1, v10

    goto/16 :goto_1b

    .line 166
    :cond_0
    :goto_3
    invoke-static {}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 115
    :cond_1
    :try_start_4
    const-string v0, "MASyncFile.bin"

    invoke-static {v2, v0, v5, p1}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->getOnlineFileIfLatest(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lostpixels/fieldservice/backupsync/SyncManager$DownloadInfo;

    move-result-object v0
    :try_end_4
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const v7, 0x7f120510

    if-eqz v0, :cond_5

    if-eqz p4, :cond_2

    .line 118
    :try_start_5
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/backupsync/SyncManager$DownloadInfo;->bDownload:Z

    if-nez v1, :cond_2

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    goto/16 :goto_1d

    :catch_4
    move-exception v0

    move-object v3, v2

    :goto_4
    move-object v1, v10

    const/4 v2, 0x1

    goto/16 :goto_17

    :catch_5
    nop

    move-object v3, v2

    :goto_5
    move-object v1, v10

    goto/16 :goto_19

    :catch_6
    move-exception v0

    move-object v3, v2

    :goto_6
    move-object v1, v10

    goto/16 :goto_1a

    :catch_7
    move-exception v0

    move-object v3, v2

    :goto_7
    move-object v1, v10

    const/4 v4, 0x1

    goto/16 :goto_1b

    .line 121
    :cond_2
    iget-object v6, v0, Lcom/lostpixels/fieldservice/backupsync/SyncManager$DownloadInfo;->fileId:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->downloadAndMergeSyncFile(Landroid/content/Context;Lcom/google/api/services/drive/Drive;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move v4, v6

    :goto_8
    if-eqz v4, :cond_4

    const/4 v3, 0x4

    if-ne v4, v3, :cond_3

    goto :goto_a

    :cond_3
    :goto_9
    move-object v3, v2

    goto :goto_b

    .line 124
    :cond_4
    :goto_a
    iget-object v6, v0, Lcom/lostpixels/fieldservice/backupsync/SyncManager$DownloadInfo;->fileId:Ljava/lang/String;

    .line 125
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 124
    invoke-static/range {v1 .. v7}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->uploadSyncFile(Landroid/content/Context;Lcom/google/api/services/drive/Drive;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v4, v0

    goto :goto_9

    .line 129
    :cond_5
    :try_start_6
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 128
    invoke-static/range {v1 .. v7}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->uploadSyncFile(Landroid/content/Context;Lcom/google/api/services/drive/Drive;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v3, v2

    move v4, v0

    :goto_b
    if-eqz p3, :cond_6

    .line 133
    :try_start_7
    invoke-interface {p3, v4}, Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;->onSyncComplete(I)V
    :try_end_7
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v0

    :goto_c
    move-object v1, v0

    goto/16 :goto_1d

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    :goto_d
    nop

    goto :goto_5

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_b
    move-exception v0

    goto :goto_7

    .line 156
    :cond_6
    :goto_e
    :try_start_8
    invoke-static {v3, v10}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->unlock(Lcom/google/api/services/drive/Drive;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :catch_d
    :cond_7
    :goto_10
    invoke-static {}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_20

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_c

    :catch_e
    move-object v3, v2

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v3, v2

    move-object v10, v1

    :goto_11
    const/4 v9, 0x0

    goto :goto_c

    :catch_f
    move-exception v0

    move-object v3, v2

    goto/16 :goto_0

    :catch_10
    move-object v3, v2

    nop

    goto/16 :goto_1

    :catch_11
    move-exception v0

    move-object v3, v2

    goto/16 :goto_2

    :catch_12
    move-exception v0

    move-object v3, v2

    goto/16 :goto_1b

    :catchall_5
    move-exception v0

    :goto_12
    move-object v3, v1

    move-object v10, v3

    goto :goto_11

    :catch_13
    move-exception v0

    :goto_13
    move-object v3, v1

    goto/16 :goto_0

    :catch_14
    :goto_14
    nop

    move-object v3, v1

    goto/16 :goto_1

    :catch_15
    move-exception v0

    :goto_15
    move-object v3, v1

    goto/16 :goto_2

    :catch_16
    move-exception v0

    :goto_16
    move-object v3, v1

    goto/16 :goto_1b

    :catchall_6
    move-exception v0

    const/4 v4, 0x0

    goto :goto_12

    :catch_17
    move-exception v0

    const/4 v4, 0x0

    goto :goto_13

    :catch_18
    const/4 v4, 0x0

    goto :goto_14

    :catch_19
    move-exception v0

    const/4 v4, 0x0

    goto :goto_15

    :catch_1a
    move-exception v0

    const/4 v4, 0x0

    goto :goto_16

    .line 149
    :goto_17
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_8

    .line 151
    invoke-interface {p3, v9}, Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;->onSyncComplete(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_18

    :catchall_7
    move-exception v0

    move-object v10, v1

    move v9, v2

    goto/16 :goto_c

    :cond_8
    :goto_18
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 156
    :try_start_a
    invoke-static {v3, v1}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->unlock(Lcom/google/api/services/drive/Drive;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1b

    goto :goto_10

    :catch_1b
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f

    :goto_19
    if-eqz v9, :cond_7

    if-eqz v1, :cond_7

    .line 156
    :try_start_b
    invoke-static {v3, v1}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->unlock(Lcom/google/api/services/drive/Drive;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1c

    goto/16 :goto_10

    :catch_1c
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f

    .line 143
    :goto_1a
    :try_start_c
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 144
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "accountName"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-eqz v9, :cond_7

    if-eqz v1, :cond_7

    .line 156
    :try_start_d
    invoke-static {v3, v1}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->unlock(Lcom/google/api/services/drive/Drive;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1d

    goto/16 :goto_10

    :catch_1d
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f

    :catchall_8
    move-exception v0

    move-object v10, v1

    goto/16 :goto_c

    :goto_1b
    if-eqz p2, :cond_9

    .line 137
    :try_start_e
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;)V

    goto :goto_1c

    :catchall_9
    move-exception v0

    move-object v10, v1

    move v9, v4

    goto/16 :goto_c

    :cond_9
    :goto_1c
    if-eqz p3, :cond_b

    .line 140
    invoke-interface {p3, v9}, Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;->onSyncComplete(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_1f

    :goto_1d
    if-eqz v9, :cond_a

    if-eqz v10, :cond_a

    .line 156
    :try_start_f
    invoke-static {v3, v10}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->unlock(Lcom/google/api/services/drive/Drive;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_1f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v0

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :catch_1f
    :cond_a
    :goto_1e
    invoke-static {}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 167
    throw v1

    :cond_b
    :goto_1f
    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    .line 156
    :try_start_10
    invoke-static {v3, v1}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->unlock(Lcom/google/api/services/drive/Drive;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_20

    goto/16 :goto_10

    :catch_20
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f

    :goto_20
    return-void
.end method

.method private static tryLock(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 331
    invoke-virtual {p0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name = \'MASyncFile.lock\' and trashed = false and \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' in owners"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p2

    .line 332
    const-string v0, "files(createdTime,id,name)"

    invoke-virtual {p2, v0}, Lcom/google/api/services/drive/Drive$Files$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    .line 333
    invoke-virtual {p2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/api/services/drive/model/FileList;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 334
    invoke-virtual {p2}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    invoke-virtual {p2}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/api/services/drive/model/File;

    .line 340
    invoke-virtual {p2}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 344
    invoke-virtual {p2}, Lcom/google/api/services/drive/model/File;->getCreatedTime()Lcom/google/api/client/util/DateTime;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 346
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/16 v3, 0xc

    const/16 v4, -0xa

    .line 347
    invoke-virtual {p2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 349
    invoke-virtual {v2, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    xor-int/lit8 v1, p2, 0x1

    if-nez p2, :cond_2

    .line 356
    :try_start_0
    invoke-static {p0, v0}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->unlock(Lcom/google/api/services/drive/Drive;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 358
    const-string v2, "Unlock"

    invoke-static {p2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 368
    new-instance p2, Lcom/google/api/services/drive/model/File;

    invoke-direct {p2}, Lcom/google/api/services/drive/model/File;-><init>()V

    .line 371
    const-string v0, "MASyncFile.lock"

    invoke-virtual {p2, v0}, Lcom/google/api/services/drive/model/File;->setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    .line 372
    const-string v0, "application/vnd.masynclock"

    invoke-virtual {p2, v0}, Lcom/google/api/services/drive/model/File;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    .line 373
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->getBackupFolder(Lcom/google/api/services/drive/Drive;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/api/services/drive/model/File;->setParents(Ljava/util/List;)Lcom/google/api/services/drive/model/File;

    .line 375
    invoke-virtual {p0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/api/services/drive/Drive$Files;->create(Lcom/google/api/services/drive/model/File;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object p0

    const-string p1, "id"

    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Create;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/services/drive/model/File;

    .line 376
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private static unlock(Lcom/google/api/services/drive/Drive;Ljava/lang/String;)V
    .locals 0

    .line 321
    invoke-virtual {p0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files;->delete(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Delete;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    return-void
.end method

.method private static uploadSyncFile(Landroid/content/Context;Lcom/google/api/services/drive/Drive;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 259
    const-string p4, "application/vnd.masyncbin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getTempFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GDSyncFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1

    .line 265
    :try_start_0
    const-string v4, "SyncManager 5"

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v5

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v6

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->saveSyncFilesNoThread(Lio/realm/Realm;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-eqz p0, :cond_3

    .line 269
    :try_start_1
    new-instance p0, Lcom/google/api/services/drive/model/File;

    invoke-direct {p0}, Lcom/google/api/services/drive/model/File;-><init>()V

    .line 272
    new-instance v0, Lcom/google/api/client/http/FileContent;

    invoke-direct {v0, p4, v3}, Lcom/google/api/client/http/FileContent;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 275
    const-string v3, "MASyncFile.bin"

    invoke-virtual {p0, v3}, Lcom/google/api/services/drive/model/File;->setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    .line 276
    invoke-virtual {p0, p6}, Lcom/google/api/services/drive/model/File;->setDescription(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    .line 277
    invoke-virtual {p0, p4}, Lcom/google/api/services/drive/model/File;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    .line 278
    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->getBackupFolder(Lcom/google/api/services/drive/Drive;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/api/services/drive/model/File;->setParents(Ljava/util/List;)Lcom/google/api/services/drive/model/File;

    if-eqz p5, :cond_0

    .line 280
    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/google/api/services/drive/Drive$Files;->delete(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Delete;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    .line 281
    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/google/api/services/drive/Drive$Files;->create(Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    if-nez p5, :cond_1

    .line 284
    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/google/api/services/drive/Drive$Files;->create(Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p1

    invoke-virtual {p1, p5, p0, v0}, Lcom/google/api/services/drive/Drive$Files;->update(Ljava/lang/String;Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/drive/Drive$Files$Update;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 308
    :goto_1
    :try_start_2
    const-string p1, "uploadSyncFile.sync4"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 303
    :goto_2
    const-string p1, "uploadSyncFile.sync5"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "storageQuotaExceeded"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v4, 0x5

    goto :goto_5

    .line 297
    :goto_3
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 298
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "accountName"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    const-string p1, "uploadSyncFile.sync34"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    if-eqz p3, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;)V

    goto :goto_5

    .line 294
    :cond_2
    const-string p1, "uploadSyncFile.sync3"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 312
    :cond_3
    const-string p0, "uploadSyncFile"

    const-string p1, "Could not create sync file!"

    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    :catch_4
    :cond_4
    :goto_5
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    return v4

    :goto_6
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 316
    throw p0
.end method
