.class Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->makeManualBackup(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fileContent:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->val$accountName:Ljava/lang/String;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->val$fileContent:Ljava/io/File;

    iput-object p5, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;->val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(Z)V
    .locals 3

    .line 329
    new-instance p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3$1saveTast;-><init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$3;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Void;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
