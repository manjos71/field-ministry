.class Lcom/lostpixels/fieldservice/backupsync/BackupService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/BackupService;->doBackup(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/backupsync/BackupService;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$4;->this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackupComplete(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$4;->this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;

    .line 225
    invoke-virtual {p1}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 226
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-string v2, "LastSchedBackup"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$4;->this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/BackupService;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$4;->this$0:Lcom/lostpixels/fieldservice/backupsync/BackupService;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/BackupService;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
