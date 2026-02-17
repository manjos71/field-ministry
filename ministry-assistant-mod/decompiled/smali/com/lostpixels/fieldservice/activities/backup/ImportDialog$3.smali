.class Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(I)V
    .locals 2

    .line 202
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbFileLoaded:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iput-boolean v1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbFileLoaded:Z

    .line 212
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$msetUpAutoCompleteViews(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V

    .line 214
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->deleteServiceFile(Landroid/content/Context;)V

    .line 215
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->deleteMinistryFile(Landroid/content/Context;)V

    .line 216
    new-instance p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$3$1;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$3$1;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$3;)V

    invoke-virtual {v0, p1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :goto_0
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 227
    throw p1
.end method
