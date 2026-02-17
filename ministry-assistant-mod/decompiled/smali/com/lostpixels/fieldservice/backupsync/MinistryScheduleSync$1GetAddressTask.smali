.class Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$1GetAddressTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync;->syncMinistrySchedule(Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$SyncMinistryScheduleListener;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetAddressTask"
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$SyncMinistryScheduleListener;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$SyncMinistryScheduleListener;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$1GetAddressTask;->val$listener:Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$SyncMinistryScheduleListener;

    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$1GetAddressTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 31
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1

    .line 33
    :try_start_0
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonths(Lio/realm/Realm;)Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->updateFromRealMinistry2(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    .line 37
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$1GetAddressTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$1GetAddressTask;->val$listener:Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$SyncMinistryScheduleListener;

    if-eqz p1, :cond_0

    .line 45
    invoke-interface {p1}, Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$SyncMinistryScheduleListener;->onSyncComplete()V

    :cond_0
    return-void
.end method
