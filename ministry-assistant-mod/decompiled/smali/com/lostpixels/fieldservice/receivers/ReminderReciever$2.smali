.class Lcom/lostpixels/fieldservice/receivers/ReminderReciever$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/receivers/ReminderReciever;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/receivers/ReminderReciever;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/receivers/ReminderReciever;Landroid/content/Context;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/lostpixels/fieldservice/receivers/ReminderReciever$2;->this$0:Lcom/lostpixels/fieldservice/receivers/ReminderReciever;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/receivers/ReminderReciever$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(I)V
    .locals 4

    .line 70
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/receivers/ReminderReciever$2;->this$0:Lcom/lostpixels/fieldservice/receivers/ReminderReciever;

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/receivers/ReminderReciever$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/lostpixels/fieldservice/receivers/ReminderReciever;->-$$Nest$mshowNotification(Lcom/lostpixels/fieldservice/receivers/ReminderReciever;ZLandroid/content/Context;)V

    if-nez p1, :cond_1

    .line 74
    new-instance p1, Lcom/lostpixels/fieldservice/receivers/ReminderReciever$2$1;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/receivers/ReminderReciever$2$1;-><init>(Lcom/lostpixels/fieldservice/receivers/ReminderReciever$2;)V

    invoke-virtual {v0, p1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 81
    iget-object p1, p0, Lcom/lostpixels/fieldservice/receivers/ReminderReciever$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->deleteServiceFile(Landroid/content/Context;)V

    .line 82
    iget-object p1, p0, Lcom/lostpixels/fieldservice/receivers/ReminderReciever$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->deleteMinistryFile(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 85
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    :goto_2
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 86
    throw p1
.end method
