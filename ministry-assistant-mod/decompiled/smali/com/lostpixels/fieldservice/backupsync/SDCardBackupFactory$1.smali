.class Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;->makeManualBackup(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;

.field final synthetic val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$1;->this$0:Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$1;->val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(Z)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$1;->val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0, p1}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;->onBackupComplete(Z)V

    :cond_0
    return-void
.end method
