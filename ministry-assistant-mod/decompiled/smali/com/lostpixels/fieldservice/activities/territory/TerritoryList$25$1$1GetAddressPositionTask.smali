.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetAddressPositionTask"
.end annotation


# instance fields
.field bAllOK:Z

.field final bUpdateAll:Z

.field final city:Ljava/lang/String;

.field final country:Ljava/lang/String;

.field final countryCode:Ljava/lang/String;

.field private final dialog:Landroid/app/ProgressDialog;

.field final streetId:J

.field final synthetic this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 1

    .line 3324
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3325
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    .line 3326
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->city:Ljava/lang/String;

    .line 3327
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->country:Ljava/lang/String;

    .line 3328
    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->countryCode:Ljava/lang/String;

    .line 3329
    iput-boolean p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->bUpdateAll:Z

    .line 3330
    iput-wide p6, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->streetId:J

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3310
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14

    .line 3390
    const-string p1, " "

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->bAllOK:Z

    .line 3392
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1

    .line 3396
    :try_start_0
    const-class v2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string v3, "id"

    iget-wide v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->streetId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 3397
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 3398
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3399
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3400
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3401
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3402
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3403
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->city:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3404
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->country:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 3405
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3406
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->country:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 3408
    :cond_1
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;

    iget-object v8, v8, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

    iget-object v8, v8, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->countryCode:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getLatLongFromAddress(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v7

    add-int/2addr v5, v0

    .line 3409
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Integer;

    aput-object v8, v9, v4

    invoke-virtual {p0, v9}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    if-eqz v7, :cond_4

    .line 3411
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 3412
    iget-boolean v9, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->bUpdateAll:Z

    if-nez v9, :cond_3

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    if-nez v9, :cond_2

    .line 3413
    :cond_3
    invoke-virtual {v8, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 3414
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_2

    .line 3415
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v9

    .line 3416
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v10

    .line 3415
    invoke-virtual {v9, v1, v10, v11}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 3418
    invoke-virtual {v8, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_2

    .line 3423
    :cond_4
    iput-boolean v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->bAllOK:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 3427
    :cond_5
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    const/4 p1, 0x0

    return-object p1

    :goto_3
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 3428
    throw p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 3374
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 3375
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3376
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 3377
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 3378
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 3310
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 3352
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3353
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3360
    :catch_0
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->bAllOK:Z

    if-nez p1, :cond_1

    .line 3361
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v0, 0x7f1203fa

    .line 3362
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    .line 3361
    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    .line 3362
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 3363
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 3364
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3365
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 3366
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .line 3335
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v2, 0x7f1203f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3336
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 3338
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 3340
    :try_start_0
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    iget-wide v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->streetId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 3341
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 3342
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 3343
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3345
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 3346
    throw v1
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .line 3383
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 3310
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
