.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;->onClick(Landroid/view/View;)V
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

.field final territoryId:J

.field final synthetic this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 1

    .line 2962
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2963
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    .line 2964
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->city:Ljava/lang/String;

    .line 2965
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->country:Ljava/lang/String;

    .line 2966
    iput-boolean p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->bUpdateAll:Z

    .line 2967
    iput-wide p6, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->territoryId:J

    .line 2968
    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->countryCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2948
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 17

    move-object/from16 v1, p0

    .line 3026
    const-string v0, " "

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->bAllOK:Z

    .line 3029
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v3

    .line 3031
    :try_start_0
    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v4

    iget-wide v5, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->territoryId:J

    invoke-virtual {v4, v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v4

    .line 3033
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 3034
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 3035
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 3036
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3037
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3038
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3039
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3040
    iget-object v11, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->city:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3041
    iget-object v11, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->country:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 3042
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3043
    iget-object v11, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->country:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 3045
    :cond_2
    :goto_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;

    iget-object v11, v11, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;

    iget-object v11, v11, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object v12, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->countryCode:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getLatLongFromAddress(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v10

    add-int/lit8 v6, v6, 0x1

    .line 3046
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v2, [Ljava/lang/Integer;

    aput-object v11, v12, v5

    invoke-virtual {v1, v12}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    if-eqz v10, :cond_5

    .line 3048
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 3049
    iget-boolean v12, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->bUpdateAll:Z

    if-nez v12, :cond_4

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v12

    if-nez v12, :cond_3

    .line 3050
    :cond_4
    invoke-virtual {v11, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 3051
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-eqz v16, :cond_3

    .line 3052
    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v12

    .line 3053
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v13

    .line 3052
    invoke-virtual {v12, v3, v13, v14}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 3055
    invoke-virtual {v11, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_2

    .line 3060
    :cond_5
    iput-boolean v5, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->bAllOK:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 3065
    :cond_6
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    const/4 v0, 0x0

    return-object v0

    :goto_3
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    .line 3066
    throw v0
.end method

.method protected onCancelled()V
    .locals 2

    .line 3010
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 3011
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3012
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 3013
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 3014
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 2948
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 2987
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2988
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2995
    :catch_0
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->bAllOK:Z

    if-nez p1, :cond_1

    .line 2996
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v0, 0x7f1203fa

    .line 2997
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    .line 2996
    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    .line 2997
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 2998
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$4300(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/Realm;->refresh()V

    .line 2999
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 3000
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3001
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 3002
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

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
    .locals 3

    .line 2973
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v2, 0x7f1203f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2974
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2977
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 2978
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 2980
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 2981
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .line 3019
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 2948
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1$1GetAddressPositionTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
