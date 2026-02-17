.class Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;

.field final synthetic val$fis:Ljava/io/InputStream;

.field final synthetic val$jp:Lcom/fasterxml/jackson/core/JsonParser;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;Lcom/fasterxml/jackson/core/JsonParser;Ljava/io/InputStream;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask$1;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask$1;->val$jp:Lcom/fasterxml/jackson/core/JsonParser;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask$1;->val$fis:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(Z)V
    .locals 1

    .line 377
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask$1;->this$1:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask;->bOK:Z

    .line 380
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask$1;->val$jp:Lcom/fasterxml/jackson/core/JsonParser;

    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 383
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1loadTask$1;->val$fis:Ljava/io/InputStream;

    if-eqz p1, :cond_1

    .line 384
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 387
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
