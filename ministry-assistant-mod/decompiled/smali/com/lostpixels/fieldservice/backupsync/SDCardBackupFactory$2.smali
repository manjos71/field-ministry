.class Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;->makeBackup(Landroid/content/Context;ILcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;

.field final synthetic val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$iNumberOfFiles:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;Landroid/content/Context;I)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$2;->this$0:Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$2;->val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$2;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$2;->val$iNumberOfFiles:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(Z)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$2;->val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0, p1}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;->onBackupComplete(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 176
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$2;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;->-$$Nest$smgetAllSchedExportFiles(ZLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 178
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 179
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$2;->val$iNumberOfFiles:I

    if-le v0, v1, :cond_1

    .line 180
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 182
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
