.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updatePosition(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPositionTask"
.end annotation


# instance fields
.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

.field final synthetic val$myLocation:Lcom/lostpixels/fieldservice/utils/map/MyLocation;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/utils/map/MyLocation;)V
    .locals 0

    .line 1595
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->val$myLocation:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1596
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-direct {p2, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1592
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 1640
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1641
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-boolean p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbHasLocation:Z

    if-nez p1, :cond_0

    .line 1642
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0xea60

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    const-wide/16 v2, 0x3e8

    .line 1644
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1649
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 1632
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->val$myLocation:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->stop()V

    .line 1633
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1592
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 1608
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1609
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1615
    :catch_0
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-boolean v0, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbHasLocation:Z

    if-nez v0, :cond_1

    const v0, 0x7f1203f9

    .line 1616
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    .line 1617
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    goto :goto_0

    .line 1620
    :cond_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 1621
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1622
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 1623
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 1601
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v2, 0x7f1203f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1602
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
