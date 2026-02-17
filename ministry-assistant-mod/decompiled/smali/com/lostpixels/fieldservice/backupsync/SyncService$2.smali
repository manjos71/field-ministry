.class Lcom/lostpixels/fieldservice/backupsync/SyncService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/SyncService;->doSync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/backupsync/SyncService;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/backupsync/SyncService;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/SyncService$2;->this$0:Lcom/lostpixels/fieldservice/backupsync/SyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncComplete(I)V
    .locals 5

    .line 129
    const-string v0, "SyncTime"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const-string v2, "SyncService"

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/SyncService$2;->this$0:Lcom/lostpixels/fieldservice/backupsync/SyncService;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/backupsync/SyncService;->-$$Nest$mdelaySync(Lcom/lostpixels/fieldservice/backupsync/SyncService;)V

    return-void

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/SyncService$2;->this$0:Lcom/lostpixels/fieldservice/backupsync/SyncService;

    invoke-virtual {p1}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v3, 0x1

    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    const-string p1, "Old version of file"

    invoke-static {v2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_2
    const-string p1, "Failed to sync"

    invoke-static {v2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/SyncService$2;->this$0:Lcom/lostpixels/fieldservice/backupsync/SyncService;

    invoke-virtual {p1}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 132
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
