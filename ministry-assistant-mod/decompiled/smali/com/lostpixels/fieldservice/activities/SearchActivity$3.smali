.class Lcom/lostpixels/fieldservice/activities/SearchActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/SearchActivity;->handleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/SearchActivity;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/SearchActivity;Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/SearchActivity;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity$3;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(I)V
    .locals 3

    .line 148
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/SearchActivity;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity$3;->val$query:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/lostpixels/fieldservice/activities/SearchActivity;->-$$Nest$mdoSearch(Lcom/lostpixels/fieldservice/activities/SearchActivity;Ljava/lang/String;Lio/realm/Realm;)V

    if-nez p1, :cond_0

    .line 153
    new-instance p1, Lcom/lostpixels/fieldservice/activities/SearchActivity$3$1;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/SearchActivity$3$1;-><init>(Lcom/lostpixels/fieldservice/activities/SearchActivity$3;)V

    invoke-virtual {v0, p1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 160
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/SearchActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->deleteServiceFile(Landroid/content/Context;)V

    .line 161
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/SearchActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->deleteMinistryFile(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 164
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 165
    throw p1
.end method
