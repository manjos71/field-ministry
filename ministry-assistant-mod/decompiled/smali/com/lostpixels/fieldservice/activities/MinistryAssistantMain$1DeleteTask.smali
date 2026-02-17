.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$1DeleteTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$1DeleteTask;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 488
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$1DeleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 492
    const-string p1, "Delete files"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 494
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/MinistryAssistant;->getInstance()Lcom/lostpixels/fieldservice/MinistryAssistant;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->deleteAllOldExportFiles(Landroid/content/Context;)V

    .line 495
    invoke-static {}, Lcom/lostpixels/fieldservice/MinistryAssistant;->getInstance()Lcom/lostpixels/fieldservice/MinistryAssistant;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->deleteAllOldCacheFiles(Landroid/content/Context;)V

    .line 496
    invoke-static {}, Lcom/lostpixels/fieldservice/MinistryAssistant;->getInstance()Lcom/lostpixels/fieldservice/MinistryAssistant;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->deleteOldErrorFiles(Landroid/content/Context;)V

    .line 497
    invoke-static {}, Lcom/lostpixels/fieldservice/MinistryAssistant;->getInstance()Lcom/lostpixels/fieldservice/MinistryAssistant;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->createNoMediaFile(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
