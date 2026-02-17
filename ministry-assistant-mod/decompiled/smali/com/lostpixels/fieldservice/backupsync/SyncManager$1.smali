.class Lcom/lostpixels/fieldservice/backupsync/SyncManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/SyncManager;->startSyncing(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$authorization:Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;

.field final synthetic val$bOtherNewDevice:Z

.field final synthetic val$listner:Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;Z)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/SyncManager$1;->val$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/backupsync/SyncManager$1;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/backupsync/SyncManager$1;->val$authorization:Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/backupsync/SyncManager$1;->val$listner:Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;

    iput-boolean p5, p0, Lcom/lostpixels/fieldservice/backupsync/SyncManager$1;->val$bOtherNewDevice:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/SyncManager$1;->val$applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/backupsync/SyncManager$1;->val$account:Ljava/lang/String;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/backupsync/SyncManager$1;->val$authorization:Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/backupsync/SyncManager$1;->val$listner:Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;

    iget-boolean v4, p0, Lcom/lostpixels/fieldservice/backupsync/SyncManager$1;->val$bOtherNewDevice:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lostpixels/fieldservice/backupsync/SyncManager;->startSyncingNoThread(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/backupsync/SyncManager$IRequestAuthorization;Lcom/lostpixels/fieldservice/backupsync/SyncManager$ISyncCompleteListner;Z)V

    return-void
.end method
