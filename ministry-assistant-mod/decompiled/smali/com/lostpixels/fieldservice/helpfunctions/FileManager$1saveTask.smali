.class Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->saveExternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "saveTask"
.end annotation


# instance fields
.field bOK:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$func:Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;

.field final synthetic val$path:Ljava/io/File;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->val$path:Ljava/io/File;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->val$source:Ljava/lang/String;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->val$func:Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 223
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->bOK:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 222
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 227
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    .line 229
    const-string p1, "start saveExternalFiles"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$smlogFileEvent(Ljava/lang/String;)V

    .line 231
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$sfgetmFileCommunicationLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 232
    iget-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->val$context:Landroid/content/Context;

    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask$1;-><init>(Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;)V

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->val$path:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->val$source:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$smsaveFilesExternal(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :goto_0
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$sfgetmFileCommunicationLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 240
    :try_start_1
    const-string v0, "saveExternalFiles"

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

    .line 241
    const-string p1, "Source"

    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->val$source:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :goto_1
    const-string p1, "end saveExternalFiles"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$smlogFileEvent(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 243
    :goto_2
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->-$$Nest$sfgetmFileCommunicationLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 244
    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 222
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 253
    iget-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->val$func:Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;

    if-eqz p1, :cond_0

    .line 254
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->bOK:Z

    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;->onFileOperationComplete(Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 222
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    .line 0
    return-void
.end method
