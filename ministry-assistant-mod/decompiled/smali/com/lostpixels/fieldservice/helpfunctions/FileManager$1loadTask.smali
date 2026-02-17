.class Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->loadInternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "loadTask"
.end annotation


# instance fields
.field eOK:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$func:Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$source:Ljava/lang/String;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$func:Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 557
    iput p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->eOK:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 556
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 563
    const-string p1, "/"

    const-string v0, "start loadInternalFiles"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$smlogFileEvent(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 566
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    .line 567
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$sfgetmFileCommunicationLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 568
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v2
    :try_end_0
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 571
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Ministry.obj"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    .line 573
    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$source:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$sminternalLoadObjectTerritoryFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto/16 :goto_8

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 574
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Ministry.bin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 575
    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    .line 576
    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$source:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$sminternalLoadSmileTerritoryFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 578
    :cond_1
    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->setFileLoaded()V

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_3

    .line 583
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Service.obj"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 584
    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    .line 585
    iget-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$source:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$sminternalLoadObjectServiceFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 586
    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Service.bin"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 587
    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    .line 588
    iget-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$source:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$sminternalLoadSmileServiceFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    const/4 p1, 0x0

    .line 593
    iput p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->eOK:I

    .line 596
    :cond_4
    const-string p1, "end loadInternalFiles"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$smlogFileEvent(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 614
    :goto_2
    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    .line 615
    :cond_5
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$sfgetmFileCommunicationLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_1
    move-exception p1

    move-object v2, v1

    goto :goto_3

    :catch_2
    move-object v2, v1

    goto :goto_6

    .line 600
    :goto_3
    :try_start_2
    const-string v3, "exception loadInternalFiles"

    invoke-static {v3}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$smlogFileEvent(Ljava/lang/String;)V

    .line 601
    const-string v3, "loadInternalFiles"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception cought: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_6
    const-string v5, ""

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 601
    invoke-static {v3, v4}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v3, "Stacktrace"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v3, "Source"

    iget-object v4, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$source:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    instance-of p1, p1, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    .line 606
    iput p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->eOK:I

    goto :goto_5

    .line 608
    :cond_7
    iput v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->eOK:I

    .line 610
    :goto_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$source:Ljava/lang/String;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$smprintLogging(Ljava/lang/String;)V

    if-eqz v2, :cond_5

    goto :goto_2

    :catch_3
    :goto_6
    const/4 p1, 0x2

    .line 598
    iput p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->eOK:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    goto :goto_2

    :goto_7
    return-object v1

    :goto_8
    if-eqz v1, :cond_8

    .line 614
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 615
    :cond_8
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$sfgetmFileCommunicationLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 616
    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 556
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 622
    iget-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->val$func:Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;

    if-eqz p1, :cond_0

    .line 623
    iget v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1loadTask;->eOK:I

    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;->onFileOperationComplete(I)V

    return-void

    .line 625
    :cond_0
    const-string p1, "loadInternalFiles"

    const-string v0, "Function is null"

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
