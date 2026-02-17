.class Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->onFileOperationComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "saveTast"
.end annotation


# instance fields
.field bOK:Z

.field storageError:Z

.field final synthetic this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 268
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->bOK:Z

    .line 269
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->storageError:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 267
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 274
    const-string p1, "application/vnd.mabackupbin"

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;

    iget-object v4, v3, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    iget-object v5, v3, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->val$context:Landroid/content/Context;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->val$accountName:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$mgetDrive(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Landroid/content/Context;Ljava/lang/String;)Lcom/google/api/services/drive/Drive;

    move-result-object v3

    .line 276
    new-instance v4, Lcom/google/api/client/http/FileContent;

    iget-object v5, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;

    iget-object v5, v5, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->val$fileContent:Ljava/io/File;

    invoke-direct {v4, p1, v5}, Lcom/google/api/client/http/FileContent;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 279
    new-instance v5, Lcom/google/api/services/drive/model/File;

    invoke-direct {v5}, Lcom/google/api/services/drive/model/File;-><init>()V

    .line 280
    iget-object v6, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;

    iget-object v6, v6, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {v6, v3, v1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$mgetName(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Lcom/google/api/services/drive/Drive;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/api/services/drive/model/File;->setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    .line 281
    invoke-virtual {v5, p1}, Lcom/google/api/services/drive/model/File;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    .line 282
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;

    iget-object v6, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->val$accountName:Ljava/lang/String;

    invoke-static {v6, v3, p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$mgetBackupFolder(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Lcom/google/api/services/drive/Drive;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 283
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/google/api/services/drive/model/File;->setParents(Ljava/util/List;)Lcom/google/api/services/drive/model/File;

    .line 284
    invoke-virtual {v3}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p1

    invoke-virtual {p1, v5, v4}, Lcom/google/api/services/drive/Drive$Files;->create(Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    .line 286
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->bOK:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    nop

    goto/16 :goto_3

    .line 306
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 306
    const-string v1, "GDriveBackupFactory.makeBackup2"

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 300
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GDriveBackupFactory.makeBackup 2"

    invoke-static {v3, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "storageQuotaExceeded"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 302
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->storageError:Z

    goto :goto_4

    .line 294
    :goto_2
    iget-object v2, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;Z)V

    goto :goto_4

    .line 297
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 297
    const-string v1, "GDriveBackupFactory.makeBackup1"

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 288
    :goto_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->val$context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 289
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "accountName"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 291
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;Z)V

    :cond_1
    :goto_4
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 267
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 317
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->storageError:Z

    if-eqz p1, :cond_0

    .line 319
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->val$context:Landroid/content/Context;

    const-string v0, "Google Drive storage quota has been exceeded."

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GDriveBackupFactory.makeBackup 2"

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;

    if-eqz p1, :cond_1

    .line 325
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->bOK:Z

    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;->onBackupComplete(Z)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 267
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    .line 0
    return-void
.end method
