.class Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->restoreBackup(Ljava/lang/String;Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "loadTask"
.end annotation


# instance fields
.field bOK:Z

.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$restoreComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;

.field final synthetic val$sBackup:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->val$sBackup:Ljava/lang/String;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->val$restoreComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;

    .line 345
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 341
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->bOK:Z

    .line 346
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 340
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .line 358
    const-string p1, "accountName"

    const-string v0, "GDriveBackupFactory.restoreBackup"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->val$context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 359
    invoke-interface {v4, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 360
    iget-object v6, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    iget-object v7, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->val$context:Landroid/content/Context;

    invoke-static {v6, v7, v5}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$mgetDrive(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Landroid/content/Context;Ljava/lang/String;)Lcom/google/api/services/drive/Drive;

    move-result-object v5

    .line 362
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 363
    invoke-virtual {v5}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v5

    iget-object v7, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->val$sBackup:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object v5

    .line 364
    invoke-virtual {v5, v6}, Lcom/google/api/services/drive/Drive$Files$Get;->executeMediaAndDownloadTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 368
    :try_start_1
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 371
    new-instance v6, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    .line 372
    invoke-virtual {v6, v5}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v6

    .line 374
    iget-object v7, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->val$context:Landroid/content/Context;

    new-instance v8, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask$1;

    invoke-direct {v8, p0, v6, v5}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask$1;-><init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;Lcom/fasterxml/jackson/core/JsonParser;Ljava/io/InputStream;)V

    const-string v5, "GDriveBackupFactory 3"

    invoke-static {v7, v6, v8, v2, v5}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->loadExternalFile(Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_2

    .line 408
    :goto_0
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 408
    invoke-static {v0, v4}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_3
    move-exception p1

    goto/16 :goto_3

    :catch_4
    nop

    goto/16 :goto_4

    :catch_5
    move-exception p1

    goto/16 :goto_5

    .line 402
    :goto_1
    iget-object v5, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {v5}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 403
    iget-object v5, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {v5}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v5, v4, v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;Z)V

    goto/16 :goto_6

    .line 405
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 405
    invoke-static {v0, v4}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 396
    :goto_2
    iget-object v5, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {v5}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 397
    iget-object v5, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {v5}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v5, v4, v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;Z)V

    goto/16 :goto_6

    .line 399
    :cond_1
    const-string v5, "GDriveBackupFactory.makeBackup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 399
    invoke-static {v5, v4}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 392
    :catch_6
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 393
    iget-object v4, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 394
    iget-object v4, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;Z)V
    :try_end_2
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_6

    .line 423
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 418
    :goto_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 419
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 420
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 421
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;Z)V

    goto :goto_6

    .line 412
    :goto_5
    iget-object v1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 413
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;Z)V

    goto :goto_6

    .line 415
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 415
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_6
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 340
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 432
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->val$restoreComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;

    if-eqz p1, :cond_0

    .line 433
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->bOK:Z

    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;->onRestoreComplete(Z)V

    .line 436
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 437
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->val$context:Landroid/content/Context;

    const v2, 0x7f120213

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 340
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    .line 0
    return-void
.end method
