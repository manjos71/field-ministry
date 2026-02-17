.class Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;->restoreBackup(Ljava/lang/String;Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;

.field final synthetic val$fis:Ljava/io/InputStream;

.field final synthetic val$jp:Lcom/fasterxml/jackson/core/JsonParser;

.field final synthetic val$restoreComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;Lcom/fasterxml/jackson/core/JsonParser;Ljava/io/InputStream;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$3;->this$0:Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$3;->val$restoreComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$3;->val$jp:Lcom/fasterxml/jackson/core/JsonParser;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$3;->val$fis:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(Z)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$3;->val$restoreComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0, p1}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;->onRestoreComplete(Z)V

    .line 211
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$3;->val$jp:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    .line 213
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$3;->val$fis:Ljava/io/InputStream;

    if-eqz p1, :cond_1

    .line 214
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    return-void

    .line 216
    :goto_0
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

    const-string v0, "restore backuo"

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
