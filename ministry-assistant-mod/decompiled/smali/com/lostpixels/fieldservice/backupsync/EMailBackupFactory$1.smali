.class Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory;->makeManualBackup(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory;

.field final synthetic val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory$1;->this$0:Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory$1;->val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(Z)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory$1;->val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p1}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;->onBackupComplete(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 95
    const-string v0, "backupAddr"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory$1;->val$file:Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendAsBinaryOrEmail(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
