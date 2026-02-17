.class Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->updatePosition(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;Landroid/app/Activity;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPositionTask"
.end annotation


# instance fields
.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;

.field final synthetic val$myLocation:Lcom/lostpixels/fieldservice/utils/map/MyLocation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;Lcom/lostpixels/fieldservice/utils/map/MyLocation;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;->val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;->val$myLocation:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 256
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-direct {p2, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 249
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 297
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 298
    :goto_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->-$$Nest$sfgetmbHasLocation()Z

    move-result p1

    if-nez p1, :cond_0

    .line 299
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0xea60

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    const-wide/16 v2, 0x3e8

    .line 301
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 306
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;->val$myLocation:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->stop()V

    .line 290
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 249
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 268
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :catch_0
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->-$$Nest$sfgetmbHasLocation()Z

    move-result p1

    if-nez p1, :cond_1

    .line 277
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;->val$context:Landroid/app/Activity;

    const v0, 0x7f1203f9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 280
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;->val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 281
    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;->onPositionFound(Lcom/google/android/gms/maps/model/LatLng;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;->val$context:Landroid/app/Activity;

    const v2, 0x7f1203f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
