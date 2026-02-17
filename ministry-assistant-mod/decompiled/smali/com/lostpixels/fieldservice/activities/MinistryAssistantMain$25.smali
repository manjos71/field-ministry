.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->doSyncDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

.field final synthetic val$lt:Lnet/steamcrafted/loadtoast/LoadToast;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Lnet/steamcrafted/loadtoast/LoadToast;)V
    .locals 0

    .line 1665
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->val$lt:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncComplete(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1671
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SyncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/4 v0, 0x0

    .line 1673
    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->-$$Nest$sfputmbIsSyncing(Z)V

    .line 1674
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$1400()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1675
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$1500()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    move-result-object v0

    iput-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mClickable:Z

    goto :goto_0

    .line 1677
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    iput-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mClickable:Z

    .line 1681
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;

    invoke-direct {v1, p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
