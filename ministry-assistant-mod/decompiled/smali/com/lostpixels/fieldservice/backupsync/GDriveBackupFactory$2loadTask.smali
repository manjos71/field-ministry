.class Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->removeBackup(Ljava/lang/String;Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRemoveComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "loadTask"
.end annotation


# instance fields
.field bOK:Z

.field final synthetic this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$removeComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRemoveComplete;

.field final synthetic val$sBackup:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRemoveComplete;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->val$sBackup:Ljava/lang/String;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->val$removeComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRemoveComplete;

    .line 456
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 453
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->bOK:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 452
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 462
    const-string p1, "GDriveBackupFactory.removeBackup"

    const-string v0, "accountName"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 463
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 464
    iget-object v4, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    iget-object v5, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->val$context:Landroid/content/Context;

    invoke-static {v4, v5, v3}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$mgetDrive(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Landroid/content/Context;Ljava/lang/String;)Lcom/google/api/services/drive/Drive;

    move-result-object v3

    .line 465
    invoke-virtual {v3}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->val$sBackup:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/api/services/drive/Drive$Files;->delete(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Delete;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    .line 466
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->bOK:Z
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    nop

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    .line 479
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 474
    :goto_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->val$context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 475
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 476
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 477
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;Z)V

    goto :goto_3

    .line 468
    :goto_2
    iget-object v1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->-$$Nest$fgetmHandler(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;->onRequestAuthorization(Landroid/content/Intent;Z)V

    goto :goto_3

    .line 471
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_3
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 452
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 485
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->val$removeComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRemoveComplete;

    if-eqz p1, :cond_0

    .line 486
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$2loadTask;->bOK:Z

    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRemoveComplete;->onRemoveComplete(Z)V

    :cond_0
    return-void
.end method
