.class Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever;Landroid/content/Context;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$2;->this$0:Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(I)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$2;->this$0:Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$2;->val$context:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever;->-$$Nest$mshowNotificationVisits(Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever;ILandroid/content/Context;)V

    if-nez p1, :cond_0

    .line 81
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1

    .line 83
    :try_start_0
    new-instance v0, Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$2$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$2$1;-><init>(Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$2;)V

    invoke-virtual {p1, v0}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    .line 94
    iget-object p1, p0, Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->deleteServiceFile(Landroid/content/Context;)V

    .line 95
    iget-object p1, p0, Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->deleteMinistryFile(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v0

    .line 91
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    .line 92
    throw v0

    :cond_0
    return-void
.end method
