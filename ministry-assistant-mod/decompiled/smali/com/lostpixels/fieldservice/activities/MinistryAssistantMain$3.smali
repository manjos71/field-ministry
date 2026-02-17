.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

.field final synthetic val$appVersionUpdated:Z

.field final synthetic val$bJustLoadFile:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;ZZ)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->val$appVersionUpdated:Z

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->val$bJustLoadFile:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(I)V
    .locals 7

    const/4 v0, 0x0

    .line 355
    const-string v1, "permissionDenied"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    const-class v4, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;

    if-eq p1, v2, :cond_3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    const/4 v5, 0x3

    if-eq p1, v5, :cond_0

    return-void

    .line 363
    :cond_0
    sput-boolean v3, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbDoAutobackup:Z

    .line 364
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 365
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "Ministry Assistant"

    if-eqz v5, :cond_1

    .line 367
    const-string v0, "Permission Denied, display dialog"

    invoke-static {v6, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 369
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-virtual {v0, p1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 372
    :cond_1
    const-string v3, "Permission Denied, restart"

    invoke-static {v6, v3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 374
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    .line 376
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/16 p1, 0xa

    .line 377
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void

    .line 381
    :cond_2
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 382
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    const v1, 0x7f1200bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3$1;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;)V

    .line 383
    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 388
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 357
    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-virtual {v0, p1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 359
    sput-boolean v3, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbDoAutobackup:Z

    return-void

    .line 393
    :cond_4
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1

    .line 395
    :try_start_0
    new-instance v4, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3$2;

    invoke-direct {v4, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3$2;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;)V

    invoke-virtual {p1, v4}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 403
    sput-boolean v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbDoAutobackup:Z

    .line 404
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->val$appVersionUpdated:Z

    if-eqz v2, :cond_5

    .line 405
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateNumberOfStudies(Lio/realm/Realm;Landroid/content/Context;)V

    .line 406
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->createCitiesList(Lio/realm/Realm;)V

    .line 407
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->testPersonsExists(Lio/realm/Realm;)V

    .line 408
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->-$$Nest$msaveAllFiles(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 411
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 412
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 415
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->forceCleanUpPersons(Lio/realm/Realm;)V

    .line 418
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetCards()V

    .line 419
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->-$$Nest$mshowCards(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :try_start_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v3, v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getAutomaticBackupFile(ZLandroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 425
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "MinistryAssustantMain 1"

    invoke-static {v2, v0, v1, v3}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->saveExternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 427
    :try_start_2
    const-string v1, "Failed to create backup"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->val$appVersionUpdated:Z

    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->val$bJustLoadFile:Z

    invoke-static {v0, v1, v2}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->-$$Nest$mdoALotOfTestingAndFixing(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;ZZ)V

    .line 434
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->deleteServiceFile(Landroid/content/Context;)V

    .line 435
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->deleteMinistryFile(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    return-void

    :goto_2
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    .line 438
    throw v0
.end method
