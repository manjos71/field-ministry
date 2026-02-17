.class Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->onFileOperationComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "saveTask"
.end annotation


# instance fields
.field bOK:Z

.field storageError:Z

.field final synthetic this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 184
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->bOK:Z

    .line 185
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->storageError:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 183
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 190
    const-string p1, "application/vnd.mabackupbin"

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;

    iget-object v3, v2, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    iget-object v4, v2, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->val$context:Landroid/content/Context;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->val$accountName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$mgetDrive(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Landroid/content/Context;Ljava/lang/String;)Lcom/google/api/services/drive/Drive;

    move-result-object v2

    .line 193
    new-instance v3, Lcom/google/api/client/http/FileContent;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;

    iget-object v4, v4, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->val$fileContent:Ljava/io/File;

    invoke-direct {v3, p1, v4}, Lcom/google/api/client/http/FileContent;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 196
    new-instance v4, Lcom/google/api/services/drive/model/File;

    invoke-direct {v4}, Lcom/google/api/services/drive/model/File;-><init>()V

    .line 197
    iget-object v5, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;

    iget-object v5, v5, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {v5, v2, v1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$mgetName(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Lcom/google/api/services/drive/Drive;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/api/services/drive/model/File;->setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    .line 198
    invoke-virtual {v4, p1}, Lcom/google/api/services/drive/model/File;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    .line 199
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;

    iget-object v5, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->val$accountName:Ljava/lang/String;

    invoke-static {v5, v2, p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$mgetBackupFolder(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Lcom/google/api/services/drive/Drive;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/api/services/drive/model/File;->setParents(Ljava/util/List;)Lcom/google/api/services/drive/model/File;

    .line 201
    invoke-virtual {v2}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lcom/google/api/services/drive/Drive$Files;->create(Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    .line 203
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;

    iget-object v3, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    iget-object v4, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->val$context:Landroid/content/Context;

    iget p1, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->val$iNumberOfFiles:I

    invoke-static {v3, v4, v2, p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$mdeleteOldBackups(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Landroid/content/Context;Lcom/google/api/services/drive/Drive;I)V

    .line 205
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->bOK:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    nop

    goto :goto_2

    .line 221
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GDriveBackupFactory.makeBackup 2"

    invoke-static {v3, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "storageQuotaExceeded"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->storageError:Z

    goto :goto_3

    .line 213
    :goto_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;Z)V

    goto :goto_3

    .line 216
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    const-string v1, "GDriveBackupFactory.makeBackup"

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 208
    :goto_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 209
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "accountName"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;Z)V

    :catch_3
    :cond_1
    :goto_3
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 183
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 234
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->storageError:Z

    if-eqz p1, :cond_0

    .line 236
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->val$context:Landroid/content/Context;

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

    .line 238
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

    .line 241
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2;->val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;

    if-eqz p1, :cond_1

    .line 242
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2$1saveTask;->bOK:Z

    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;->onBackupComplete(Z)V

    :cond_1
    return-void
.end method
